#ifndef Z3CHECKERCA_H
#define Z3CHECKERCA_H

#include "z3++.h"
#include "VerificationContext.h"
#include "Circuit.h"

class VerificationContext;
enum class Mode;

class Z3CheckerCA {

    public:
    Z3CheckerCA(VerificationContext* context);
    Z3CheckerCA(VerificationContext* context, uint32_t cycles);
    
    void check();
   
    private:
    Circuit* circuit;
    Mode mode;
    unsigned int order;
    
    //ToDo: Parametrize this
    uint32_t cycles = 5;
    
    z3::context z3_context;
    //z3::solver z3_solver;
    z3::solver z3_solver = z3::solver(z3_context);
    //z3::solver z3_solver = z3::tactic(z3_context, "qsat").mk_solver();
    //z3::solver z3_solver = z3::tactic(z3_context, "psmt").mk_solver();
    //z3::solver z3_solver = z3::tactic(z3_context, "psat").mk_solver();
    //z3::solver z3_solver = z3::tactic(z3_context, "sat").mk_solver();
    
    //z3::solver z3_solver = z3::tactic(z3_context, "lra").mk_solver();
    
    //Index with [cycle][gateId][var]
    vector<map<uint32_t, map<uint32_t, z3::expr>>> stable;
    vector<map<uint32_t, map<uint32_t, z3::expr>>> transient;
    
    //Index with [cycle][gateId]
    vector<map<uint32_t, z3::expr>> activation;
    vector<uint32_t> variables;
    vector<z3::expr> secrets;
    
    void initialize(VerificationContext* context);
    void processCircuit(VerificationContext* context);

    void processInputPorts(const Gate* g, uint32_t curCycle);
    void processLut(Gate* g, uint32_t curCycle);
    void processRegister(Gate* g, uint32_t curCycle);
    void processMux(Gate* g, uint32_t curCycle);


    map<uint32_t, vector<uint32_t>> precomputedValues = {{1, {0}}, {2, {1}}, {3, {0, 1}}, {4, {2}}, {5, {0, 2}}, {6, {1, 2}}, {7, {0, 1, 2}}, {8, {3}}, {9, {0, 3}}, {10, {1, 3}}, {11, {0, 1, 3}}, {12, {2, 3}}, {13, {0, 2, 3}}, {14, {1, 2, 3}}, {15, {0, 1, 2, 3}}, {16, {4}}, {17, {0, 4}}, {18, {1, 4}}, {19, {0, 1, 4}}, {20, {2, 4}}, {21, {0, 2, 4}}, {22, {1, 2, 4}}, {23, {0, 1, 2, 4}}, {24, {3, 4}}, {25, {0, 3, 4}}, {26, {1, 3, 4}}, {27, {0, 1, 3, 4}}, {28, {2, 3, 4}}, {29, {0, 2, 3, 4}}, {30, {1, 2, 3, 4}}, {31, {0, 1, 2, 3, 4}}, {32, {5}}, {33, {0, 5}}, {34, {1, 5}}, {35, {0, 1, 5}}, {36, {2, 5}}, {37, {0, 2, 5}}, {38, {1, 2, 5}}, {39, {0, 1, 2, 5}}, {40, {3, 5}}, {41, {0, 3, 5}}, {42, {1, 3, 5}}, {43, {0, 1, 3, 5}}, {44, {2, 3, 5}}, {45, {0, 2, 3, 5}}, {46, {1, 2, 3, 5}}, {47, {0, 1, 2, 3, 5}}, {48, {4, 5}}, {49, {0, 4, 5}}, {50, {1, 4, 5}}, {51, {0, 1, 4, 5}}, {52, {2, 4, 5}}, {53, {0, 2, 4, 5}}, {54, {1, 2, 4, 5}}, {55, {0, 1, 2, 4, 5}}, {56, {3, 4, 5}}, {57, {0, 3, 4, 5}}, {58, {1, 3, 4, 5}}, {59, {0, 1, 3, 4, 5}}, {60, {2, 3, 4, 5}}, {61, {0, 2, 3, 4, 5}}, {62, {1, 2, 3, 4, 5}}, {63, {0, 1, 2, 3, 4, 5}}, {64, {6}}};
    

};

#endif