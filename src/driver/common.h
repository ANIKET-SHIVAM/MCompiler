#ifndef COMMON_H_
#define COMMON_H_

#ifdef OS_CENTOS
#include <boost/preprocessor/stringize.hpp>
#endif
#include <cctype>
#include <cstdio>
#include <ctime>
#include <dirent.h>
#include <fstream>
#include <iostream>
#include <map>
#include <regex>
#include <set>
#include <string>
#include <utility>
#include <vector>
#include <numeric>
#include <functional>

// For Extractor especially
// clang-format off
#include "rose.h"
#include "ASTtools.hh"
#include "constantFolding.h"
// clang-format on

#include "csv.h"

using namespace std;

typedef enum {
  src_lang_C       = 0,
  src_lang_CPP     = 1,
  src_lang_FORTRAN = 2,
} src_lang;

typedef enum {
  compiler_ICC   = 0,
  compiler_GCC   = 1,
  compiler_LLVM  = 2,
  compiler_PGI   = 3,
  compiler_Pluto = 4,
  compiler_Polly = 5
} compiler_type;

typedef enum {
  mode_TO_OBJECT   = 0, // -c
  mode_FROM_OBJECT = 1, // .o only
  mode_COMPLEX     = 2, // both src and obj in CL
  mode_FULL_PASS   = 3  // full MCompiler pass
} compiler_mode;

typedef enum {
  EXTRACT,
  PROFILE,
  SYNTHESIZE,
  ADV_PROFILE,
  PREDICT,
  ENERGY,
  TEST,
  REPORT,
  PARALLEL,
  AUTO_PARALLEL,
  EXTRACTKERNEL,
  RESTRICT,
  STATICANALYSIS,
  PREFETCH,
  COMPILE_TO_OBJECT,
  PROFILE_COUNT,
  INPUT_PROFILE,
  FILE_PREDICT,
  OUTPUT_BINARY,
  OUTPUT_OBJECT,
  HASWELL,
  KNL,
  SKYLAKE,
  C99,
  JOBS,
  INCLUDE_PATH,
  LINKER_PATH,
  LIBS_PATH,
  MACRO_DEFS,
  MC_DEBUG,
  MC_INFO,
  NOVEC,
  NOPOLYHEDRAL,
  HELP,
  UNKNOWN
} MCompiler_options;

extern int profile_binary_err_cnt;
extern string space_str;
extern string forward_slash_str;
extern string minus_c_str;
extern string minus_o_str;
extern string dot_o_str;
extern string base_str;
extern string icc_str;
extern string gcc_str;
extern string llvm_str;
//extern string pgi_str;
extern string pluto_str;
extern string XplutoX_str;
extern string polly_str;
extern string test_str;
extern string baseline_compiler_str;
extern string MCompiler_skiplooppragma_str;
extern string MCompiler_skipplutopragma_str;
extern string MCompiler_advprofiler_str;
extern string MCompiler_energyprofiler_str;

extern compiler_mode MCompiler_mode;

extern string MCompiler_timing_keyword;

extern string MCompiler_unique_str;

extern string printTimingVarFuncName;
extern string likwidInitAPI;
extern string likwidCloseAPI;
extern string loopTimingVarSuffix;
extern string MCompiler_profile_file_tag;
extern string MCompiler_header_name;
extern string MCompiler_header_code_name;
extern string MCompiler_binary_path;
extern string MCompiler_binary_name;
extern string MCompiler_data_folder;
extern string MCompiler_data_folder_path;
extern string MCompiler_curr_dir_path;
//extern string pgi_lib_path;
extern string vtune_path;
extern string likwid_path;
extern string MCompiler_trained_model_path;
extern string MCompiler_trained_model_features_path;
extern string MCompiler_trained_autopar_model_path;
extern string MCompiler_trained_autopar_model_features_path;
extern string MCompiler_hotspotlist_file;
extern string MCompiler_baselist_file;
extern string MCompiler_adv_profile_dir;
#ifdef OS_CENTOS
extern string rose_path;
#endif

/* For the extractor */
extern vector<string> MCompiler_input_file;
extern map<string, string> MCompiler_input_file_relpathcode;

extern vector<string> MCompiler_object_file;

/* Extractor passes to Profiler */
extern set<string> files_to_compile;
/* Extractor passes to Profiler to skip Pluto */
extern set<string> files_skip_pluto;
/* Profiler to Energy Profiler */
extern set<string> MCompiler_header_obj;
extern set<string> MCompiler_files_to_link;
extern set<string> *pluto_fail_hotspots;
/* Synthesizer to Advanced Profiler */
extern map<string, string> hotspot_best_compiler_map;
/* Extractor to Predictor */
extern set<string> hotspot_extractor_to_predictor_set;
/* Predictor to Synthesizer */
extern map<string, compiler_type> predicted_compiler;

extern int MCompiler_profiler_runs;
extern string MCompiler_profile_data_csv;
extern string MCompiler_adv_profile_data_csv;
extern int MCompiler_energy_profiler_runs;
extern string MCompiler_energy_profile_data_csv;
extern string MCompiler_profiler_input;
extern string MCompiler_macro_defs;
extern string MCompiler_include_path;
extern string MCompiler_link_path;
extern string MCompiler_libraries;
extern string MCompiler_extraPreSrcFlags;
extern string MCompiler_extraPostSrcFlags;

extern map<MCompiler_options, bool> MCompiler_enabled_options;
extern map<compiler_type, bool> compiler_candidate;
extern map<compiler_type, string> compiler_keyword;
extern map<compiler_type, vector<string>> optimization_flags;
/* vector format: [ CC, -O?, ... ] */
extern map<compiler_type, vector<string>> linker_flags;
/* For dynamic libs to be linked the end of CL like -lm */
extern map<compiler_type, vector<string>> post_linker_flags;
/* For hotspot obj(with path) collection from baseline compiler that were not
 * executed while profiling */
extern set<string> hotspots_skipped_profiling;

/* Profiler to Synthesizer */
extern set<string> hotspot_name_set;
/* map< compiler_string, base file obj location > */
extern map<string, vector<string> *> base_obj_path;
/* map< pair<hotspot_name, compiler_string>, timing/obj_location > */
extern map<pair<string, string>, vector<double> *> profiler_hotspot_data;
extern map<pair<string, string>, string> profiler_hotspot_obj_path;

string executeCommand(string cmd_str);
void addOptimizationFlags();
void addLinkerFlags();
void addPostLinkerFlags();
bool isDirExist(const string &path);
bool isFileExist(const string &filename);
bool isFileRecent(const string &filename);
bool isEndingWith(string const &fullString, string const &ending);
bool isEndingWithCompilerName(string const &fullString);
double getVectorMean(vector<double> *dataVec);
double getVectorStdev(vector<double> *dataVec);
double getVectorMedian(vector<double> *dataVec);
void genRandomStr(string &str, const int len);
void stringReplaceAll(string& str, const string& from, const string& to);
string getAbsolutePath(string const &fullString);
#endif
