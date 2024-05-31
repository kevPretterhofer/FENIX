#include "Z3Checker.h"
#include <string>

Z3Checker::Z3Checker(VerificationContext* context) 
{
    this->circuit = context->getCircuit();
    this->mode = context->getMode();
    this->order = context->getOrder();
    
    z3::set_param("parallel.enable", true);
    this->z3_context = new z3::context();
    this->z3_solver = new z3::solver(*z3_context);

    this->initialize(context);
    size_t vars = 0;
    for (auto a : stable)
    {
        for (auto b : a.second)
        {
            vars++;
        }
    }

    std::cout << "Vars Overall: " << vars << std::endl;
    //std::cout << z3_solver->statistics() << std::endl;
    this->processCircuit(context);  
    //std::cout << z3_solver->statistics() << std::endl;

}


void Z3Checker::initialize(VerificationContext* context)
{
    std::cout << "Start initalizing..." << std::endl;

    uint32_t numLabels = context->numLabels;
    map<uint32_t, z3::expr> activation;
    map<uint32_t, z3::expr> checkingGate;

    //Generate Variables out of randoms and shares
    for (auto v : context->initialRandomGates)
    {
        variables.push_back(v);
    }
    
    for (auto const& it : context->initialShareGates)
    {
        for (auto const& outterV : it.second)
        {
            for (auto const& v : outterV)
            {
                variables.push_back(v);
            }
        }
    }

    std::cout << "Generating variables...DONE" << std::endl;
    std::cout << z3_solver->statistics() << std::endl;
    std::cout << "-------------" << std::endl;
    //Create Stable and Activation Gates
    for (auto const& it : circuit->gates)
    {
        //ToDo: Output Buffeer Handling and constants
        if (it.second->type == OBUF || it.second->type == VCC || it.second->type == GND)
            continue;

        map<uint32_t, z3::expr> m;
        map<uint32_t, z3::expr> mt;

        //bool isUsed = it.second->type == INPUT_PORT ? false : true;
        for (auto v : variables)
        {
            if (v != it.second->id && it.second->type == INPUT_PORT)
                continue;

            string name = "stable_v"+std::to_string(v)+"g"+std::to_string(it.second->id);
            auto gatevar = z3_context->bool_const(name.c_str());
            m.insert(pair<uint32_t, z3::expr>(v, gatevar));
            //isUsed = (!isUsed && v == it.first) ? true : isUsed;

            if (this->mode == Mode::TRANSIENT)
            {
                string name = "transient_v"+std::to_string(v)+"g"+std::to_string(it.second->id);
                auto gatevar = z3_context->bool_const(name.c_str());
                mt.insert(pair<uint32_t, z3::expr>(v, gatevar));
            }
        }   
        //if (isUsed)
        //{

            stable[it.second->id] = m;
            
            string name = "activation_g"+std::to_string(it.second->id);
            auto actVar = z3_context->bool_const(name.c_str());
            activation.insert(pair<uint32_t, z3::expr>(it.second->id, actVar));

            if (this->mode == Mode::TRANSIENT)
                transient[it.second->id] = mt;
        //}
        
    }
    std::cout << "Generating Stable + Activation Variables....DONE" << std::endl;
    std::cout << z3_solver->statistics() << std::endl;
    std::cout << "-------------" << std::endl;
    
    //Set Activation Sum constraint
    z3::expr_vector activationInts(*z3_context);
    for (auto const& it : activation)
    {
        activationInts.push_back(z3::ite(it.second, z3_context->int_val(1), z3_context->int_val(0)));
    }

    z3::expr actSum = z3::sum(activationInts);
    z3::expr sumConstraintUpper = (actSum <= ((int)(context->getOrder())));
    z3::expr sumConstraintLower = (actSum > 0);
    
    z3_solver->add(sumConstraintLower);
    z3_solver->add(sumConstraintUpper);
    
    std::cout << "Generate Activation-Order constraint...:DONE" << std::endl;
    std::cout << z3_solver->statistics() << std::endl;
    std::cout << "-------------" << std::endl;

    //Create checking gates
    for (auto v : variables)
    {
        //ToDo: checkVar is probably unnecessary in the first place
        //string name = "checking_v"+to_string(v);
        //auto checkVar = z3_context->bool_const(name.c_str());
        //checkingGate.insert(pair<uint32_t, z3::expr>(v, checkVar));
        z3::expr_vector actAndStable(*z3_context);
        z3::expr_vector actAndTransient(*z3_context);
        for (auto const& it : stable)
        {
            //ToDo: Check for Transient
            if (this->mode == Mode::TRANSIENT)
            {
                actAndTransient.push_back((activation.at(it.first) & transient.at(it.first).at(v)));
            }
            else
            {
                if (stable.at(it.first).find(v) != stable.at(it.first).end())
                    actAndStable.push_back((activation.at(it.first) & stable.at(it.first).at(v)));
            }
                
        }

        auto cg = z3_context->bool_const(("checking_gate"+to_string(v)).c_str());
        if (this->mode == Mode::TRANSIENT)
            z3_solver->add(cg == z3::mk_xor(actAndTransient));
        else 
            z3_solver->add(cg == z3::mk_xor(actAndStable));
        
        checkingGate.insert(pair<uint32_t, z3::expr>(v, cg));
        /*
        if (this->mode == Mode::TRANSIENT)
            checkingGate.insert(pair<uint32_t, z3::expr>(v, z3::mk_xor(actAndTransient)));
        else
            checkingGate.insert(pair<uint32_t, z3::expr>(v, z3::mk_xor(actAndStable)));
        */
    }

    std::cout << "Generate Checking Gates....DONE" << std::endl;
    std::cout << z3_solver->statistics() << std::endl;
    std::cout << "-------------" << std::endl;

    z3::expr_vector masks(*z3_context);
    for (auto const& v : context->initialRandomGates)
    {   
        masks.push_back(!checkingGate.at(v));
    }

    z3::expr maskAnd = z3::mk_and(masks);
    z3_solver->add(maskAnd);
    
    std::cout << "Done with the masks..." << std::endl;
    std::cout << z3_solver->statistics() << std::endl;
    std::cout << "-------------" << std::endl;

    //z3::expr_vector secretCumAnds(*z3_context);
    z3::expr_vector helperK(*z3_context); //To Ensure All or No share active
    for (auto const& it : context->initialShareGates) //secrets
    {
        //ATTENTION
        auto curHelperK = z3_context->bool_const(("helperK"+std::to_string(it.first)).c_str());

        z3::expr_vector secretAnds(*z3_context);
        for (auto const& it2 : it.second) //Shares
        {
            for(auto const& v : it2) //Gates?
            {
                secretAnds.push_back(curHelperK == checkingGate.at(v));
            }
        }
        z3_solver->add(z3::mk_and(secretAnds));
        //secretCumAnds.push_back(z3::mk_and(secretAnds));
        helperK.push_back(curHelperK);
        //this->secrets.push_back(curHelperK);
    }
    
    z3_solver->add(z3::mk_or(helperK));
    //z3_solver->add(z3::mk_and(secretCumAnds));
    std::cout << "Done with the secrets..." << std::endl;
    std::cout << z3_solver->statistics() << std::endl;
    std::cout << "-------------" << std::endl;

}

