#include "CircuitParser.h"
#include "helper.h"

#include <set>
CircuitParser::CircuitParser(const char* jsonFilePath) : jsonFile(jsonFilePath) {
    checkFileExists(&jsonFile);
}

void CircuitParser::parsePorts(json& ports, Circuit* circuit) {

    for(json::iterator it = ports.begin(); it != ports.end(); it++) {
        string name = it.key();
        Type type;
        if(it.value()["direction"] == "input") {
            type = Type::INPUT_PORT;
        }
        else if (it.value()["direction"] == "output")
            continue; //We skip output ports.
            //type = Type::OUTPUT_PORT;
        else
            throw CocoException("Unknown port direction.");

        if(it.value()["bits"].size() != 1)
            throw CocoException("Invalid bit width - only single-bit signals are supported. Did you forget splitnets?");
        uint32_t id = it.value()["bits"][0];

        Gate* ioPort = new Gate(id, name, type);
        circuit->addGate(ioPort);
    }
}
void CircuitParser::parseGates(json& gates, json& netnames, Circuit* circuit) {


    //Create mapping from "bits" (id) - to "name"
    map<uint32_t, string> netname;
    for(json::iterator it = netnames.begin(); it != netnames.end(); it++)
    {
        string name = it.key();
        if(it.value()["bits"].size() != 1)
            throw CocoException("Invalid bit width - only single-bit signals are supported. Did you forget splitnets?");
        uint32_t id = it.value()["bits"][0];
        netname[id] = name;
    }

    //Parse the gates / cells 
    for(json::iterator it = gates.begin(); it != gates.end(); it++) {
        if(it.value()["hide_name"] == 1)
            throw CocoException("Invalid argument hide_name == 1. Did you forget rename -enumerate?");
        
        
        string typeStr = it.value()["type"];
        if(Gate::strType.count(typeStr) == 0)
            throw CocoException("Invalid gate type \"" + typeStr + "\"");
        
        Type type = Gate::strType[it.value()["type"]];
        
        //Ignore constant lo and hi for now
        //if (type == GND || type == VCC)
        //    continue;

        //Output wire declaration differs between FlipFlops and other cells (Q or O)
        string outputName = (type == Type::FDCE || type == Type::FDRE) ? "Q" : 
                            (type == Type::VCC) ? "P" :  (type == Type::GND) ? "G" : "O";        
        if(it.value()["connections"][outputName].size() == 0)
            throw CocoException("Invalid gate connections");
        
        uint32_t id = it.value()["connections"][outputName].at(0);
        string name = netname[id];
        if(circuit->existsGate(id))
            throw CocoException("Gate with id already exists (name: \""+ name +"\").");

        Gate* gate;

        //Not sure yet about the mux
        if(type == MUX)
        {
            uint32_t select =  it.value()["connections"]["S"].at(0);
            gate = new Multiplexer(id, name, type, select);
        } else if (Gate::luts.find(type) != Gate::luts.end()) {
            string init = it.value()["parameters"]["INIT"];
            
            gate = new Lut(id, name, type, init);
        } else {
            gate = new Gate(id, name, type);
        }

        circuit->addGate(gate);
    }
}

void CircuitParser::parseConnections(json& gates, Circuit* circuit) {


    for(auto it = circuit->gates.begin(); it != circuit->gates.end(); it++)
    {
        circuit->successors.emplace(it->first, vector<Gate*>());
    }
    //Predecessor
    for(json::iterator it = gates.begin(); it != gates.end(); it++) {
        Type type = Gate::strType[it.value()["type"]];
       
       //Ignore constant lo and hi for now
        if (type == GND || type == VCC)
            continue;
       
        string outputName = (type == Type::FDCE || type == Type::FDRE) ? "Q" : 
                    (type == Type::VCC || type == Type::GND) ? "P" : "O"; 
                         
        uint32_t id = it.value()["connections"][outputName].at(0);
        
        assert(circuit->existsGate(id) == true);

        //Since we have to deal with (probably) more than 1 or 2 inputs we make it a vector
        Gate* g = circuit->getGate(id);
        vector<string> inputNames = (type == Type::FDCE || type == Type::FDRE) ? vector<string>{"D"} :
                           (type == Type::MUX) ? vector<string>{"I0","I1"} : (lutMap.find(type) == lutMap.end()) ? vector<string>{"I"} : lutMap.at(type);        


        vector<Gate*> predecessorList;
        
        //ToDo: If its NOT GND or VCC        
        if (outputName != "P")
        {
            for(auto s : inputNames)
            {
                if(it.value()["connections"][s].size() != 1)
                    throw CocoException("Invalid gate connections \"" + g->name + "\"");
            }
                  
        
            for(auto s : inputNames)
            {
                uint32_t inputId = it.value()["connections"][s].at(0);

                Gate* inputGate = circuit->getGate(inputId);
                predecessorList.push_back(inputGate);
                circuit->successors.at(inputId).push_back(g);
            }
            

            if(g->type == MUX) {
                uint32_t selectId = ((Multiplexer*)g)->select;
                Gate* selectGate = circuit->gates.at(selectId);
                predecessorList.push_back(selectGate);
                circuit->successors.at(selectId).push_back(g);
            }
        } else {

        }

        assert(circuit->predecessors.count(id) == 0);
        circuit->predecessors.emplace(id, predecessorList);        
    }


    for(auto it = circuit->gates.begin(); it != circuit->gates.end(); it++)
    {
        if(it->second->type == INPUT_PORT || it->second->type == VCC || it->second->type == GND)
            circuit->predecessors.emplace(it->first, vector<Gate*>());
        assert(circuit->predecessors.count(it->first) == 1 || it->second->type == INPUT_PORT || it->second->type == VCC || it->second->type == GND);
    }
    
}

