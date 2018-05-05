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
#include <cctype>
#include <dirent.h>

// For Extractor especially
#include "rose.h"
#include "ASTtools.hh"

#include "csv.h"

using namespace std;

typedef enum{
	src_lang_C       = 0,
	src_lang_CPP     = 1,
	src_lang_FORTRAN = 2,
}src_lang;

typedef enum{
	compiler_ICC   = 0,
	compiler_GCC   = 1,
	compiler_LLVM  = 2,
	compiler_PGI   = 3,
	compiler_Pluto = 4,
	compiler_Polly = 5
}compiler_type; 

typedef enum{
	mode_TO_OBJECT   = 0, // -c
	mode_FROM_OBJECT = 1, // .o only
	mode_COMPLEX     = 2, // both src and obj in CL
	mode_FULL_PASS   = 3  // full mCompiler pass
}compiler_mode;

typedef enum{ EXTRACT, PROFILE, SYNTHESIZE, TEST, REPORT, PARALLEL, AUTO_PARALLEL, PREFETCH, COMPILE_TO_OBJECT,
			  PROFILE_COUNT, INPUT_PROFILE, ADV_PROFILE, OUTPUT_BINARY, OUTPUT_OBJECT,
			  INCLUDE_PATH, LINKER_PATH, LIBS_PATH, MACRO_DEFS, MC_DEBUG, MC_INFO,
			  HELP, UNKNOWN 
			} mCompiler_options;

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
extern string test_str;
extern string baseline_compiler_str;

extern compiler_mode mCompiler_mode;

extern string mCompiler_timing_keyword;

extern string mCompiler_unique_str;

extern string printTimingVarFuncName; 
extern string loopTimingVarSuffix;
extern string mCompiler_profile_file_tag;
extern string mCompiler_header_name;
extern string mCompiler_header_code_name;
extern string mCompiler_binary_path;
extern string mCompiler_binary_name;
extern string mCompiler_data_folder;
extern string mCompiler_data_folder_path;
extern string mCompiler_curr_dir_path;
extern string pgi_lib_path;
extern string vtune_path;

/* For the extractor */
extern vector<string> mCompiler_input_file;

extern vector<string> mCompiler_object_file;

/* Extractor passes to Profiler */
extern set<string> files_to_compile;
/* Synthesizer to Advanced Profiler */
extern map<string,string> hotspot_best_compiler_map;

extern int mCompiler_profiler_runs;
extern string mCompiler_profile_data_csv;
extern string mCompiler_adv_profile_data_csv;
extern string mCompiler_profiler_input;
extern string mCompiler_macro_defs;
extern string mCompiler_include_path;
extern string mCompiler_link_path;
extern string mCompiler_libraries;
extern string mCompiler_extraPreSrcFlags;
extern string mCompiler_extraPostSrcFlags;

extern map< mCompiler_options, bool > mCompiler_enabled_options;
extern map< compiler_type, bool > compiler_candidate;
extern map< compiler_type, string > compiler_keyword;
extern map< compiler_type, vector<string> > optimization_flags;
/* vector format: [ CC, -O?, ... ] */
extern map< compiler_type, vector<string> > linker_flags;
/* For dynamic libs to be linked the end of CL like -lm */
extern map< compiler_type, vector<string> > post_linker_flags;
/* For hotspot obj(with path) collection from baseline compiler that were not executed while profiling */
extern set<string> hotspots_skipped_profiling;

/* Profiler to Synthesizer */
extern set<string> hotspot_name_set;
/* map< compiler_string, base file obj location > */
extern map<string, vector<string>* > base_obj_path;
/* map< pair<hotspot_name, compiler_string>, timing/obj_location > */
extern map< pair< string, string >, vector<double>* > profiler_hotspot_data;
extern map< pair< string, string >, string > profiler_hotspot_obj_path;

string executeCommand( string cmd_str );
void addOptimizationFlags();
void addLinkerFlags();
void addPostLinkerFlags();
bool isDirExist( const string &path );
bool isFileExist( const string &filename );
bool isEndingWith( string const &fullString, string const &ending );
bool isEndingWithCompilerName( string const &fullString );
double getVectorMean( vector<double>* dataVec );
double getVectorStdev( vector<double>* dataVec );
double getVectorMedian( vector<double>* dataVec );
void genRandomStr( string &str, const int len );
string getAbsolutePath( string const &fullString );
#endif
