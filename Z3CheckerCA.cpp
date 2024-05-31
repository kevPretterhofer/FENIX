#include "Z3CheckerCA.h"
#include <string>
#include "helper.h"

Z3CheckerCA::Z3CheckerCA(VerificationContext* context) : Z3CheckerCA(context, 1) {}

Z3CheckerCA::Z3CheckerCA(VerificationContext* context, uint32_t cycles) 
{
    this->circuit = context->getCircuit();
    this->mode = context->getMode();
    this->order = context->getOrder();
    this->cycles = context->getCycles();

    //z3::set_param("parallel.enable", true);
    //this->z3_solver = z3::tactic(z3_context, "psat").mk_solver();
    this->initialize(context);
    
    /*
    size_t varsOverall = 0;
    std::cout << "-------" << std::endl;
    for (auto ts : stable)
    {
        size_t vars = 0;
        for (auto s : ts)
        {
            vars += s.second.size();
        }
        std::cout << "Stable Vars per Cycle: " << vars << std::endl;
        varsOverall += vars;
    }
    
    for (auto ts : transient)
    {
        size_t vars = 0;
        for (auto s : ts)
        {
            vars += s.second.size();
        }
        std::cout << "Transient Vars per Cycle: " << vars << std::endl;
        varsOverall += vars;
    }
    std::cout << "Vars overall: " << varsOverall << std::endl;
    */
}

void Z3CheckerCA::initialize(VerificationContext* context)
{
    uint32_t numLabels = context->numLabels;
    map<uint32_t, z3::expr> checkingGate;

    //std::cout << "-------" << std::endl;
    //std::cout << "Generate Variables" << std::endl;
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

    //Iterate over the topological ordered circuit and encode constraints
    this->processCircuit(context);  

    //std::cout << "-------" << std::endl;
    //std::cout << "Generate Activation Constraints" << std::endl;
    //Constrain to order
    z3::expr_vector activationInts(z3_context);
    for (auto const& it : activation)
    {
        for (auto const& it2 : it)
            activationInts.push_back(z3::ite(it2.second, z3_context.int_val(1), z3_context.int_val(0)));
    }

    z3::expr actSum = z3::sum(activationInts);
    z3::expr sumConstraintUpper = (actSum <= ((int)(context->getOrder())));
    z3::expr sumConstraintLower = (actSum > 0);
    z3_solver.add(sumConstraintLower);
    z3_solver.add(sumConstraintUpper);

    
    for (auto v : variables)
    {
        
        z3::expr_vector actAndVar(z3_context);
        for (uint32_t i = 0; i < cycles; ++i)
        {
            auto iterVars = (this->mode == Mode::STABLE) ? stable[i] : transient[i];
            for (auto const& it : iterVars)
            {
     
                if (activation[i].find(it.first) == activation[i].end())
                    continue;
                if (it.second.find(v) == it.second.end())
                    continue;//actAndStable.push_back(activation[i].at(it.first) & z3_context.bool_val(false));
                else
                    actAndVar.push_back(activation[i].at(it.first) & iterVars.at(it.first).at(v));
                
            }
        }

        if (!actAndVar.empty())
        {
            auto cg = z3_context.bool_const(("checking_gate"+to_string(v)).c_str());
            z3_solver.add(cg == z3::mk_xor(actAndVar));
            checkingGate.insert(std::pair<uint32_t, z3::expr>(v, cg));
        }
        
    }


    //Masks / randoms
    z3::expr_vector masks(z3_context);
    for (auto const& v : context->initialRandomGates)
    {   
        masks.push_back(!checkingGate.at(v));
    }

    z3::expr maskAnd = z3::mk_and(masks);
    z3_solver.add(maskAnd);


    z3::expr_vector helperK(z3_context); //To Ensure All or No share active
    for (auto const& it : context->initialShareGates) //secrets
    {
        //ATTENTION
        auto curHelperK = z3_context.bool_const(("secret_bit_"+std::to_string(it.first)).c_str());

        z3::expr_vector secretAnds(z3_context);
        for (auto const& it2 : it.second) //Shares
        {
            for(auto const& v : it2) //Gates?
            {
                secretAnds.push_back(curHelperK == checkingGate.at(v));
            }
        }
        z3_solver.add(z3::mk_and(secretAnds));
        helperK.push_back(curHelperK);
        this->secrets.push_back(curHelperK);
    }

    z3_solver.add(z3::mk_or(helperK));

}

