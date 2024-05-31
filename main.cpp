#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <fstream>
#include <sstream>
#include <chrono>   
#include <filesystem>

#include "helper.h"
#include "VerificationContext.h"
#include "CircuitParser.h"
#include "VCDStorage.h"
#include "Z3Checker.h"
#include "Z3CheckerCA.h"

using namespace std;

void execCommand(string,VerificationContext*);
void parseScript(const char*,VerificationContext*);
void printShell(VerificationContext*);

void parseScript(const char* commandFilePath, VerificationContext* context)
{

    ifstream commandFile(commandFilePath);
    checkFileExists(&commandFile);
    std::string commandLine;
    while (getline(commandFile, commandLine))
    {
        execCommand(commandLine, context);
    }
    commandFile.close();
}

void execCommand(string commandLine, VerificationContext* context)
{   
    std::istringstream iss(commandLine);
    string command, argument;
    (iss >> command >> argument);


    if(commandLine == "exit")
    {
        exit(EXIT_SUCCESS);
    }
    else if (command.length() == 0 || command.at(0) == '#')
        ;   
    else if (command == "parse_design")
    {
        CircuitParser cp(argument.c_str());
        Circuit* circuit = cp.parse(context->splitLuts);
        string path = "circuit.data";
        circuit->writeToFile(path);
        context->setCircuit(circuit);
        path = "labels.txt"; 
        circuit->generateLabelFile(path);
    }
    else if (command == "load_design")
    {
        Circuit* circuit = new Circuit();
        circuit->readFromFile(argument);
        circuit->sortTopological();
        context->setCircuit(circuit);     
        
        //Check if import worked
        string path = "testCircuit.txt"; 
        circuit->writeToFile(path);

    }
    else if (command == "show_design")
    {
        context->getCircuit()->generateDot(argument);
    }
    else if (command == "read_labels")
    {
        /* Label format: 
            random
            or share (secret id).(share id)
            share 1.1
            share 1.1
            share 2.1
            share 2.2
            share 4.2
            share 4.1
        */
       context->parseLabelFile(argument);
    }
    else if (command == "set_order")
        context->setOrder(argument);

    else if (command == "set_cycles")
        context->setCycles(argument);

    else if (command == "set_mode")
        context->setMode(argument);

    else if (command == "build_formula")
    {
        Z3CheckerCA* checker = new Z3CheckerCA(context);
        context->setChecker(checker);
    }
    else if (command == "build_formula_timer")
    {
        
        auto start = chrono::steady_clock::now();
        
        Z3CheckerCA* checker = new Z3CheckerCA(context);
        context->setChecker(checker);
        
        auto end = chrono::steady_clock::now();
       
        cout << "Build formula in milliseconds: "
        << chrono::duration_cast<chrono::milliseconds>(end - start).count()
        << " ms" << endl;

    }
    else if (command == "check")
    {
        //auto checker = context->getChecker();
        auto checker = context->getCheckerCA();
        checker->check();
    }
    else if (command == "check_timer")
    {
        //auto checker = context->getChecker();
        auto start = chrono::steady_clock::now();

        auto checker = context->getCheckerCA();
        checker->check();

        auto end = chrono::steady_clock::now();
       
        cout << "Check in milliseconds: "
        << chrono::duration_cast<chrono::milliseconds>(end - start).count()
        << " ms" << endl;
    }
    else if (command == "destroyChecker")
    {
        if (context->z3Checker)
            delete context->z3Checker;   
    }
    else if (command == "count_cycles")
    {
        auto curCirc = context->getCircuit();
        std::cout << "Number of Cycles: " << curCirc->findMaxCycles() << std::endl;
    }
    else if (command == "debugstable" || command == "debugtrans" || command == "debugstableCA" || command == "debugtransCA")
    {
        VerificationContext* debugContext = new VerificationContext();
        string circPath = "domand.data";
        string labelPath = "domandLabels.txt";
        uint32_t cycles = 1;
        if (argument == "1") //DOM AND Gate
        {
            circPath = "domand.data";
            labelPath = "domandLabels.txt";
            debugContext->setOrder("1");
            cycles = 2;
        } else if (argument == "2") //A XOR B
        {
            circPath = "xorcircuit.data";
            labelPath = "xorlabels.txt";
            debugContext->setOrder("1");
        } else if (argument == "3") //A XOR B XOR C
        {
            circPath = "doubleXorCircuit.data";
            labelPath = "doubleXorLabels.txt";
            debugContext->setOrder("1");
        } else if (argument == "4") //TRICHINA AND GATE
        {
            circPath = "trichina.data";
            labelPath = "trichinaLabels.txt";
            debugContext->setOrder("1");
            cycles = 2;
        } else if (argument == "5") //TRICHINA AND GATE w. KEEP
        {
            circPath = "trichkeepcircuit.data";
            labelPath = "trichkeeplabels.txt";
            debugContext->setOrder("1");
        }  else if (argument == "6") //keccak sbox
        {
            circPath = "keccakcircuit.data";
            labelPath = "keccaklabels.txt";
            debugContext->setOrder("1");
            cycles = 2;
        } else if (argument == "7") //TI AND
        {
            circPath = "ticircuit.data";
            labelPath = "tilabels.txt";
            debugContext->setOrder("1");
        } else if (argument == "8") //TI Skinny SBOX 
        {
            circPath = "skinnycircuit.data";
            labelPath = "skinnylabels.txt";
            debugContext->setOrder("1");
        }  else if (argument == "9") //Further XorTest
        {
            circPath = "furtherxor.data";
            labelPath = "furtherxorlabels.txt";
            debugContext->setOrder("1");
        }else if (argument == "10") //Other Further XorTest
        {
            circPath = "othercircuit.data";
            labelPath = "otherlabels.txt";
            debugContext->setOrder("1");
        }else if (argument == "11") //DebugTeest
        {
            circPath = "presentcircuit.data";
            labelPath = "presentlabels.txt";
            debugContext->setOrder("1");
        }
        else if (argument == "666") //AES lol
        {
            circPath = "aessbox1stcircuit.data";
            labelPath = "aessbox1stlabels.txt";
            debugContext->setOrder("1");
        }
        else if (argument == "123") //WorkingAes
        {
            circPath = "aessboxconstwecircuit.data";
            labelPath = "aessboxconstwelabels.txt";
            debugContext->setOrder("1");
            cycles = 5;
        }
        else if (argument == "321") //WorkingAesRebecca
        {
            circPath = "aesrebeccasboxcircuit.data";
            labelPath = "aesrebeccasboxlabels.txt";
            debugContext->setOrder("1");
        }
        else if (argument == "420") //Ascon kind of
        {
            circPath = "asconRound1circuit.data";
            //labelPath = "new_labels_fews.txt";
            labelPath = "asconRound1labels.txt";
            debugContext->setOrder("1");
            cycles = 3;
        } 
        else if (argument == "777") //Test regarding cycle awareness
        {
            circPath = "catcircuit.data";
            labelPath = "catlabels.txt";
            debugContext->setOrder("1");
            cycles = 3;
        }



        //ToDo: Remove
        //debugContext->setOrder("2");

        Circuit* circuit = new Circuit();
        circuit->readFromFile(circPath);
        circuit->sortTopological();
        debugContext->setCircuit(circuit);  

        debugContext->parseLabelFile(labelPath);
        
        
        
        if (command == "debugstable" || command == "debugstableCA")
            debugContext->setMode("stable");
        else
            debugContext->setMode("transient");

        auto start = chrono::steady_clock::now();
        
        if (command == "debugstable" || command == "debugtrans")
        {
            Z3Checker checker(debugContext);
            checker.check();
        }
        else
        {
            Z3CheckerCA checker(debugContext, cycles);
            checker.check();
        }

        auto end = chrono::steady_clock::now();
        cout << "Time for verification in milliseconds: "
        << chrono::duration_cast<chrono::milliseconds>(end - start).count()
        << " ms" << endl;
 
        cout << "Time for verification in seconds: "
        << chrono::duration_cast<chrono::seconds>(end - start).count()
        << " sec" << endl;

        delete debugContext;
 
    }
    else if (command == "splitlut6")
    {
        if (argument == "0")
            context->splitLuts = false;
        else if (argument == "1")
            context->splitLuts = true;
        else
            cout << "Error" << endl;
    }
    else if (command == "benchmark")
    {
        /*
            Exception: 031 (DOM AND, Third order, Transient but only ONE bit)

            1 - DOM AND (1, 2, 3 - order) (0 stable, 1 Transient) // 8 Bit
            2 - TI AND (1, 2 , 3 - order) (0 stable, 1 Transient) // 8 Bit
            3 - ISW AND (1, 2, 3 - order) (0 stable, 1 Transient) // 8 Bit
        */

        //Get path relative to binary
        if (argument.length() != 3)
        {
            std::cout << "Argument must have 3 characters: Design|Order|Mode" << std::endl;
            return;
        }
        size_t binaryNameLength = 5;
        string binpath = std::filesystem::canonical("/proc/self/exe");
        binpath = binpath.substr(0, binpath.length() - binaryNameLength);
        string benchpath = binpath.append("../data/finalBenchmarks/");
        
        //Subtract 48 - because ascii
        int design = int(argument[0]) - 48;
        int order = int(argument[1]) - 48;
        int mode = int(argument[2]) - 48;

        string curBenchPath;
        size_t cycles = 1;
        
        //Settings
        benchmarkHelper(cycles, order, design, curBenchPath, benchpath);
        
        std::cout << curBenchPath << std::endl;
        VerificationContext* ctx = new VerificationContext();
        Circuit* circuit = new Circuit();
        string circPath = curBenchPath + "circuit.data";
        string labelPath = curBenchPath + "labels.txt";
        
        circuit->readFromFile(circPath);
        circuit->sortTopological();
        ctx->setCircuit(circuit);
        ctx->parseLabelFile(labelPath);
        ctx->setOrder(std::to_string(order)); //lol
        ctx->setCycles(std::to_string(cycles)); //lol

        if (mode == 0)
            ctx->setMode("stable");
        else if(mode == 1)
            ctx->setMode("transient");

        auto creationStart = chrono::steady_clock::now();
        Z3CheckerCA checker(ctx, cycles);
        auto creationEnd = chrono::steady_clock::now();
        checker.check();
        auto checkingEnd = chrono::steady_clock::now();
        
        auto creationTimems = chrono::duration_cast<chrono::milliseconds>(creationEnd - creationStart).count();
        auto verificationTimems = chrono::duration_cast<chrono::milliseconds>(checkingEnd - creationEnd).count();
        auto overallTimems = creationTimems + verificationTimems;

        auto creationTimes = chrono::duration_cast<chrono::seconds>(creationEnd - creationStart).count();
        auto verificationTimes = chrono::duration_cast<chrono::seconds>(checkingEnd - creationEnd).count();
        auto overallTimes = creationTimes + verificationTimes;

        std::cout << "------\nResults for specified design, for " << cycles << " cycles, and " << (mode == 0 ? "stable" : "transient") << " mode:" << std::endl;
        std::cout << "Gates: " << circuit->gates.size() <<  " / " << circuit->sorted.size() << std::endl;

        std::cout << "Time in MS:" << std::endl;
        std::cout << "Creation Time: " << creationTimems << ", Verification Time: " << verificationTimems << ", Overall Time: " << overallTimems << std::endl;

        std::cout << "Time in S:" << std::endl;
        std::cout << "Creation Time: " << creationTimes << ", Verification Time: " << verificationTimes << ", Overall Time: " << overallTimes << std::endl;


    }
    else if (command == "help") 
    {
        //ToDo: maybe remove again, however it is comfy during testing
        //If you tend to forget the commands (though they are easy to remember)
        cout << "You can use the following commands: \n";
        cout << "\t exit \t \t \t Exits the program\n" 
                "\t parse_design \t[arg]\t Parses the json file\n"
                "\t load_design \t[arg]\t Loads design \n "
                "\t show_design \t \t Creates a dot file\n "
                "\t read_labels \t[arg] \t Loads the (annotated) label file\n"
                "\t set_order \t[arg]\t Set the verification order \n"
                "\t set_cycles \t[arg]\t Set the number of cycles \n"
                "\t set_mode \t[arg]\t Set mode (stable/transient) \n"
                "\t build_formula \t \t Build a sat solvable formula \n "
                "\t check \t \t \t Check the sat solvable formula" << std::endl;
    }
    else {
        throw CocoException("Unknown command \"" + command + "\"");
    }
}

void printShell(VerificationContext* context)
{
    while(1) {
        string commandLine;
        cout << "FENIXshell> ";
        getline(cin, commandLine);
        cout << endl;
        try
        {
            execCommand(commandLine, context);
        }
        catch(const std::exception& e)
        {
            //For now catch and ignore the CocoException 
            //To avoid restarting the shell if a typo occurs
            std::cerr << e.what() << '\n';
        }
        
     
    }
}


int main(int argc, char *argv[])
{
    static VerificationContext context;
    try {
    if(argc == 1)
    {
        printShell(&context);
    }
    else if(argc == 2)
    {
        parseScript(argv[1], &context);
        printShell(&context);
    }
    else {
        throw CocoException("Too many command line arguments (Expected: None or 1)");
    }
    } catch (std::exception& e) {
        cout << e.what() << endl;
        return -1;
    }
    return 0;
}