#ifndef VERIFCONTEXT_H
#define VERIFCONTEXT_H

#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <fstream>
#include <sstream>

#include "Circuit.h"
#include "VCDStorage.h"
#include "Z3Checker.h"
#include "Z3CheckerCA.h"

using namespace std;
class Z3Checker;
class Z3CheckerCA;

enum class Mode { INVALID, STABLE, TRANSIENT };

class VerificationContext {
    private:
        Mode mode;
        unsigned int order;
        unsigned int cycles;
        Circuit* circuit = nullptr;
        VCDStorage* vcdStorage = nullptr;
  


    public:
    
        //ToDo: set z3checker private
        Z3Checker* z3Checker = nullptr;
        Z3CheckerCA* z3CheckerCA = nullptr;
        //Initial location of labels
        // List of gate ids
        // Map of secret id -> list of gate ids
        vector<uint32_t> initialRandomGates; 
        unordered_map<uint32_t, vector<vector<uint32_t>>> initialShareGates;

        uint32_t numLabels;
        bool splitLuts;

        void setMode(string modeStr);
        void setOrder(string orderStr);
        void setCycles(string cyclesStr);
        void setCircuit(Circuit* circuit);
        void setChecker(Z3Checker* z3Checker);
        void setChecker(Z3CheckerCA* z3CheckerCA);
        
        Circuit* getCircuit();
        VCDStorage* getVCDStorage();
        Mode getMode();
        unsigned int getOrder();
        unsigned int getCycles();
        Z3Checker* getChecker();
        Z3CheckerCA* getCheckerCA();
        

        void setVCDStorage(VCDStorage* vcdStorage);
        void parseLabelFile(string& path);
        void printInitialLabels();


        VerificationContext() : circuit(0), vcdStorage(0), order(0), cycles(0), mode(Mode::INVALID) {};
        void check();    
        ~VerificationContext();

};
#endif