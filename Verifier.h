#ifndef VERIFIER_H
#define VERIFIER_H



#include "VerificationContext.h"
#include "Circuit.h"
#include "helper.h"
#include "VCDStorage.h"
#include "PropVarSet.h"
#include "Solver.h"
#include <map>

class Verifier
{
    public:
        Verifier(VerificationContext* context);
        ~Verifier();
        void buildFormula();

    private:
        Mode mode;
        unsigned int order;
        unsigned int cycles;
        Circuit* circuit;
        VCDStorage* vcdStorage;

        //Interface to Cadical
        Solver* solver; 

        //{ Cycle -> { GateId -> PropVarSetId } }
        unordered_map<int, unordered_map<uint32_t, uint32_t>> stableGateLabels;

        //PropVarSetId -> PropVarSEt 
        unordered_map<uint32_t, PropVarSet*> propVarSets;


        int computeLabelXor(Gate* gate, unordered_map<uint32_t, uint32_t>& gateLabels);
        int computeLabelAnd(Gate* gate, unordered_map<uint32_t, uint32_t>& gateLabels);
        int computeLabelMux(Gate* gate, unordered_map<uint32_t, uint32_t>& gateLabels);
        void buildFormulaStable(int cycle);
        void initializeGateLabels(VerificationContext* context);

};

#endif