void Z3Checker::processCircuit(VerificationContext* context)
{
    std::cout << "Start processing the circuit..." << std::endl;
    uint32_t circuitNumber = circuit->gates.size();
    uint32_t counter = 0;
    for (auto const& g : circuit->gates)
    {
        if (counter % 100 == 0)
            std::cout << ((float)counter) / ((float)circuitNumber) * 100.f << "\% finished processing ("<< counter <<"/"<<circuitNumber<<")" << std::endl;

        if (g.second->type == INPUT_PORT)
            processInputPorts(g.second);
        else if (Gate::luts.find(g.second->type) != Gate::luts.end())
            processLut(g.second);
        else if (g.second->type == MUX)
            processMux(g.second);
        else if (g.second->type == FDRE || g.second->type == FDCE)
            processRegister(g.second);

        counter++;
    }

    std::cout << "100\% finished processing!" << std::endl;
}

void Z3Checker::processInputPorts(const Gate* g)
{
    if (stable.find(g->id) == stable.end())
        return;

    auto const& inputMap = stable.at(g->id);
    
    z3::expr_vector inputExpr(*z3_context);
    for (auto v : variables)
    {
        if (inputMap.find(v) == inputMap.end())
            continue;

        if (v == g->id)
            inputExpr.push_back(inputMap.at(v));
        else
            inputExpr.push_back(!inputMap.at(v));
    }

    z3_solver->add(z3::mk_and(inputExpr));

    if (this->mode == Mode::TRANSIENT)
    {
        auto const& inputMap = transient.at(g->id);
        
        z3::expr_vector inputExpr(*z3_context);
        for (auto v : variables)
        {
            if (v == g->id)
                inputExpr.push_back(inputMap.at(v));
            else
                inputExpr.push_back(!inputMap.at(v));
        }

        z3_solver->add(z3::mk_and(inputExpr));
    }

}

