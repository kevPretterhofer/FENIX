#include "VerificationContext.h"
#include "helper.h"
#include <algorithm>


void VerificationContext::check()
{
    if (order == 0)
        throw CocoException("Masking order not set.");
    else if (cycles == 0)
        throw CocoException("Number of cycles to verify not set.");
    else if (mode == Mode::INVALID)
        throw CocoException("Verification mode not set.");
}

void VerificationContext::setMode(string modeStr)
{
    if (modeStr == "stable")
        mode = Mode::STABLE;
    else if (modeStr == "transient")
        mode = Mode::TRANSIENT;
    else
        throw CocoException("Invalid verification mode (Expected: stable or transient)");
}

void VerificationContext::setOrder(string orderStr)
{
    // TODO: move to helper function

    try
    {
        int orderInt = stoi(orderStr);
        if (orderInt <= 0)
        {
            throw exception();
        }
        order = orderInt;
    }
    catch (...)
    {
        throw CocoException("Invalid masking order (Expected: > 0)");
    }
}

void VerificationContext::setCycles(string cyclesStr)
{

    try
    {
        int cyclesInt = stoi(cyclesStr);
        if (cyclesInt <= 0)
        {
            throw exception();
        }
        cycles = cyclesInt;
    }
    catch (...)
    {
        throw CocoException("Invalid cycle count (Expected: > 0)");
    }
}

void VerificationContext::setCircuit(Circuit *circuit)
{
    if (circuit == 0)
        throw CocoException("Invalid circuit.");

    this->circuit = circuit;
}
void VerificationContext::setVCDStorage(VCDStorage *vcdStorage)
{
    if (vcdStorage == 0)
        throw CocoException("Invalid VCDStorage.");

    this->vcdStorage = vcdStorage;
}

void VerificationContext::setChecker(Z3Checker* z3Checker)
{
    if (z3Checker == 0)
            throw CocoException("Invalid Checker.");

    this->z3Checker = z3Checker;

}

void VerificationContext::setChecker(Z3CheckerCA* z3CheckerCA)
{
    if (z3CheckerCA == 0)
            throw CocoException("Invalid Checker.");

    this->z3CheckerCA = z3CheckerCA;

}

VerificationContext::~VerificationContext()
{
    if (circuit)
        delete circuit;
    if (vcdStorage)
        delete vcdStorage;
    if (z3Checker)
        delete z3Checker;
}

Circuit *VerificationContext::getCircuit()
{
    if (circuit == 0)
        throw CocoException("Invalid circuit.");
    return circuit;
}
VCDStorage *VerificationContext::getVCDStorage()
{
    if (vcdStorage == 0)
        throw CocoException("Invalid vcdStorage.");
    return vcdStorage;
}

Mode VerificationContext::getMode()
{
    if (mode == Mode::INVALID)
        throw CocoException("Verificaton mode not set.");
    return mode;
}

unsigned int VerificationContext::getOrder()
{
    if (order == 0)
        throw CocoException("Order not set.");
    return order;
}

unsigned int VerificationContext::getCycles()
{
    if (cycles == 0)
        throw CocoException("Cycles not set.");
    return cycles;
}

Z3Checker* VerificationContext::getChecker()
{
    if (this->z3Checker == 0)
        throw CocoException("Z3Checker not set.");

    return this->z3Checker;
}

Z3CheckerCA* VerificationContext::getCheckerCA()
{
    if (this->z3CheckerCA == 0)
        throw CocoException("Z3Checker not set.");

    return this->z3CheckerCA;
}

void VerificationContext::parseLabelFile(string &path)
{
    if (circuit == 0)
        throw CocoException("Invalid circuit.");

    ifstream in(path);
    if (in.good() == false)
        throw CocoException("Could not read from file " + path);

    string line;
    while (getline(in, line))
    {
        istringstream iss(line);
        uint32_t id;
        string name;
        string label;
        char dummy;

        iss >> id;

        if (circuit->gates.count(id) == 0)
            throw CocoException("Unkown gate id");

        //TODO: quick fix - take a closer look
        if (circuit->gates[id]->type != FDCE && circuit->gates[id]->type != FDRE && circuit->gates[id]->type != INPUT_PORT)
            throw CocoException("Only registers and input ports can be labeled.");

        iss >> dummy;

        if (dummy != ';')
            throw CocoException("Invalid label file format.");

        iss >> dummy;

        while (dummy != ';')
        {
            name.push_back(dummy);
            iss >> dummy;
        }

        if (dummy != ';')
            throw CocoException("Invalid label file format.");

        iss >> label;

        if ((label == "share"))
        {
            uint32_t secretId;
            uint32_t shareId;

            iss >> secretId;
            iss >> dummy;
            if (dummy != '.')
                throw CocoException("Invalid share label " + label);
            iss >> shareId;

            initialShareGates[secretId].resize(max(shareId, (uint32_t)initialShareGates[secretId].size()));
            initialShareGates[secretId][shareId-1].push_back(id);
            numLabels++;
        }
        else if (label == "random")
        {
            initialRandomGates.push_back(id);
            numLabels++;
        }
        else if (label == "unimportant")
            continue;
        else
            throw CocoException("Unknown label type \"" + label + "\"");
    }
    printInitialLabels();

    //Sanity check
    //For every secret
    for (auto it = initialShareGates.begin(); it != initialShareGates.end(); it++)
    {
        //Share numbering starts with 1 and must not have gaps
        for (auto it2 = it->second.begin(); it2 != it->second.end(); it2++)
        {
            if((*it2).size() == 0)
                throw CocoException("Invalid labeling (share numbering must start with 1)");
        } 
    }
    in.close();
}

void VerificationContext::printInitialLabels()
{
    cout << "Amount of randomness: " << initialRandomGates.size() << "bits." << endl;
    cout << "Secret bits: " << initialShareGates.size() << endl;
    for (auto it = initialShareGates.begin(); it != initialShareGates.end(); it++)
    {
        cout << it->first << " : ";
        for (auto it2 = it->second.begin(); it2 != it->second.end(); it2++)
        {
            cout << "{  ";
            for (auto it3 = (*it2).begin(); it3 != (*it2).end(); it3++)
            {
                cout << *it3 << ", ";
            }
            cout << "}";
        }
        cout << endl;
    }
}
