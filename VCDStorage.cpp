#include "VCDStorage.h"
#include <sstream>
#include <cassert>  
#include <iomanip>
#include "Gate.h"

#include "helper.h"


VCDStorage::VCDStorage(const string& vcdFilePath, Circuit* circuit)
{
  cycle = 0;
  vcdFile.open(vcdFilePath);
  checkFileExists(&vcdFile);
  parseHeader(circuit);
}

VCDStorage::~VCDStorage()
{
  vcdFile.close();

}



void VCDStorage::parseHeader(Circuit* circuit)
{
  string line;
  while(getline(vcdFile, line))
  {
    if((line.rfind("#0",0) == 0) )
      break;

    if((line.rfind("$var") != string::npos))
    {
      string vcdSignalId;
      string vcdSignalName;

      stringstream vardef(line);
      string token_s;
      stringstream token_ss;

      vardef >> token_s;
      vardef >> token_s;

      vardef >> token_s;
      token_ss << token_s;

      uint32_t signalWidth;
      token_ss >> signalWidth;
      if(signalWidth != 1)
        throw CocoException("VCD Parse Error: All signals must have width 1!");

      vardef >> vcdSignalId;
      vardef >> vcdSignalName;

      if(vcdIdToGateId.count(vcdSignalId) == 0)
      {
        Gate* g = circuit->getGate(vcdSignalName);
        if(g != 0)
        {
          gateIdToVcdId[g->id] = vcdSignalId;
          vcdIdToGateId[vcdSignalId] = g->id;
        }
      }
    }
    else if((line.rfind("$timescale") != string::npos))
    {
      string token_s;
      stringstream timescaledef(line);
      timescaledef >> token_s;
      timescaledef >> token_s;

      uint32_t len = token_s.size();
      if(token_s != "1ps")
        throw CocoException("VCD Parse Error: Unknown timescale (Expected: 1ns).");
    }
    else if((line.rfind("$version") != string::npos) || (line.rfind("$date") != string::npos) || (line.rfind("$end") != string::npos) || line.empty())
    {
      continue;
    }
    else{
        throw CocoException("VCD Parse Error: Unknown header line \"" + line + "\"");
    }
  }
  cout << "-------------" << endl;

  //Parse initial signals
  while(getline(vcdFile, line))
  {
    cout << line << endl;
    if((line.rfind("#",0) == 0) ) {
      break;
    }

    if ((line.rfind("$dumpvars") != string::npos) ||(line.rfind("$end") != string::npos) )
      continue;

      parseNewSignalValue(line);
  }

  cout << "-------------" << endl;

}

void VCDStorage::parseNewSignalValue(string& line)
{
  if(line[0] == 'b')
    throw CocoException("Multi-width signals are not supported");
  else if (line[0] != '0' && line[0] != '1')
    throw CocoException("Invalid signal value \"" + line + "\"");
  else {
        uint32_t signalValue = line[0] == '0' ? 0 : 1;
        string signalId = line.substr(1);
        currentValues[signalId] = signalValue;
  }
}

void VCDStorage::parseNextCycle()
{
  cycle++;
  previousValues = currentValues;
  string line;
  
  while(getline(vcdFile, line))
  {
    //cout << line << endl;

    //Moving forward in time
    if((line.rfind("#",0) == 0) ) {
      uint32_t timestamp = stoi(line.substr(1));

      if((timestamp%20) == 0)
        ;//Falling edge -> do nothing
      else if((timestamp%20) == 10)
        //Rising edge -> new cycle
        return;
      else
        throw CocoException("Invalid clock cycle length (must be 20ps)");
    } 
    //One of the signals changes
    else 
      parseNewSignalValue(line);
  }
}

uint32_t VCDStorage::getCurrentSignalValue(uint32_t gateId)
{
  //TODO handle constants
  /*if((signalName.rfind("const_",0) == 0))
    return signalName[signalName.length() - 1];*/

  return currentValues[gateIdToVcdId[gateId]];
}
uint32_t VCDStorage::getPreviousSignalValue(uint32_t gateId)
{
  //TODO handle constants
  /*if((signalName.rfind("const_",0) == 0))
    return signalName[signalName.length() - 1];*/
  return previousValues[gateIdToVcdId[gateId]];
}

