#include "PropVarSet.h"
#include "Solver.h"
#include <vector>
unsigned int PropVarSet::counter = 0;

PropVarSet::PropVarSet(uint32_t numLabels)
{
    id = PropVarSet::counter;
    PropVarSet::counter++;
    this->numLabels = numLabels;
}

const int PropVarSet::getVariableAtIndex(int index)
{
    if(vars.count(index) != 0)
        return vars[index];
    
    return -1;

}

const int PropVarSet::getConstantValueAtIndex(int index)
{
    if(ones.count(index) != 0)
        return 1;
    
    return 0;
}

PropVarSet::PropVarSet(Solver* solver, const PropVarSet* operand1, const PropVarSet* operand2) : PropVarSet(solver)
{
    assert(operand1->numLabels == operand2->numLabels);
    this->numLabels = operand1->numLabels;
    for(int i = 0; i < this->numLabels; i++)
    {
        
        int variable1 = operand1->getVariableAtIndex(i);
        int variable2 = operand2->getVariableAtIndex(i);
        int constantValue1 = operand1->getConstantValueAtIndex(i);
        int constantValue2 = operand2->getConstantValueAtIndex(i);

        //Case 1: Inputs are equal -> XOR is 0
        if(variable1!= -1 && variable2 != -1 && variable1 == variable2)
            continue;
        else if(variable1 == -1 && variable2 == -1 && constantValue1 == constantValue2)
            continue;
        
        //Case 2: Inputs are contrary -> XOR is 1
        else if(variable1== -1 && variable2 == -1 && constantValue1 != constantValue2)
            ones.insert(i);
        else if (variable1!=-1 && variable2 != -1 && variable1 == (-1*variable2))
            ones.insert(i);         
        
        //Case 3: Variable XOR constant -> XOR is Variable
        else if(variable1 != -1 && variable2 == -1)
            this->vars[i] = variable1;
        
        //Case 4: Constant XOR variable -> XOR is Variable
        else if(variable1 == -1 && variable2 != -1)
            this->vars[i] = variable2;
                
        //Case 5: Variable XOR Variable -> Ask solver vor new Variable which is XOR
        else {
            int xorResult = solver->getVar();
            vector<vector<int>> xorClauses = solver->MakeXorBool(variable1, variable2, xorResult);
            solver->addClauses(xorClauses);
            this->vars[i] = xorResult;
        }
    }
}

