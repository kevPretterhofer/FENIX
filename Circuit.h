#ifndef CIRCUIT_H

#define CIRCUIT_H
#include <map>
#include <unordered_map>
#include <set>
#include <vector>
#include <iostream>
#include <string>
#include <cassert>


#include "Gate.h"
using namespace std;

class Circuit {
    public:
        //Incoming edges
        unordered_map<uint32_t, vector<Gate*>> predecessors;
        //Outgoing edges
        unordered_map<uint32_t, vector<Gate*>> successors;

        //TODO merge gates and sorted
        unordered_map<uint32_t, Gate*> gates;
        vector<uint32_t> sorted;
        set<uint32_t, greater<uint32_t>> orderedIDs;

        void addGate(Gate* gate);
        Gate* getGate(uint32_t id);
        Gate* getGate(string& name);
        void sortTopological();
        bool existsGate(uint32_t id);
        void generateDot(string& path);
        void writeToFile(string& path);
        void readFromFile(string& path);
        void generateLabelFile(string& path);
        uint32_t findMaxCycles();
        uint32_t getNextAvailableId();

        ~Circuit();

    private:
        void recFinder(uint32_t& max, uint32_t current, uint32_t id, std::vector<uint32_t> used);


};

#endif