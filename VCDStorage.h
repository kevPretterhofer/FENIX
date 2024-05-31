#ifndef VCDSTORAGE_H
#define VCDSTORAGE_H
#include "Circuit.h"
#include <string>
#include <iostream>
#include <unordered_map>
#include <fstream>

using namespace std;

class VCDStorage
{
    private:
      

      unordered_map<uint32_t, string> gateIdToVcdId;
      unordered_map<string, uint32_t> vcdIdToGateId;
      unordered_map<string, uint32_t> currentValues;
      unordered_map<string, uint32_t> previousValues;
      ifstream vcdFile;
      uint32_t cycle;

      void parseNewSignalValue(string& line);
      void parseHeader(Circuit* circuit);  
    public:
      VCDStorage(const string& vcdFilePath, Circuit* circuit);
      ~VCDStorage();
      void parseNextCycle();
      uint32_t getCurrentSignalValue(uint32_t gateId);
      uint32_t getPreviousSignalValue(uint32_t gateId);


};
#endif