void Z3CheckerCA::processCircuit(VerificationContext* context)
{
    for (uint32_t i = 0; i < cycles; ++i)
    {
      
        stable.push_back(std::map<uint32_t, map<uint32_t, z3::expr>>());
        
        if (this->mode == Mode::TRANSIENT)
            transient.push_back(std::map<uint32_t, map<uint32_t, z3::expr>>());

        activation.push_back(std::map<uint32_t, z3::expr>());

        for  (auto j : circuit->sorted)
        {     
            auto g = circuit->gates.at(j);

            if (g->type == INPUT_PORT)
                processInputPorts(g, i);
            else if (Gate::luts.find(g->type) != Gate::luts.end())
                processLut(g, i);
            else if (g->type == MUX)
                processMux(g, i);
            else if (g->type == FDRE || g->type == FDCE)
                processRegister(g, i);
            else 
                continue;
        }
    }
    
}

void Z3CheckerCA::processInputPorts(const Gate* g, uint32_t curCycle)
{
    
    if (curCycle != 0 )
    {
        auto mcopy = stable.at(0).find(g->id);
        if (mcopy != stable.at(0).end())
            stable.at(curCycle).insert(pair<uint32_t, map<uint32_t, z3::expr>>(g->id, mcopy->second));

        if (this->mode == Mode::TRANSIENT)
        {
            auto transmcopy = transient.at(0).find(g->id);
            if (transmcopy != transient.at(0).end())
                transient.at(curCycle).insert(pair<uint32_t, map<uint32_t, z3::expr>>(g->id, transmcopy->second));
        }
        return;
    }
    
    for (auto v : variables)
    {
        if (v == g->id)
        {
            map<uint32_t, z3::expr> m;
            
            string name = generateVariableName("stable", g->id, curCycle, v);
            string actName = generateVariableName("activation", g->id, curCycle);
            
            auto inputVar = z3_context.bool_const(name.c_str());
            auto actVar = z3_context.bool_const(actName.c_str());
            
            m.insert(std::pair<uint32_t, z3::expr>(g->id, inputVar));
            stable.at(curCycle).insert(pair<uint32_t, map<uint32_t, z3::expr>>(g->id, m));
            activation[curCycle].insert(std::pair<uint32_t, z3::expr>(g->id, actVar));
            z3_solver.add(inputVar);

            if (this->mode == Mode::TRANSIENT)
            {
                map<uint32_t, z3::expr> transm;
                string transname = generateVariableName("transient", g->id, curCycle, v);
                auto transInputVar = z3_context.bool_const(transname.c_str());
                transm.insert(std::pair<uint32_t, z3::expr>(g->id, transInputVar));
                transient.at(curCycle).insert(pair<uint32_t, map<uint32_t, z3::expr>>(g->id, transm));
                z3_solver.add(transInputVar);
            }
            return;
        }
    }
}

