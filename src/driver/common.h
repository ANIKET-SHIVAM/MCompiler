#ifndef COMMON_H_
#define COMMON_H_

#include <cstdio>
#include <string>
#include <iostream>
#include <fstream>
#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>
#include <regex>
#include <dirent.h>

using namespace std;

typedef enum{
	compiler_ICC   = 0,
	compiler_GCC   = 1,
	compiler_LLVM  = 2,
	compiler_PGI   = 3,
	compiler_Pluto = 4,
	compiler_Polly = 5
}compiler_type; 

extern string space_str;
extern string forward_slash_str;
extern string minus_c_str;
extern string minus_o_str;
extern string dot_o_str;
extern string base_str;
extern string icc_str;
extern string gcc_str;
extern string llvm_str;
extern string pgi_str;
extern string pluto_str;
extern string polly_str;

extern map< compiler_type, bool > compiler_candidate;
extern map< compiler_type, vector<string> > optimization_flags;
/* vector format: [ CC, -O?, ... ] */
extern map< compiler_type, vector<string> > linker_flags;

string executeCommand( string cmd_str );
void addOptimizationFlags();
void addLinkerFlags();
#endif