void Z3Checker::processLut(Gate* g)
{
    Lut* l = (Lut*)g;
    auto predGates = circuit->predecessors.at(l->id);
    auto coeffs = l->coefficients;
    
    z3::expr_vector orExpr(*z3_context);
    for (int i = 0; i < coeffs.size() ; ++i)
    {
        //If fourier coeff is 0 we do not care
        if (coeffs[i] == 0.0f)
            continue;
        
        z3::expr_vector conjunction(*z3_context);

        //If it is the first one it refers to the empty set
        if (i == 0)
        {
            for (auto var : variables)
            {
                conjunction.push_back(!stable.at(l->id).at(var));
            }
            
            orExpr.push_back(z3::mk_and(conjunction));
            continue;
        }
        
        //Otherwise it refers to a single input or the XOR of several inputs
        //Note that the logic to handle both cases is the same since the XOR 
        //of a single variable in Z3 is the identity function
        auto xorlist = precomputedValues.at(i);
        for (auto var : variables)
        {
            z3::expr_vector xorexpr(*z3_context);
            for (auto k : xorlist)
            {
                if (stable.find(predGates[k]->id) == stable.end())
                    continue;
                 
                if (stable.at(predGates[k]->id).find(var) == stable.at(predGates[k]->id).end())
                    xorexpr.push_back(z3_context->bool_val(false));
                else
                    xorexpr.push_back(stable.at(predGates[k]->id).at(var));
            }
            conjunction.push_back(stable.at(l->id).at(var) == z3::mk_xor(xorexpr));
        }
        orExpr.push_back(z3::mk_and(conjunction));
    }

    z3_solver->add(z3::mk_or(orExpr));


    if (this->mode == Mode::TRANSIENT)
    {
        z3::expr_vector orExpr(*z3_context);
        for (int i = 0; i < coeffs.size() ; ++i)
        {
            
            z3::expr_vector conjunction(*z3_context);

            //If it is the first one it refers to the empty set
            if (i == 0)
            {
                for (auto var : variables)
                {
                    conjunction.push_back(!transient.at(l->id).at(var));
                }
                
                orExpr.push_back(z3::mk_and(conjunction));
                continue;
            }
            
            //Otherwise it refers to a single input or the XOR of several inputs
            //Note that the logic to handle both cases is the same since the XOR 
            //of a single variable in Z3 is the identity function
            auto xorlist = precomputedValues.at(i);
            for (auto var : variables)
            {
                z3::expr_vector xorexpr(*z3_context);
                for (auto k : xorlist)
                {
                    if (transient.find(predGates[k]->id) == transient.end())
                        continue;

                    xorexpr.push_back(transient.at(predGates[k]->id).at(var));
                }
                conjunction.push_back(transient.at(l->id).at(var) == z3::mk_xor(xorexpr));
            }
            orExpr.push_back(z3::mk_and(conjunction));
        }

        z3_solver->add(z3::mk_or(orExpr));
    }

}

void Z3Checker::processRegister(Gate* g)
{
    auto predGates = circuit->predecessors.at(g->id);

    //We just have 1 bit registers
    assert(predGates.size() == 1);

    auto predGate = predGates.at(0);

    z3::expr_vector conjunction(*z3_context);
    for (auto var : variables)
    {
       if (stable.at(predGate->id).find(var) == stable.at(predGate->id).end())
        conjunction.push_back(stable.at(g->id).at(var) == z3_context->bool_val(false));
       else
        conjunction.push_back(stable.at(g->id).at(var) == stable.at(predGate->id).at(var));
    }

    z3_solver->add(z3::mk_and(conjunction));

    if (this->mode == Mode::TRANSIENT)
    {

        z3::expr_vector conjunction(*z3_context);
        for (auto var : variables)
        {
        conjunction.push_back(transient.at(g->id).at(var) == stable.at(predGate->id).at(var));
        }

        z3_solver->add(z3::mk_and(conjunction));
    }
   
}

