#include "Circuit.h"
#include <algorithm>
#include "helper.h"


void Circuit::sortTopological() {
    set<uint32_t> next;
    set<uint32_t> work;
    bool firstLevel = true;

    //Get root nodes: Registers and Input ports
    for(auto it = gates.begin(); it != gates.end(); it++) {
        if(it->second->type == FDRE || it->second->type == FDCE || it->second->type == INPUT_PORT || it->second->type == VCC || it->second->type == GND)
            next.insert(it->first);
    }


    while(1) {
        work = next;
        next = set<uint32_t>();

        for(auto it = work.begin(); it != work.end(); it++)
        {   
            //Mark current node as sorted
            //...but only if successor was not yet visited
            bool breakOut = false;
            if (!firstLevel)
            {
                auto preds = predecessors.at(*it);
                for (auto p : preds)
                {
                    if (std::find(sorted.begin(), sorted.end(), p->id) == sorted.end())
                    {
                        next.insert(p->id);
                        breakOut = true;
                        //std::cout << "BRAKOUT!" << std::endl;
                        break;
                    }
                    //else
                        //std::cout << "NO BREAKOUT" << std::endl;
                        
                }
            }

            if (breakOut)
                continue;


            if((std::find(sorted.begin(), sorted.end(), *it) == sorted.end()))
                sorted.push_back(*it);
            else
                continue;

            //Successors must be visited next
            vector<Gate*> succs = successors.at(*it);
            for(auto it2 = succs.begin(); it2 != succs.end(); it2++)
            {
                        next.insert((*it2)->id);
            }
        }

        firstLevel = false;

        //No more successors to handle
        if(next.size() == 0)
            break;
    }

    //Sanity check
    for(auto it = gates.begin(); it != gates.end(); it++)
    {
        assert((std::find(sorted.begin(), sorted.end(), it->first) != sorted.end()));
    }

    //assert(sorted.size() == gates.size());
}

void Circuit::addGate(Gate* gate)
{
    assert(existsGate(gate->id) == false);
    gates.emplace(gate->id, gate);
    orderedIDs.insert(gate->id);
}

bool Circuit::existsGate(uint32_t id)
{
    return gates.count(id) != 0;
}

Gate* Circuit::getGate(uint32_t id)
{
    return gates.at(id);
}

Gate* Circuit::getGate(string& name)
{
    for(auto it = gates.begin(); it != gates.end(); it++)
    {
        if(it->second->name == name)
            return it->second;
    }
    //throw CocoException("Could not find gate with name \"" + name + "\"");
    return 0;
}


void Circuit::generateDot(string& path) {

    
    
    ofstream of(path);
    if(of.good() == false)
        throw CocoException("Could not write to file " + path );

    of << "digraph test {" << endl;
    for(auto it = gates.begin(); it != gates.end(); it++)
    {
        string shape = "triangle";
        string initString ="";
        if(it->second->type == FDRE || it->second->type == FDCE)
            shape = "box";
        else if(it->second->type == INPUT_PORT)
            shape = "oval";
        else if (Gate::luts.find(it->second->type) != Gate::luts.end())
        {
            initString = ((Lut*)(it->second))->init_string;
        }

        

        of << it->first << " [label = \"" << (*it->second).name <<"\n"<< (*it->second).typeStr.at((*it->second).type)<< "\n" << initString << "\", shape = \"" << shape << "\"];" << endl;
        vector<Gate*> preds = predecessors.at(it->first);
        for(auto it2 = preds.begin(); it2 != preds.end(); it2++)
        {
            of << (*it2)->id << " -> " << it->first << ";" << endl; 
        }
    } 
    of << "}" << endl;
    of.close();
}

