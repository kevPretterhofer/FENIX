#include "helper.h"



void checkFileExists(ifstream* file)
{   
    if(!file->good())
        throw CocoException("Could not open file");
}

std::string generateVariableName(string prefix, uint32_t gate, uint32_t cycle, uint32_t var)
{
    string varName;
    if (var != 0)
        varName = prefix + "g" + std::to_string(gate) + "v" + std::to_string(var) + "t" + std::to_string(cycle);
    else
        varName = prefix + "g" + std::to_string(gate) + "t" + std::to_string(cycle);

    return varName;
}

void benchmarkHelper(size_t& cycles, int& order, int design, string &curBenchPath, string benchpath)
{   
    if (design == 0)
    {
        curBenchPath = benchpath.append("gadgets/domAnd/thirdOrderOne/");
        cycles = 2;
        return;
    }
    else if (design == 1) //DOM
    {
        curBenchPath = benchpath.append("gadgets/domAnd/");  
        cycles = 2;
    } else if (design == 2) //TI
    {
        curBenchPath = benchpath.append("gadgets/tiAnd/");
        cycles = 1;
    } else if (design ==3) //ISW
    {
        curBenchPath = benchpath.append("gadgets/iswAnd/"); 
        cycles = 3;
    } else if (design == 4) //TRICHINA
    {
        curBenchPath = benchpath.append("gadgets/trichinaAnd/");
        cycles = 1;
    }
    else if (design == 5) //DOM-Keccak-SBOX
    {
        curBenchPath = benchpath.append("biggerDesigns/keccakSbox/");
        cycles = 2;
    }
    else if (design == 6) //Ascon Sbox
    {
        curBenchPath = benchpath.append("biggerDesigns/asconSbox/");
        cycles = 3;
    } else if (design == 7)
    {
        curBenchPath = benchpath.append("biggerDesigns/aesSbox_old/");
        cycles = 5;
    } else if (design == 8)
    {
        curBenchPath = benchpath.append("biggerDesigns/asconFullRound/");
        cycles = 3;
    } else if (design == 9)
    {
        curBenchPath = benchpath.append("gadgets/brokenDomAnd/");  
        cycles = 1;
    }

     if (order == 1)
            curBenchPath = curBenchPath.append("firstOrder/");
        else if (order == 2)
            curBenchPath = curBenchPath.append("secondOrder/");
        else if (order == 3)
            curBenchPath = curBenchPath.append("thirdOrder/");
        else
            return;   
}