void Z3CheckerCA::processLut(Gate* g, uint32_t curCycle)
{

    Lut* l = (Lut*)g;
    auto predGates = circuit->predecessors.at(l->id);
    auto coeffs = l->coefficients;
    map<uint32_t, z3::expr> m;
    map<uint32_t, z3::expr> transm;
    set<uint32_t> activeVars;
    set<uint32_t> activeTransVars;

    z3::expr_vector disjunction(z3_context);

    //At first get all the variables which are in use:
    for (auto p : predGates)
    {
        if (this->mode == Mode::TRANSIENT)
        {
            auto t = transient[curCycle].find(p->id);
            if (t != transient[curCycle].end())
            {
                for (auto el : t->second)
                    activeTransVars.insert(el.first);
            }    
        }

        auto s = stable[curCycle].find(p->id);
        if (s == stable[curCycle].end())
            continue;

        for (auto el : s->second)
            activeVars.insert(el.first);
    }

    if (activeVars.empty() && activeTransVars.empty())
        return;

    //Then generate a z3 variable for this gate for each variable
    for (auto var : activeVars)
    {
        string name = generateVariableName("stable", g->id, curCycle, var);
        auto gatevar = z3_context.bool_const(name.c_str());
        m.insert(std::pair<uint32_t, z3::expr>(var, gatevar));
        
    }

    for (auto var : activeTransVars)
    {
        string transName = generateVariableName("transient", g->id, curCycle, var);
        auto transgatevar = z3_context.bool_const(transName.c_str());
        transm.insert(std::pair<uint32_t, z3::expr>(var, transgatevar));
    }

    for (size_t i = 0; i < coeffs.size(); ++i)
    {
        if (coeffs[i] == 0.0f)
            continue;

        z3::expr_vector conjunction(z3_context);
        
        if (i == 0)
            continue;
        
        auto xorlist = precomputedValues.at(i);
        for (auto var : activeVars)
        {
            z3::expr_vector xorexpr(z3_context);
            for (auto k : xorlist)
            {
                if (stable[curCycle].find(predGates[k]->id) == stable[curCycle].end())
                    continue;
                
                if (stable[curCycle].at(predGates[k]->id).find(var) == stable[curCycle].at(predGates[k]->id).end())
                    continue;
                
                xorexpr.push_back(stable[curCycle].at(predGates[k]->id).at(var));
            }

            if (!xorexpr.empty())
            {            
                conjunction.push_back(m.at(var) == z3::mk_xor(xorexpr));
            }  
            else 
            {
                conjunction.push_back(m.at(var) == z3_context.bool_val(false));
            }
        }
        
        disjunction.push_back(z3::mk_and(conjunction));
    }

    z3_solver.add(z3::mk_or(disjunction));
    stable[curCycle][g->id] = m;
    string actName = generateVariableName("activation", g->id, curCycle);
    auto actVar = z3_context.bool_const(actName.c_str());   
    activation[curCycle].insert(std::pair<uint32_t, z3::expr>(g->id, actVar));

    if (this->mode == Mode::TRANSIENT)
    {
        z3::expr_vector transDisjunction(z3_context);

        for (size_t i = 0; i < coeffs.size(); i++)
        {
            if (i == 0)
                continue;

            z3::expr_vector transConjunction(z3_context);

            auto xorlist = precomputedValues.at(i);
            for (auto var : activeTransVars)
            {   
                z3::expr_vector xorexpr(z3_context);
                for (auto k : xorlist)
                {
                    if (transient[curCycle].find(predGates[k]->id) == transient[curCycle].end())
                        continue;
            
                    if (transient[curCycle].at(predGates[k]->id).find(var) == transient[curCycle].at(predGates[k]->id).end())
                        continue;

                    xorexpr.push_back(transient[curCycle].at(predGates[k]->id).at(var));
                }

                if (!xorexpr.empty())
                {
                    transConjunction.push_back(transm.at(var) == z3::mk_xor(xorexpr));
                }
                else
                {
                    transConjunction.push_back(transm.at(var) == z3_context.bool_val(false));
                }
                
            }
            transDisjunction.push_back(z3::mk_and(transConjunction));
        }
        z3_solver.add(z3::mk_or(transDisjunction));
        transient[curCycle][g->id] = transm;
    }
}

void Z3CheckerCA::processRegister(Gate* g, uint32_t curCycle)
{
    //On first cycle register does not have anything - thus no variable needed
    if (curCycle == 0)
        return;

    auto predGates = circuit->predecessors.at(g->id);
    auto predGate = predGates.at(0); 
    auto pred = stable[curCycle - 1].find(predGate->id);
    if (pred == stable[curCycle - 1].end())
        return;

    map<uint32_t, z3::expr> m;
    map<uint32_t, z3::expr> transm;
    
    for (auto it : pred->second)
    {
       
        m.insert(std::pair<uint32_t, z3::expr>(it.first, it.second));
        
        if (this->mode == Mode::TRANSIENT)
            transm.insert(std::pair<uint32_t, z3::expr>(it.first, it.second));

        //conjunction.push_back
    }
    
    
    stable[curCycle].insert(std::pair<uint32_t, std::map<uint32_t, z3::expr>>(g->id, m));
    
    if (this->mode == Mode::TRANSIENT)
        transient[curCycle].insert(std::pair<uint32_t, std::map<uint32_t, z3::expr>>(g->id, transm));

}



