#ifndef Z3CHECKER_H
#define Z3CHECKER_H

#include "z3++.h"
#include "VerificationContext.h"
#include "Circuit.h"

class VerificationContext;
enum class Mode;

class Z3Checker {

    public:
    Z3Checker(VerificationContext* context);
    ~Z3Checker();

    void check();
   
    private:
    Circuit* circuit;
    Mode mode;
    unsigned int order;
    z3::context* z3_context;
    z3::solver* z3_solver;
    
    //Index with [gateId][var]
    map<uint32_t, map<uint32_t, z3::expr>> stable;
    map<uint32_t, map<uint32_t, z3::expr>> transient;
    vector<uint32_t> variables;
    vector<z3::expr> secrets;
    
    void initialize(VerificationContext* context);
    void processCircuit(VerificationContext* context);

    void processInputPorts(const Gate* g);
    void processLut(Gate* g);
    void processRegister(Gate* g);
    void processMux(Gate* g);


    map<uint32_t, vector<uint32_t>> precomputedValues = {{1, {0}}, {2, {1}}, {3, {0, 1}}, {4, {2}}, {5, {0, 2}}, {6, {1, 2}}, {7, {0, 1, 2}}, {8, {3}}, {9, {0, 3}}, {10, {1, 3}}, {11, {0, 1, 3}}, {12, {2, 3}}, {13, {0, 2, 3}}, {14, {1, 2, 3}}, {15, {0, 1, 2, 3}}, {16, {4}}, {17, {0, 4}}, {18, {1, 4}}, {19, {0, 1, 4}}, {20, {2, 4}}, {21, {0, 2, 4}}, {22, {1, 2, 4}}, {23, {0, 1, 2, 4}}, {24, {3, 4}}, {25, {0, 3, 4}}, {26, {1, 3, 4}}, {27, {0, 1, 3, 4}}, {28, {2, 3, 4}}, {29, {0, 2, 3, 4}}, {30, {1, 2, 3, 4}}, {31, {0, 1, 2, 3, 4}}, {32, {5}}, {33, {0, 5}}, {34, {1, 5}}, {35, {0, 1, 5}}, {36, {2, 5}}, {37, {0, 2, 5}}, {38, {1, 2, 5}}, {39, {0, 1, 2, 5}}, {40, {3, 5}}, {41, {0, 3, 5}}, {42, {1, 3, 5}}, {43, {0, 1, 3, 5}}, {44, {2, 3, 5}}, {45, {0, 2, 3, 5}}, {46, {1, 2, 3, 5}}, {47, {0, 1, 2, 3, 5}}, {48, {4, 5}}, {49, {0, 4, 5}}, {50, {1, 4, 5}}, {51, {0, 1, 4, 5}}, {52, {2, 4, 5}}, {53, {0, 2, 4, 5}}, {54, {1, 2, 4, 5}}, {55, {0, 1, 2, 4, 5}}, {56, {3, 4, 5}}, {57, {0, 3, 4, 5}}, {58, {1, 3, 4, 5}}, {59, {0, 1, 3, 4, 5}}, {60, {2, 3, 4, 5}}, {61, {0, 2, 3, 4, 5}}, {62, {1, 2, 3, 4, 5}}, {63, {0, 1, 2, 3, 4, 5}}, {64, {6}}};
    

};

#endif