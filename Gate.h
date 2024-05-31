#ifndef GATE_H

#define GATE_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include <iostream>
#include <fstream>
#include <set>
using namespace std;

enum Type
{
    FDRE,   //FlipFlop with sync reset
    FDCE,   //FlipFlop with async reset
    INPUT_PORT,
    OUTPUT_PORT,
    IBUF,   
    OBUF,   
    BUFG,   
    MUX,
    CONST,
    LUT1,
    LUT2,
    LUT3,
    LUT4,
    LUT5,
    LUT6, 
    LUT6_2, 
    VCC,   //Basically constant hi
    GND    //Basically constant lo
};



class Gate
{
public:
    uint32_t id;
    string name;
    Type type;

    Gate(uint32_t id, string gate_name, Type gate_type) : id(id), name(gate_name), type(gate_type) {};
    Gate(Gate const &gate);
    Gate() {};

    virtual string toString();
    virtual void fromString(istringstream& iss);

    virtual ~Gate() {};



    static map<Type, string> typeStr;
    static map<string, Type> strType;
    
    //ToDo: LUT6_2 has two outputs - this is not handled yet
    static set<Type> luts;
};

class Multiplexer : public Gate
{
    public:
        Multiplexer(const Gate* g) ;
        uint32_t select;
        Multiplexer(uint32_t id, string gate_name, Type gate_type, uint32_t select) : Gate(id, gate_name, gate_type), select(select) {};

        virtual string toString();
        virtual void fromString(istringstream& iss);
        ~Multiplexer() {};

};

class Lut : public Gate
{
    public:
    Lut(const Gate* g);
    string init_string;
    //The coefficients vector contains the fourier coefficients 
    //indexed by value of indices of elements considered by the xor
    //e.g. empty set = 0, x0 = 1, x1= 2, x0*x1 = 3, x2 = 4, x0*x2 = 5, and so on...
    vector<float> coefficients;
    Lut(uint32_t id, string gate_name, Type gate_type, string init_string);
    void computeFourier();
    virtual string toString();
    virtual void fromString(istringstream& iss);
    ~Lut() {};
};




#endif