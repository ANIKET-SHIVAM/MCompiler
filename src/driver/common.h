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

// For Extractor especially
#include "rose.h"
#include "ASTtools.hh"

#include "csv.h"

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

extern string mCompiler_binary_name;
extern string mCompiler_data_folder;
extern string mCompiler_data_folder_path;
extern string mCompiler_curr_dir_path;

extern bool auto_parallel_enabled;

/* Extractor passes to Profiler */
extern set<string> files_to_compile;

extern int mCompiler_profiler_runs;
extern string mCompiler_profile_data_csv;

extern map< compiler_type, bool > compiler_candidate;
extern map< compiler_type, vector<string> > optimization_flags;
/* vector format: [ CC, -O?, ... ] */
extern map< compiler_type, vector<string> > linker_flags;

/* Profiler to Synthesizer */
extern set<string> hotspot_name_set;
/* map< compiler_string, base file obj location > */
extern map<string, string> base_obj_path;
/* map< pair<hotspot_name, compiler_string>, timing/obj_location > */
extern map< pair< string, string >, vector<double>* > profiler_hotspot_data;
extern map< pair< string, string >, string > profiler_hotspot_obj_path;

string executeCommand( string cmd_str );
void addOptimizationFlags();
void addLinkerFlags();
bool isDirExist( const string &path );
bool isEndingWith( string const &fullString, string const &ending );
bool isEndingWithCompilerName( string const &fullString );
double getVectorMean( vector<double>* dataVec );
double getVectorStdev( vector<double>* dataVec );
double getVectorMedian( vector<double>* dataVec );
#endif