void Circuit::writeToFile(string& path)
{   
    ofstream of(path);
    if(of.good() == false)
        throw CocoException("Could not write to file " + path );

    for(auto it = gates.begin(); it != gates.end(); it++)
    {
        of << (it->second)->toString() << endl;
    }
    of << endl;

    for(auto it = predecessors.begin(); it != predecessors.end(); it++)
    {
        of << "{";
        of << it->first;

        if(it->second.size() != 0) {
            of << ":";
    
            for(auto it2 = it->second.begin(); it2 != it->second.end()-1; it2++)
            {
                of << (*it2)->id;
                of << ";";
            }
            of << (*(it->second.end()-1))->id;
        }
        of << "}";
        of << endl;
    }
    of << endl;

    for(auto it = successors.begin(); it != successors.end(); it++)
    {
        of << "{";
        of << it->first;

        if(it->second.size() != 0) {
            of << ":";
    
            for(auto it2 = it->second.begin(); it2 != it->second.end()-1; it2++)
            {
                of << (*it2)->id;
                of << ";";
            }
            of << (*(it->second.end()-1))->id;
        }
        of << "}";
        of << endl;
    }
    of << endl;
    of.close();
}

void Circuit::readFromFile(string& path)
{
    ifstream in(path);
    if(in.good() == false)
        throw CocoException("Could not read from file " + path);

    string line;
    char dummy;
    


    //Gates
    while (getline(in, line))
    {
        if(line == "")
            break;

        std::istringstream iss(line);

        Gate* g = new Gate();
        g->fromString(iss);

        if(g->type == MUX)
        {
            Multiplexer* m = new Multiplexer(g);
            m->fromString(iss);
            delete g;
            g = m;
        } else if (Gate::luts.find(g->type) != Gate::luts.end())
        {
          Lut* l = new Lut(g);
          l->fromString(iss);
          delete g;
          g = l;
        }
        
        addGate(g);
    }

    //Predecessors
    while (getline(in, line))
    {
        if(line == "")
            break;

        std::istringstream iss(line);

        iss >> dummy;
        uint32_t nodeId;
        iss >> nodeId;

        vector<Gate*> preds;
        iss >> dummy; 
        
        while(dummy != '}')
        {
            
            uint32_t predId;
            iss >> predId;
            preds.push_back(gates.at(predId));
            
            iss >> dummy;

        }


        predecessors.emplace(nodeId, preds);
    }

    //Successors
    while (getline(in, line))
    {
        if(line == "")
            break;

        std::istringstream iss(line);

        iss >> dummy;
        uint32_t nodeId;
        iss >> nodeId;

        vector<Gate*> succs;
        iss >> dummy; 
        
        while(dummy != '}')
        {
            
            uint32_t succId;
            iss >> succId;
            succs.push_back(gates.at(succId));
            
            iss >> dummy;

        }


        successors.emplace(nodeId, succs);
    }

    in.close();

}

Circuit::~Circuit()
{
    for(auto it = gates.begin(); it != gates.end(); it++)
    {
        delete it->second;
    }

}

void Circuit::generateLabelFile(string& path)
{   
    ofstream of(path);
    if(of.good() == false)
        throw CocoException("Could not write to file" + path);
    for(auto it = gates.begin(); it != gates.end(); it++)
    {
        Gate* g = it->second;
        
        if(g->type == INPUT_PORT)
        {
            of << g->id << ";" << g->name << ";unimportant" << endl;
        }
    }
    of.close();
}

//ToDo: fertig coden
uint32_t Circuit::findMaxCycles()
{
    std::vector<uint32_t> inputs;
    std::vector<uint32_t> used;
    uint32_t max_cycles = 0;
    for (auto g: gates)
    {
        if (g.second->type == INPUT_PORT)
            inputs.push_back(g.first);
    }

    for (auto gid : inputs)
    {
       recFinder(max_cycles, 0, gid, used);
    }
   
    return max_cycles + 1;
}

void Circuit::recFinder(uint32_t& max, uint32_t current, uint32_t id, std::vector<uint32_t> used)
{
    

    auto succs = successors.at(id);
    for (auto s : succs)
    {
        if (std::find(used.begin(), used.end(), s->id) != used.end())
        {
            continue;
        }   

        //used.push_back(s->id);
       
        auto tmpCurrent = current;
        if (s->type == FDRE || s->type == FDCE)
        {

            tmpCurrent = current + 1;
            
            if (max < tmpCurrent)
                max = tmpCurrent;   
            
        } 

        recFinder(max, tmpCurrent, s->id, used);
    }

    
}

uint32_t Circuit::getNextAvailableId()
{
   if (orderedIDs.empty())
    return 0;
   else
    return *(orderedIDs.begin()) + 1;

}