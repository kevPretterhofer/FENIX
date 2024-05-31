#include "Solver.h"
#include <iostream>
#include <cassert>
#include <fstream>

Solver::Solver(bool store_clauses, bool store_comments, string name, bool log)
{

    cadical = new CaDiCaL::Solver();
    var = 1;
    num_clauses = 0;
    this->store_clauses = store_clauses;
    this->store_comments = store_comments;
    this->name = name;
    trace = fopen(this->name.c_str(), "w");
    if(log)
        cadical -> set_long_option ("--log");


}

/*
Solver::Solver(const Solver & cpy, string name, bool log) 
{ 

    cadical = new CaDiCaL::Solver();
    if(log)
        cadical -> set_long_option ("--log");
    
    trace = fopen(name.c_str(), "w");
    cadical->trace_api_calls(trace);
    cpy.cadical->copy(*cadical);
    var = cpy.var;
    num_clauses = cpy.num_clauses;
    store_clauses = cpy.store_clauses;
    store_comments = cpy.store_comments;
    dbg_clauses = cpy.dbg_clauses;
    dbg_comments = cpy.dbg_comments;
}*/




Solver::~Solver()
{
    fclose(trace);
    //delete cadical;
}

int Solver::addVars(int num)
{
    int old_var = var;
    var += num;
    return old_var;   
}

vector<int> Solver::getVars(int num)
{
    vector<int> vars;
    int var = addVars(num);
    for(int i = 0; i < var+num; i++)
      vars.push_back(var+i);
    return vars;
}

int Solver::getVar()
{
    return addVars(1);
}


void Solver::addClause(vector<int>& clause)
{
    if(store_clauses)
      dbg_clauses.push_back(clause);
   
    num_clauses++;

    for(int literal : clause)
      cadical->add(literal);
    cadical->add(0);
}



void Solver::addClauses(vector<vector<int>>& clauses)
{
    for(vector<int>& clause: clauses)
        addClause(clause);
}

int Solver::XorList(vector<int>& ls)
{
    assert(ls.size() >= 1);
    int step = 5;
    vector<int> tmp_ls(ls);
    vector<vector<int>> clauses;

    while(tmp_ls.size() != 1)
    {
        vector<int> new_ls;
        for(size_t start = 0; start < tmp_ls.size(); start += step)
        {
            size_t upper_bound = ((start+step) >= tmp_ls.size()) ? tmp_ls.size() : (start+step);
            vector<int> tmp_ls_2(tmp_ls.begin() + start, tmp_ls.begin() + upper_bound);

    
            if(tmp_ls_2.size() == 1)
            {
                new_ls.push_back(tmp_ls_2[0]);
                break;
            }
            int tmp_var = getVar();

            MakeXorBoolExp(tmp_ls_2, tmp_var, clauses);
            new_ls.push_back(tmp_var);
        }
        tmp_ls = new_ls;
    }
    addClauses(clauses);
    return tmp_ls[0];
}

void Solver::AtMostKOfN(int k, vector<int> xs)
{   
    size_t n = xs.size();
    if(k >= n)
        return;
    vector<vector<int>> clauses;

    vector<vector<int>> ss;
    for(int i = 0; i < n; i++)
    {
        vector<int> k_vars = getVars(k);
        
        ss.push_back(k_vars);

    }

    clauses.push_back(vector<int>{-xs[0], ss[0][0]});

    for(int j = 1; j < k; j++)
        clauses.push_back(vector<int>{-ss[0][j]});
    
    for(int i = 1; i < n-1; i++)
    {
        clauses.push_back(vector<int>{-xs[i], ss[i][0]});
        clauses.push_back(vector<int>{-ss[i - 1][0], ss[i][0]});
        for(int j = 1; j < k; j++)
        {
            clauses.push_back(vector<int>{-xs[i], -ss[i - 1][j - 1], ss[i][j]});
            clauses.push_back(vector<int>{-ss[i - 1][j], ss[i][j]});
        }
        clauses.push_back(vector<int>{-xs[i], -ss[i - 1][k - 1]});
    }
    clauses.push_back(vector<int>{-xs[n - 1], -ss[n - 2][k - 1]});
    addComment("at most k of n");
    addClauses(clauses);

}

void Solver::MakeXorBoolExp(vector<int> ls, int res, vector<vector<int>>& clauses)
{
    auto parity = [=] (int i) -> int {
        int p = 0;
        while(i != 0)
        {
            p += (i&1);
            i >>= 1;
        }
        return p % 2;
    };

    assert(ls.size() >= 2);
    assert(res > 0);

    int upper_bound = 1 << ls.size(); // this equals 2**len(ls)
    for(int i = 0; i < upper_bound; i++)
    {
        vector<int> clause;
        clause.push_back(parity(i) ? res : -res);
        for(size_t j = 0; j < ls.size(); j++)
        {
            clause.push_back(((1 << j) & i) ? -ls[j] : ls[j]);
        }
        clauses.push_back(clause);
    }
}


vector<vector<int>> Solver::MakeXorBool(int a, int b, int c)
{
    vector<vector<int>> clauses;
    clauses.push_back(vector<int>{-a,-b,-c});
    clauses.push_back(vector<int>{+a, +b, -c});
    clauses.push_back(vector<int>{+a, -b, +c});
    clauses.push_back(vector<int>{-a, +b, +c});
    return clauses;
}

//TODO optimize: combine with add clauses
vector<vector<int>> Solver::MakeAndBool(vector<int>& inputs, int output)
{
    vector<vector<int>> clauses;
    vector<int> clause;
    for(int& x : inputs)
        clause.push_back(-x);
    clause.push_back(output);
    clauses.push_back(clause);
    
    for(int& x : inputs)
        clauses.push_back(vector<int>{x, -output});
    
    return clauses;
}



map<int, int> Solver::getModel()
{
    map<int,int> model;

    int maxvar = cadical->vars();
    if(maxvar)
    {
        for(int i = 1; i <= maxvar; ++i)
        {
            int literal = cadical->val(i) > 0 ? i : -i;
            model.insert(pair<int,int>(i-1, literal));
        }
    }
    return model;
}

int Solver::solve(vector<int> assumptions)
{
    for(int& assumption : assumptions)
        cadical->assume(assumption);   
    
    int res = cadical->solve() == 10 ? 1 : 0;
    return res;
}


void Solver::addComment(string text)
{
    //TODO: does this work? maybe check if num_clauses already there.
    dbg_comments[num_clauses].push_back(text); 
}

void Solver::dbgPrint()
{
    ofstream formula;
    formula.open("formula_cpp.cnf");
    if(store_clauses)
        formula << "p cnf " << (var-1) << " " << num_clauses << endl;
    for(int idx = 0; idx < num_clauses; idx++)
    {
        if(store_comments) {
            if(dbg_comments.find(idx) != dbg_comments.end())
                for(string comment : dbg_comments[idx])
                    formula << "c " << comment << endl;
        }
        if(store_clauses) {
                for(int& literal : dbg_clauses[idx])
                    formula << literal << " ";
                formula << "0" << endl;
            
        }
    }

    formula.close();
}