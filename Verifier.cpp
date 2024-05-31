
#include "Verifier.h"

Verifier::Verifier(VerificationContext* context)
{
    //The getter methods will also check if all values are valid
    circuit = context->getCircuit();
    vcdStorage = context->getVCDStorage();
    mode = context->getMode();
    order = context->getOrder();
    cycles = context->getCycles();

    solver = new Solver();
    //initializeGateLabels(context);
}


/*
void Verifier::initializeGateLabels(VerificationContext* context)
{
    uint32_t numLabels = context->numLabels;

    uint32_t labelIdx = 0;

    auto addGateLabel = [this, numLabels, &labelIdx](PropVarSet* label, uint32_t gateId) -> void { 
        
        Gate* gate = circuit->gates[gateId];
        uint32_t toLabel;
        if(gate->type == INPUT_PORT)
            toLabel = gateId;
        else if (gate->type == REGISTER)
            toLabel = (circuit->predecessors[gateId][0])->id;
        else
            assert(false);
        stableGateLabels[-1][toLabel] = label->id;
        };


    for(auto it : context->initialRandomGates)
    {
        PropVarSet* label = new PropVarSet(numLabels);
        label->ones.insert(labelIdx);
        propVarSets[label->id] = label;
        addGateLabel(label, it);       
        labelIdx++;

    }
    for(auto it : context->initialShareGates)
    {
        for(auto it2 : it.second)
        {
            PropVarSet* label = new PropVarSet(numLabels);
            label->ones.insert(labelIdx);
            propVarSets[label->id] = label;
            
            for(auto it3 : it2)
            {
                addGateLabel(label, it3);
            }
            labelIdx++;
        }
    }
}*/

void Verifier::buildFormula()
{
    //Wait until reset is over
    vcdStorage->parseNextCycle();
    vcdStorage->parseNextCycle();
    vcdStorage->parseNextCycle();
    string resetName = "rst";
    Gate* reset = circuit->getGate(resetName);
    uint32_t resetValue = vcdStorage->getCurrentSignalValue(reset->id);
    if(resetValue != 0)
        throw CocoException("Reset must take exactly 3 cycles.");

    int cycle = 0;

    throw CocoException("Not implemented.");
    
    while(cycle < cycles)
    {
        cout << "[STABLE] Building formula for cycle " << cycle << endl;
        buildFormulaStable(cycle);
        vcdStorage->parseNextCycle();
        cycle++;
    }

}
/*
int Verifier::computeLabelXor(Gate* gate, unordered_map<uint32_t, uint32_t>& gateLabels)
{
    vector<Gate*> inputs = circuit->predecessors[gate->id];
    bool input0Labeled = gateLabels.count(inputs[0]->id) != 0;
    bool input1Labeled = gateLabels.count(inputs[1]->id) != 0;

    //Case 1: both inputs are labeled
    if(input0Labeled && input1Labeled)
    {
        int input0Label = gateLabels[inputs[0]->id];
        int input1Label = gateLabels[inputs[1]->id];

        //If both inputs have the same label: a xor a = 0
        if(input0Label == input1Label)
            return -1;
        else {
            //Definition for Gate todo comment
            solver->addComment("Definition for gate");
            //TODO move to own function
            PropVarSet* label0 = propVarSets[input0Label];
            PropVarSet* label1 = propVarSets[input1Label];
            PropVarSet* labelXor = new PropVarSet(solver, label0, label1);

            if(labelXor.ones.size() == 0 && labelXor->vars.size() == 0)
            {
                delete labelXor;
                return -1;
            }

            propVarSets[labelXor.id] = labelXor;
            return labelXor.id; 
        }

        // If both inputs are biased, this is also a non-linear result
        //TODO
    }

    //Case 2: no input is labeled
    else if(!input0Labeled && !input1Labeled)
        return -1;
    
    //Case 3: one input is labeled -> inherit
    else if(input0Labeled)
        return gateLabels[inputs[0]->id];
    else if(input1Labeled)
        return gateLabels[inputs[1]->id];
    
    

    return -1;
}

int Verifier::computeLabelAnd(Gate* gate, unordered_map<uint32_t, uint32_t>& gateLabels)
{
    vector<Gate*> inputs = circuit->predecessors[gate->id];
    bool input0Labeled = gateLabels.count(inputs[0]->id) != 0;
    bool input1Labeled = gateLabels.count(inputs[1]->id) != 0;

    //Case 1: both inputs are labeled
    if(input0Labeled && input1Labeled)
    {
        int input0Label = gateLabels[inputs[0]->id];
        int input1Label = gateLabels[inputs[1]->id];

        //If both inputs have the same label: a and a = a
        if(input0Label == input1Label)
            return input0Label;
        else {
            //Definition for Gate todo comment
            //make op1 biased
            //make op2 biased
            //create prop var set for AND
            return -1;
        }
    }

    //Case 2: no input is labeled
    else if(!input0Labeled && !input1Labeled)
        return -1;
    
    //Case 3: one input is labeled -> inherit with looking on trace
    else if(input0Labeled) {

        //Lookup trace for value of input 1
        uint32_t gateValue = vcdStorage->getCurrentSignalValue(inputs[1]->id);

        //Case 3.1: a and 0 = 0
        if(gate->type == AND && gateValue == 0)
            return -1;
        //Case 3.2: a or 1 = 1
        else if(gate->type == OR && gateValue == 1)
            return -1;
        
        return gateLabels[inputs[0]->id];
    }
    else if(input1Labeled)
    {
        //Lookup trace for value of input 1
        uint32_t gateValue = vcdStorage->getCurrentSignalValue(inputs[0]->id);

        //Case 3.1: a and 0 = 0
        if(gate->type == AND && gateValue == 0)
            return -1;
        //Case 3.2: a or 1 = 1
        else if(gate->type == OR && gateValue == 1)
            return -1;
        
        return gateLabels[inputs[1]->id];
    }
    return -1;
}*/
/*
int Verifier::computeLabelMux(Gate* gate, unordered_map<uint32_t, uint32_t>& gateLabels)
{
    Multiplexer* muxGate = (Multiplexer*)gate;

    bool selectLabeled = gateLabels.count(muxGate->select) != 0;

    vector<Gate*> inputs = circuit->predecessors[gate->id];
    bool input0Labeled = gateLabels.count(inputs[0]->id) != 0;
    bool input1Labeled = gateLabels.count(inputs[1]->id) != 0;

    vector<uint32_t> muxLabels;
    if(selectLabeled)
    {
        muxLabels.push_back(gateLabels[muxGate->select]);
        if(input0Labeled)
            muxLabels.push_back(gateLabels[inputs[0]->id]);
        if(input1Labeled)
            muxLabels.push_back(gateLabels[inputs[1]->id]);

    }
    else
    {
        uint32_t selectValue = vcdStorage->getCurrentSignalValue(muxGate->select);
        if(selectValue == 0 && input0Labeled)
            muxLabels.push_back(gateLabels[inputs[0]->id]);
        else if (selectValue == 1 && input1Labeled)
            muxLabels.push_back(gateLabels[inputs[1]->id]);
    }

    if(muxLabels.size() == 0)
        return -1;
    else if(muxLabels.size() == 1)
        return muxLabels[0];
    else if(muxLabels.size() == 2)
        return -1; //todo: AND between them
    else if(muxLabels.size() == 3){
        return -1; //todo AND between three of them.
    }
    else
        assert(0);
    return -1;
}*/



