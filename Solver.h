#ifndef SOLVER_H
#define SOLVER_H

#include "cadical.hpp"

#include <vector>
#include <map>

using namespace std;

class Solver {
    public:
        Solver(bool store_clauses = true, bool store_comments = false, string name = "default", bool log=false);
        //Solver( const Solver & cpy, string name, bool log= false);
        ~Solver();
        vector<int> getVars(int num);
        int getVar();
        void addComment(string text);
        void addClause(vector<int>& clause);
        void addClauses(vector<vector<int>>& clauses);
        int XorList(vector<int>& ls);
        void AtMostKOfN(int k, vector<int> xs);
        void MakeXorBoolExp(vector<int> ls, int res, vector<vector<int>>& clauses);
        vector<vector<int>> MakeXorBool(int a, int b, int c);
        vector<vector<int>> MakeAndBool(vector<int>& inputs, int output);
        map<int, int> getModel();
        int solve(vector<int> assumptions);
        void dbgPrint();

    private:
        CaDiCaL::Solver* cadical; 
        string name;
        int var;
        vector<vector<int>> dbg_clauses;
        map<int,vector<string>> dbg_comments;
        int num_clauses;
        bool store_clauses;
        bool store_comments;
        FILE* trace;

        int addVars(int num);


        

};

#endif