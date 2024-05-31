#ifndef HELPER_H
#define HELPER_H
#include <iostream>
#include <sstream>
#include <fstream>

#include <set>
#include <map>
#include "Gate.h"

using namespace std;

class CocoException : public exception
{
    private:
        const string errorMsg;
        
    public:
        CocoException(const string& m) : errorMsg("[ERROR] " + m) {};

        const char* what() const throw () {
            

            return errorMsg.c_str();
        }
};

void checkFileExists(ifstream*);
std::string generateVariableName(string prefix, uint32_t gate, uint32_t cycle, uint32_t var = 0);
void benchmarkHelper(size_t& cycles, int& order, int design, string &curBenchPath, string benchpath);

#endif