//Gatelabel = correlation set id
/*void Verifier::buildFormulaStable(int cycle) {

    //Cycle -1 = initial
    unordered_map<uint32_t, uint32_t> previousgateLabels = stableGateLabels[cycle-1]; 

    unordered_map<uint32_t, Gate*>::iterator it = circuit->gates.begin();
    for(it; it != circuit->gates.end(); it++)
    {
        Gate* gate = it->second;
        int gateLabel = -1;
        if(gate->type == REGISTER) 
        {
            //Current variable = one of predecessor of prevous cycle if labeled
            Gate* input = circuit->predecessors[gate->id][0];
            if(previousgateLabels.count(input->id) != 0)
                gateLabel = previousgateLabels[input->id];
        }
        else if (gate->type == INPUT_PORT)
        {
            //Current variable = copy of last cycle
            //Input ports can't really change.
            if(previousgateLabels.count(gate->id) != 0)
                gateLabel = previousgateLabels[gate->id];
        }
        else if(gate->type == XOR) {
            gateLabel = computeLabelXor(gate, stableGateLabels[cycle]);
        }
        else if(gate->type == AND || gate->type == OR) {
            gateLabel = computeLabelAnd(gate, stableGateLabels[cycle]);
        }
        else if(gate->type == MUX) {
            gateLabel = computeLabelMux(gate, stableGateLabels[cycle]);
        }
        else if(gate->type == NOT) {
            //Current variable = one of predecessor of current cycle if labeled
            Gate* input = circuit->predecessors[gate->id][0];
            if(stableGateLabels[cycle].count(input->id) != 0)
                gateLabel = stableGateLabels[cycle][input->id];
        }

        if(gateLabel != -1)
            stableGateLabels[cycle][gate->id] = gateLabel;
    }
}*/


Verifier::~Verifier()
{
    delete solver;
}