//Clean the circuit in the way that we remove the input and output
void CircuitParser::bypassBuffers(Circuit* circuit)
{
    vector<uint32_t> toDelete;

    for(auto const& it : circuit->gates)
    {
        if (it.second->type == IBUF || it.second->type == BUFG)
        {
            toDelete.push_back(it.first);


            //Prepare for removing IBUF from internal representation
            auto inputPort = circuit->predecessors.at(it.first);
            auto successors = circuit->successors.at(it.first);
            
            //Remove IBUF from InputPort Successors
            auto& svec = circuit->successors.at(inputPort[0]->id);
            svec.erase(std::remove(svec.begin(), svec.end(), it.second), svec.end());


            //"reconnect" successors
            for (auto const& s : successors)
            {
                //Delete IBUF out of the predecessor list of its successor
                auto& vec = circuit->predecessors.at(s->id);
                std::replace(vec.begin(), vec.end(), it.second, inputPort[0]);

                if (s->type == MUX)
                {
                    auto m = (Multiplexer*)(s);

                    if (m->select == it.first)
                        m->select = inputPort[0]->id;
                }
                    

                //Make successors of IBUF successor to INPUT
                svec.push_back(s);
            }      

            //Remove from Suc and Pred map
            circuit->successors.erase(it.first);
            circuit->predecessors.erase(it.first);
        } 
    }

    //Delete
    for (auto const& ids : toDelete)
    {
        circuit->gates.erase(ids);
    }
}

//Decompose LUT6 into 2xLUT5 + 1xMUX
void CircuitParser::decompLut6(Circuit* circuit)
{

    vector<uint32_t> toDelete;

    for(auto const& it : circuit->gates)
    {
        if (it.second->type != LUT6)
            continue;

        auto lut6 = (Lut*)it.second;
        auto inputs = circuit->predecessors.at(it.first);
        auto successors = circuit->successors.at(it.first);

        assert(inputs.size() == 6);
        
        auto initstring = lut6->init_string;
        auto initupper = initstring.substr(0,32);
        auto initlower = initstring.substr(32,32);

        auto tmpid = circuit->getNextAvailableId();
        auto* lowerLut = new Lut(tmpid, lut6->name+"_(lut6)lut5_lower", LUT5, initlower);
        circuit->addGate(lowerLut);

        tmpid = circuit->getNextAvailableId();
        auto* upperLut = new Lut(tmpid, lut6->name+"_(lut6)lut5_upper", LUT5, initupper);
        circuit->addGate(upperLut);

        tmpid = circuit->getNextAvailableId();
        auto* mux = new Multiplexer(tmpid, lut6->name+"_(lut6)mux", MUX, inputs.at(5)->id);
        circuit->addGate(mux);

        //Reconnect new MUX:
        //LUT6 Successors become MUX successors, the MUX becomes their predecessor
        //Input[5] becomes MUX predecessor, thus MUX becomes its successor
        //The newly created LUT5 become the predecessor of the MUX thus it becomes their successor
        auto& vec = circuit->successors.at(inputs.at(5)->id);
        std::replace(vec.begin(), vec.end(), it.second, (Gate*)mux);

        circuit->successors.emplace(mux->id, successors);
        for (auto s : successors)
        {
            auto& vec = circuit->predecessors.at(s->id);
            std::replace(vec.begin(), vec.end(), it.second, (Gate*)mux);
        }
        vector<Gate*> predecessorList;
        predecessorList.push_back(lowerLut);
        predecessorList.push_back(upperLut);
        predecessorList.push_back(inputs.at(5));
        circuit->predecessors.emplace(mux->id, predecessorList);
        
        vector<Gate*> lut5succs = {mux};
        circuit->successors.emplace(upperLut->id, lut5succs);
        circuit->successors.emplace(lowerLut->id, lut5succs);        

        //Predecessor Gates from LUT6 = Predecessor Gates from LUT5
        //Successors from Predecessor Gates = LUT5
        vector<Gate*> predecessorLut5;
        for (int i = 0; i < 5; ++i)
        {
            predecessorLut5.push_back(inputs[i]);
            auto& vec = circuit->successors.at(inputs[i]->id);
            std::replace(vec.begin(), vec.end(), it.second, (Gate*)upperLut);
            vec.push_back((Gate*)lowerLut);
        }

        circuit->predecessors.emplace(upperLut->id, predecessorLut5);
        circuit->predecessors.emplace(lowerLut->id, predecessorLut5);

        toDelete.push_back(it.first);
    }

    //Delete
    for (auto const& ids : toDelete)
    {
        circuit->successors.erase(ids);
        circuit->predecessors.erase(ids);
        circuit->gates.erase(ids);
    }

}

Circuit* CircuitParser::parse(bool decomposeLut6) {
    

    json j;
    jsonFile >> j;

    //Only one module is allowed.
    if(j["modules"].size() != 1)
        throw CocoException("Only one module is allowed! Did you flatten your design?");
    
    string topModuleName = j["modules"].begin().key();

    //Add 1 cell per port
    json topModule = j["modules"][topModuleName];
    
    json ports = topModule["ports"];

    Circuit* circuit = new Circuit();

    parsePorts(ports, circuit);

    json gates = topModule["cells"];
    json netnames = topModule["netnames"];
    parseGates(gates, netnames, circuit);
   
    parseConnections(gates, circuit);
   
    bypassBuffers(circuit);

    auto testnumber = circuit->getNextAvailableId();
    if (decomposeLut6)
        decompLut6(circuit);



    //TODO: maybe it is necessary somewhen to add constant nodes

    circuit->sortTopological();
    return circuit;

}
  
CircuitParser::~CircuitParser()
{

}