void Z3CheckerCA::processMux(Gate* g, uint32_t curCycle)
{
    Multiplexer* mu = (Multiplexer*)(g);
    set<uint32_t> activeVars;
    set<uint32_t> activeTransVars;
    map<uint32_t, z3::expr> m;
    map<uint32_t, z3::expr> transm;

    auto predGates = circuit->predecessors.at(mu->id);
    assert(predGates.size() == 3);

    //At first get all the variables which are in use:
    for (auto p : predGates)
    {
        if (this->mode == Mode::TRANSIENT)
        {
            auto t = transient[curCycle].find(p->id);
            if (t != transient[curCycle].end())
            {
                for (auto el : t->second)
                    activeTransVars.insert(el.first);
            }    
        }

        auto s = stable[curCycle].find(p->id);
        if (s == stable[curCycle].end())
            continue;

        for (auto el : s->second)
            activeVars.insert(el.first);
    }

    if (activeVars.empty() && activeTransVars.empty())
        return;

    //Then generate a z3 variable for this gate for each variable
    for (auto var : activeVars)
    {
        string name = generateVariableName("stable", g->id, curCycle, var);
        auto gatevar = z3_context.bool_const(name.c_str());
        m.insert(std::pair<uint32_t, z3::expr>(var, gatevar));
    }

    for (auto var : activeTransVars)
    {
        string transName = generateVariableName("transient", g->id, curCycle, var);
        auto transgatevar = z3_context.bool_const(transName.c_str());
        transm.insert(std::pair<uint32_t, z3::expr>(var, transgatevar));
    }

    
    auto i0 = predGates[0];
    auto i1 = predGates[1];
    auto s = predGates[2];
    vector<uint32_t> ids;
    ids.push_back(i0->id);
    ids.push_back(i1->id);
    ids.push_back(s->id);

    z3::expr_vector orExpr(z3_context);
    z3::expr_vector copyCon1(z3_context);
    z3::expr_vector copyCon2(z3_context);
    z3::expr_vector xorCon1(z3_context);
    z3::expr_vector xorCon2(z3_context);
    
    for (auto var : activeVars)
    {   
        z3::expr_vector usedExpr(z3_context);
        for(auto i : ids)
        {
            if (stable[curCycle].find(i)!= stable[curCycle].end())
            {
                if (stable[curCycle].at(i).find(var) != stable[curCycle].at(i).end())
                    usedExpr.push_back(stable[curCycle].at(i).at(var));
                else
                    usedExpr.push_back(z3_context.bool_val(false));
          }
            else
                usedExpr.push_back(z3_context.bool_val(false));
        }
        
        copyCon1.push_back(m.at(var) == usedExpr[0]);
        copyCon2.push_back(m.at(var) == usedExpr[1]);
        xorCon1.push_back(m.at(var) == usedExpr[0] ^ usedExpr[2]);
        xorCon2.push_back(m.at(var) == usedExpr[1] ^ usedExpr[2]);

    }

    orExpr.push_back(z3::mk_and(copyCon1));
    orExpr.push_back(z3::mk_and(copyCon2));
    orExpr.push_back(z3::mk_and(xorCon1));
    orExpr.push_back(z3::mk_and(xorCon2));

    z3_solver.add(z3::mk_or(orExpr));
    
    string actName = generateVariableName("activation", g->id, curCycle);
    auto actVar = z3_context.bool_const(actName.c_str());   
    activation[curCycle].insert(std::pair<uint32_t, z3::expr>(g->id, actVar));
    stable[curCycle][g->id] = m;
    
    if (this->mode == Mode::TRANSIENT)
    {
        z3::expr_vector transDisjunction(z3_context);
        for (int i = 0; i < 8 ; ++i) //8 because its the power set (2**3 = 8)
        {
            
            z3::expr_vector transConjunction(z3_context);

            //If it is the first one it refers to the empty set
            if (i == 0)
                continue;
            
            //Otherwise it refers to a single input or the XOR of several inputs
            //Note that the logic to handle both cases is the same since the XOR 
            //of a single variable in Z3 is the identity function
            auto xorlist = precomputedValues.at(i);
            for (auto var : activeTransVars)
            {
                z3::expr_vector xorexpr(z3_context);
                for (auto k : xorlist)
                {
                    if (transient[curCycle].find(predGates[k]->id) == transient[curCycle].end())
                        continue;
                    if (transient[curCycle].at(predGates[k]->id).find(var) ==  transient[curCycle].at(predGates[k]->id).end())
                    {
                        xorexpr.push_back(z3_context.bool_val(false));
                        continue;
                    }
                    
                    xorexpr.push_back(transient[curCycle].at(predGates[k]->id).at(var));
                }
                transConjunction.push_back(transm.at(var) == z3::mk_xor(xorexpr));
            }
            transDisjunction.push_back(z3::mk_and(transConjunction));
        }

        z3_solver.add(z3::mk_or(transDisjunction));
        transient[curCycle][g->id] = transm;
    }
    

}

