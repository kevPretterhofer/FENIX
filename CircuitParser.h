#ifndef CIRCUITPARSER_H
#define CIRCUITPARSER_H

#include <json.hpp>
#include <fstream>
#include <map>

#include "Gate.h"
#include "Circuit.h"

using namespace std;
using json = nlohmann::json;

class CircuitParser {
    public:
        CircuitParser(const char* jsonFilePath);
        Circuit* parse(bool decomposeLut6 = false);
        ~CircuitParser();

    private:
        ifstream jsonFile;
        void parsePorts(json& ports, Circuit* circuit);
        void parseGates(json& gates, json& netnames, Circuit* circuit);
        void parseConnections(json& gates, Circuit* circuit);
        void printDot();
        void sortTopological();
        void bypassBuffers(Circuit* circuit);
        void decompLut6(Circuit* circuit);

            
        map<Type, vector<string>> lutMap = {{LUT1, {"I0"}}, {LUT2, {"I0", "I1"}}, 
                            {LUT3, {"I0", "I1", "I2"}}, {LUT4, {"I0", "I1", "I2", "I3"}},
                            {LUT5, {"I0", "I1", "I2", "I3", "I4"}}, {LUT6, {"I0", "I1", "I2", "I3", "I4", "I5"}},
                            {LUT6_2, {"I0", "I1", "I2", "I3", "I4", "I5"}}};
};

#endif