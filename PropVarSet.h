#ifndef PROP_VAR_SET_H

#define PROP_VAR_SET_H

#include <set>
#include <iostream>
#include "Solver.h"
using namespace std;


class PropVarSet {

    public:
        PropVarSet(uint32_t numLabels);
        PropVarSet(Solver *solver, const PropVarSet *xor1, const PropVarSet *xor2);
        const int getVariableAtIndex(int index);
        const int getConstantValueAtIndex(int index);


        uint32_t id;
        static unsigned int counter;
        set<uint32_t> ones;
        uint32_t numLabels;

        unordered_map<int, int> vars;

};


#endif