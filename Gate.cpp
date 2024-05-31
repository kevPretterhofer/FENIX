#include "Gate.h"
#include "helper.h"
#include <sstream>
#include <cmath>
#include <iterator>

map<Type, string> Gate::typeStr = {
    {FDRE, "Fdre"},
    {FDCE, "Fdce"}, {INPUT_PORT, "Input Port"}, {OUTPUT_PORT, "Output Port"},
    {IBUF, "Input Buffer"}, {OBUF, "Output Buffer"}, {BUFG, "Clock Buffer"}, 
    {MUX, "Mux"}, {CONST, "Const"}, {LUT1, "Lut1"}, {LUT2, "Lut2"}, {LUT3, "Lut3"},
    {LUT4, "Lut4"}, {LUT5, "Lut5"}, {LUT6, "Lut6"}, {LUT6_2, "Lut6_2"}, {VCC, "Vcc"}, 
    {GND, "Gnd"}
    };

map<string, Type> Gate::strType = {
    {"FDRE", FDRE}, {"FDCE", FDCE}, {"IBUF", IBUF}, {"OBUF", OBUF},
    {"BUFG", BUFG}, {"MUX", MUX}, {"MUXF7", MUX}, {"MUXF8", MUX},{"LUT1", LUT1}, {"LUT2", LUT2}, {"LUT3", LUT3},
    {"LUT4", LUT4}, {"LUT5", LUT5}, {"LUT6", LUT6}, {"LUT6_2", LUT6_2}, {"VCC", VCC},
    {"GND", GND}
    };

set<Type> Gate::luts = {LUT1, LUT2, LUT3, LUT4, LUT5, LUT6, LUT6_2};
    
    
Lut::Lut(uint32_t id, string gate_name, Type gate_type, string init_string) : Gate(id, gate_name, gate_type), init_string(init_string)
{
   computeFourier();
}

void Lut::computeFourier()
{
     size_t initLength = this->init_string.length();
    
    if ((initLength & (initLength - 1)) != 0)
        throw CocoException("Init String length is not a power of 2");


    //Compute Fourier Representation
    //Convert function outputs to {-1, 1} representation
    vector<int> fourierInit;
    for (char const &c: init_string)
    {
        if (c == '1')
            fourierInit.push_back(-1);
        else if (c == '0')
            fourierInit.push_back(1);
        else
            throw CocoException("Not a valid binary string!");
    }

    //Compute fourier coefficients 
    size_t inputs = (size_t) log2(initLength);
    float leadingFactor = 1.0f / initLength;

    //This loop iterates over each subset of the powerset 2^x
    for(size_t i = 0; i < initLength; ++i)
    {
        float tmp = 0.0f;

        if (i == 0) //For the empty set / false
        {
            for (auto inp : fourierInit)
                tmp += inp;            
        }
        else //For every other subset of the powerset 2^x
        {
            vector<int> consideredElements;
            for (size_t j = 0; j < inputs; ++j)
            {
                if (((i >> j) & 1) == 1)
                    consideredElements.push_back(j);
            }

            for (size_t j = 0; j < initLength; ++j)
            {
                int fourierChar = 1;

                for (auto e : consideredElements)
                {

                    if (((j >> e) & 1) == 1)
                        fourierChar *= -1;
                    else 
                        fourierChar *= 1;
                }

                tmp += fourierInit.at(j) * fourierChar;
            }

        }
        this->coefficients.push_back(leadingFactor * tmp);
    }
}



Multiplexer::Multiplexer(const Gate* gate) 
{
    id = gate->id;
    name = gate->name;
    type = gate->type;
}

Lut::Lut(const Gate* gate)
{
    id = gate->id;
    name = gate->name;
    type = gate->type;
}



string Gate::toString()
{
    stringstream ss;
    ss << "{";
    ss << id;
    ss << ";";
    ss << name;
    ss << ";";
    ss << type;
    ss << "}";
    return ss.str();
}


string Multiplexer::toString() 
{
    stringstream ss;
    ss << Gate::toString();
    ss << ";";
    ss << select;
    return ss.str();
}

string Lut::toString()
{
    stringstream ss;
    ss << Gate::toString();
    ss << ";";
    ss << init_string;
    ss << ";";
    return ss.str();
}

void Gate::fromString(istringstream& iss)
{
    // {
    char dummy;
    iss >> dummy;
    

    //id
    int id_int;
    iss >> id_int;
    id = id_int;
    iss >> dummy; //;

    //name
    char n;
    iss.get(n);
    while(n != ';')
    {
        name.push_back(n);
        iss.get(n);
    }
    
    //type
    int type_int;
    iss >> type_int;
    type = Type(type_int);
    iss >> dummy; //; or }
}

void Multiplexer::fromString(istringstream& iss)
{
    char dummy;
    iss >> dummy;
    //select
    int select_int;
    iss >> select_int;
    select = select_int;
}

void Lut::fromString(istringstream& iss)
{
    char dummy;
    iss >> dummy;

    vector<string> parameters;
    string param;

    while(getline(iss, param, ';'))
    {
        parameters.push_back(param);
    }

    init_string = parameters[0];
 
    this->computeFourier();
}