void Z3Checker::processMux(Gate* g)
{
    Multiplexer* m = (Multiplexer*)(g);

    auto predGates = circuit->predecessors.at(m->id);
    assert(predGates.size() == 3);
    
    auto i0 = predGates[0];
    auto i1 = predGates[1];
    auto s = predGates[2];

    z3::expr_vector orExpr(*z3_context);
    z3::expr_vector copyCon1(*z3_context);
    z3::expr_vector copyCon2(*z3_context);
    z3::expr_vector xorCon1(*z3_context);
    z3::expr_vector xorCon2(*z3_context);
    
    for (auto var : variables)
    {
        copyCon1.push_back(stable.at(m->id).at(var) == stable.at(i0->id).at(var));
        copyCon2.push_back(stable.at(m->id).at(var) == stable.at(i1->id).at(var));
        xorCon1.push_back(stable.at(m->id).at(var) == (stable.at(i0->id).at(var) ^ stable.at(s->id).at(var)));
        xorCon2.push_back(stable.at(m->id).at(var) == (stable.at(i1->id).at(var) ^ stable.at(s->id).at(var)));
    }

    orExpr.push_back(z3::mk_and(copyCon1));
    orExpr.push_back(z3::mk_and(copyCon2));
    orExpr.push_back(z3::mk_and(xorCon1));
    orExpr.push_back(z3::mk_and(xorCon2));

    z3_solver->add(z3::mk_or(orExpr));

    if (this->mode == Mode::TRANSIENT)
    {
        z3::expr_vector orExpr(*z3_context);
        for (int i = 0; i < 8 ; ++i) //8 because its the power set (2**3 = 8)
        {
            
            z3::expr_vector conjunction(*z3_context);

            //If it is the first one it refers to the empty set
            if (i == 0)
            {
                for (auto var : variables)
                {
                    conjunction.push_back(!transient.at(m->id).at(var));
                }
                
                orExpr.push_back(z3::mk_and(conjunction));
                continue;
            }
            
            //Otherwise it refers to a single input or the XOR of several inputs
            //Note that the logic to handle both cases is the same since the XOR 
            //of a single variable in Z3 is the identity function
            auto xorlist = precomputedValues.at(i);
            for (auto var : variables)
            {
                z3::expr_vector xorexpr(*z3_context);
                for (auto k : xorlist)
                {
                    if (transient.find(predGates[k]->id) == transient.end())
                        continue;

                    xorexpr.push_back(transient.at(predGates[k]->id).at(var));
                }
                conjunction.push_back(transient.at(m->id).at(var) == z3::mk_xor(xorexpr));
            }
            orExpr.push_back(z3::mk_and(conjunction));
        }

        z3_solver->add(z3::mk_or(orExpr));
    }

}

void Z3Checker::check()
{
    //for (auto s : secrets)
    //{   
    //    std::cout << s << std::endl;
    //    z3_solver->push();
    //    z3_solver->add(s);
        //Just for debug
        if (z3_solver->check() == z3::sat)
        {
            auto model = z3_solver->get_model();
            
            //Uncomment in case you want to write model to a file
            //ofstream file("model.txt");
            //file << model.to_string();
            //file.close();
            for (int i = 0; i < model.size(); ++i)
            {

                if (model[i].name().str().rfind("activation", 0) == 0)
                {
                    auto val = model.get_const_interp(model[i]);
                    if (val.to_string() == "true")
                    {
                    
                        auto idx = stoi(model[i].name().str().substr(12));
                        auto leakyGate = circuit->gates.at(idx);

                        std::cout << "Act var: " << model[i].name().str() << std::endl;
                        std::cout << "Leakage in: "<< leakyGate->name << " : " <<  leakyGate->typeStr.at(leakyGate->type) <<std::endl;
                    }
                        
                }
                
                
                //ToDo: REMOVE
                
                if (model[i].name().str().rfind("helperK", 0) == 0)
                {
                    auto val = model.get_const_interp(model[i]);
                    if (val.to_string() == "true")
                    {
                    
                        std::cout << model[i].name().str() << std::endl;
                    }
                        
                }            
            }
         //   break;
        } else  
        {
            std::cout << "Seems secure " << std::endl;
        }

     //   z3_solver->pop();
    //}
    
    std::cout << "Final statistics: \n" << z3_solver->statistics() << std::endl;
}

Z3Checker::~Z3Checker()
{    
    if (z3_solver)
    {
        delete z3_solver;
        std::cout << "deleted solver" << std::endl;
    }

    if (z3_context)
    {
       // delete z3_context;
        std::cout << "deleted context" << std::endl;
    }
        

}