void Z3CheckerCA::check()
{
    /*
    std::cout << "-------" << std::endl;
    std::cout << "Statistics:" << std::endl;
    std::cout << z3_solver.statistics() << std::endl;
    std::cout << "-------" << std::endl;
    */
    auto res = z3_solver.check();
    //ofstream outfile;
    //outfile.open("output.cnf");
    //outfile << z3_solver.to_smt2() << std::endl;
    //outfile << z3_solver.dimacs() << std::endl;
    //outfile.close();
    if (res == z3::unknown)
    {
        std::cout << "UNKNOWN!!!!" << std::endl;
        return;
    }
    else if (res == z3::sat)
    {
        auto model = z3_solver.get_model();
        
        //Uncomment in case you want to write model to a file
        ofstream file("model.txt");
        file << model.to_string();
        file.close();
        for (int i = 0; i < model.size(); ++i)
        {

            if (model[i].name().str().rfind("activation", 0) == 0)
            {
                auto val = model.get_const_interp(model[i]);
                if (val.to_string() == "true")
                {
                    auto idx = model[i].name().str().substr(11);
                    idx = idx.substr(0,idx.find("t"));
                    auto leakyGate = circuit->gates.at(stoi(idx));

                    std::cout << "Activation variable: " << model[i].name().str() << std::endl;
                    std::cout << "Leakage in: "<< leakyGate->name << " : " <<  leakyGate->typeStr.at(leakyGate->type) <<std::endl;
                    //return;
                }
                    
            }

            if (model[i].name().str().rfind("secret_bit_", 0) == 0)
            {
                auto val = model.get_const_interp(model[i]);
                if (val.to_string() == "true")
                {
                
                    std::cout << "The following bit leaks at least: " << model[i].name().str() << std::endl;
                }
                    
            } 
        }
        std::cout << "-------" << std::endl;
        return;
    }

    std::cout << "-------" << std::endl;
    std::cout << "Checked for all secrets. No Leak found!" << std::endl;
    std::cout << "-------" << std::endl;
}


/*
void Z3CheckerCA::check()
{
    std::cout << "-------" << std::endl;
    std::cout << "Statistics:" << std::endl;
    std::cout << z3_solver.statistics() << std::endl;
    std::cout << "-------" << std::endl;
    for (auto s : secrets)
    {
        std::cout << "Check for secret: " << s << std::endl;
        if (s.to_string() == "secret_bit_205")
        {
            std::cout << "Check...." << std::endl;
            z3_solver.add(activation[2].at(2250));
        }
        else{
            std::cout << "Skip..." << std::endl;
            continue;
        }
        z3_solver.push();
        z3_solver.add(s);
        //Just for debug
        if (z3_solver.check() == z3::sat)
        {
            auto model = z3_solver.get_model();
            
            //Uncomment in case you want to write model to a file
            ofstream file("model.txt");
            file << model.to_string();
            file.close();
            for (int i = 0; i < model.size(); ++i)
            {

                if (model[i].name().str().rfind("activation", 0) == 0)
                {
                    auto val = model.get_const_interp(model[i]);
                    if (val.to_string() == "true")
                    {
                        auto idx = model[i].name().str().substr(11);
                        idx = idx.substr(0,idx.find("t"));
                        auto leakyGate = circuit->gates.at(stoi(idx));

                        std::cout << "Activation variable: " << model[i].name().str() << std::endl;
                        std::cout << "Leakage in: "<< leakyGate->name << " : " <<  leakyGate->typeStr.at(leakyGate->type) <<std::endl;
                        //return;
                    }
                        
                }
                
                
                //ToDo: REMOVE
                
                if (model[i].name().str().rfind("secret_bit_", 0) == 0)
                {
                    auto val = model.get_const_interp(model[i]);
                    if (val.to_string() == "true")
                    {
                        std::cout << "Possible Leak of Secret: " << model[i].name().str()<< std::endl;
                    }  
                } 
            }
            std::cout << "-------" << std::endl;
            return;
        }

        z3_solver.pop();
    }
    
    std::cout << "Checked for all secrets. No Leak found!" << std::endl;
    std::cout << "-------" << std::endl;
}
*/