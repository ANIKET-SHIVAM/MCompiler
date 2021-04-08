#include "common.h"

map<MCompiler_options, bool> MCompiler_enabled_options;
map<compiler_type, bool> compiler_candidate;
map<compiler_type, vector<string>> optimization_flags;
map<compiler_type, vector<string>> linker_flags;
map<compiler_type, vector<string>> post_linker_flags;

/* Profiler to Synthesizer */
set<string> hotspot_name_set;
/* map< compiler_string, base file obj location > */
map<string, vector<string> *> base_obj_path;
/* map< pair<hotspot_name, compiler_string>, timing/obj_location > */
map<pair<string, string>, vector<double> *> profiler_hotspot_data;
map<pair<string, string>, string> profiler_hotspot_obj_path;
set<string> hotspots_skipped_profiling;

int profile_binary_err_cnt = 0;
string space_str           = " ";
string forward_slash_str   = "/";
string minus_c_str         = "-c";
string minus_o_str         = "-o";
string dot_o_str           = ".o";
string base_str            = "_base";
string icc_str             = "_icc";
string gcc_str             = "_gcc";
string llvm_str            = "_llvm";
//string pgi_str             = "_pgi";
string pluto_str           = "_pluto";
/* Case where PLuTo doesn't recognize the SCoP, so source fed to ICC as it is */
string XplutoX_str                   = "_XplutoX";
string polly_str                     = "_polly";
string test_str                      = "_test";
string MCompiler_skiplooppragma_str  = "skiploop";
string MCompiler_skipplutopragma_str = "skippluto";

map<compiler_type, string> compiler_keyword = {
    {compiler_ICC, icc_str.substr(1, string::npos)},
    {compiler_GCC, gcc_str.substr(1, string::npos)},
    {compiler_LLVM, llvm_str.substr(1, string::npos)},
//    {compiler_PGI, pgi_str.substr(1, string::npos)},
    {compiler_Pluto, pluto_str.substr(1, string::npos)},
    {compiler_Polly, polly_str.substr(1, string::npos)},
};

/* Set baseline compiler to come from CL */
string baseline_compiler_str;

//string pgi_lib_path;

#define XSTR(s) STR(s)
#define STR(s) #s

#ifndef VTUNE_PATH
#define VTUNE_PATH /opt/intel/vtune_profiler/bin64/
#endif
string vtune_path = XSTR(VTUNE_PATH);
string MCompiler_advprofiler_str = vtune_path + forward_slash_str + "vtune";

#ifndef LIKWID_PATH
#define LIKWID_PATH /usr/bin/
#endif
string likwid_path = XSTR(LIKWID_PATH);
string MCompiler_powerprofiler_str = likwid_path + forward_slash_str + "bin" + forward_slash_str+ "likwid-perfctr";

string MCompiler_trained_model_path = "MC_trained_model.yml";
string MCompiler_trained_model_features_path =
    MCompiler_trained_model_path + "_features.txt";
string MCompiler_trained_autopar_model_path = "MC_trained_autopar_model.yml";
string MCompiler_trained_autopar_model_features_path =
    MCompiler_trained_autopar_model_path + "_features.txt";
string MCompiler_hotspotlist_file = "MC_hotspot_list.txt";
string MCompiler_baselist_file    = "MC_base_list.txt";
string MCompiler_adv_profile_dir;
#ifdef OS_CENTOS
#ifdef ROSE_PATH
string rose_path = BOOST_PP_STRINGIZE(ROSE_PATH);
#else
string rose_path = "~/MCompiler/tools/rose_build";
#endif
#endif

/* Mode in which MCompiler is working */
compiler_mode MCompiler_mode = mode_FULL_PASS;

/* Used by extractor to differentiate from other stdout */
string MCompiler_timing_keyword = "_MCompilerInfo:";

/* Each run of MCompiler will have a unique str associated to it */
string MCompiler_unique_str = "";

string printTimingVarFuncName     = "printAccumulatedTimes";
string loopTimingVarSuffix        = "accumulatorTime_";
string MCompiler_profile_file_tag = "_MCProfile_";
string MCompiler_header_name      = "MCompiler.h";
string MCompiler_header_code_name = "MCompiler.c";
string MCompiler_data_folder      = "MCompiler_data";
string MCompiler_data_folder_path;
string MCompiler_curr_dir_path;

/*** Parameter that change based on the CL input ***/
/* For the extractor */
vector<string> MCompiler_input_file;
map<string, string> MCompiler_input_file_relpathcode;
vector<string> MCompiler_object_file;
string MCompiler_binary_path = "";
string MCompiler_binary_name =
    "a_mc.out"; // Default: If CL provided then replaced with that name

/* Extractor passes to Profiler */
set<string> files_to_compile;
set<string> files_skip_pluto;
/* Synthesizer to Advanced Profiler */
map<string, string> hotspot_best_compiler_map;
/* Extractor to Predictor */
set<string> hotspot_extractor_to_predictor_set;
/* Predictor to Synthesizer */
map<string, compiler_type> predicted_compiler;

int MCompiler_profiler_runs =
    3; // Default: If CL provided then replaced with that number
string MCompiler_profile_data_csv       = "profile_data.csv";
string MCompiler_adv_profile_data_csv   = "adv_profile_data.csv";
string MCompiler_power_profile_data_csv = "power_profile_data.csv";
string MCompiler_profiler_input         = "";
string MCompiler_macro_defs             = "";
string MCompiler_include_path           = "";
string MCompiler_link_path              = "";
string MCompiler_libraries              = "";
string MCompiler_extraPreSrcFlags       = "";
string MCompiler_extraPostSrcFlags      = "";

/*** END: Parameter that change based on the CL input ***/

// TODO: Add flags given to driver to following flag list (without or with
// mapping)
// Called inside Profiler
void addOptimizationFlags() {
  vector<string> flag_vec;
  /* ICC */
  flag_vec.clear();
  flag_vec.push_back("icc");
  if (!MCompiler_enabled_options[MC_DEBUG]) {
    flag_vec.push_back("-Ofast -g");
  } else {
    flag_vec.push_back("-O0 -g");
  }
  flag_vec.push_back("-xHost");
  if (MCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-qopenmp");
  if (MCompiler_enabled_options[C99])
    flag_vec.push_back("-std=c99");
  else
    flag_vec.push_back("-std=c11");
  if (MCompiler_enabled_options[PREFETCH])
    flag_vec.push_back("-qopt-prefetch");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("-parallel");
  if (MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("-no-vec");
  flag_vec.push_back(MCompiler_include_path);
  flag_vec.push_back(MCompiler_macro_defs);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  flag_vec.push_back(MCompiler_extraPostSrcFlags);
  optimization_flags[compiler_ICC] = flag_vec;

  /* GCC */
  flag_vec.clear();
  flag_vec.push_back("gcc");
  flag_vec.push_back("-Ofast");
  flag_vec.push_back("-march=native");
  if (MCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-fopenmp");
  if (MCompiler_enabled_options[C99])
    flag_vec.push_back("-std=c99");
  else
    flag_vec.push_back("-std=c11");
  if (MCompiler_enabled_options[PREFETCH])
    flag_vec.push_back("-fprefetch-loop-arrays");
  if (MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("-fno-tree-vectorize");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    ;
  flag_vec.push_back(MCompiler_include_path);
  flag_vec.push_back(MCompiler_macro_defs);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  flag_vec.push_back(MCompiler_extraPostSrcFlags);
  optimization_flags[compiler_GCC] = flag_vec;

  /* LLVM */
  flag_vec.clear();
  flag_vec.push_back("clang");
  flag_vec.push_back("-O3");
  if (MCompiler_enabled_options[KNL])
    flag_vec.push_back("-march=knl");
  else
    flag_vec.push_back("-march=native");
  if (MCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-fopenmp");
  if (MCompiler_enabled_options[C99])
    flag_vec.push_back("-std=c99");
  else
    flag_vec.push_back("-std=c11");
  if (MCompiler_enabled_options[PREFETCH])
    flag_vec.push_back("-loop-data-prefetch");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("-fno-vectorize");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    ;
  flag_vec.push_back(MCompiler_include_path);
  flag_vec.push_back(MCompiler_macro_defs);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  flag_vec.push_back(MCompiler_extraPostSrcFlags);
  optimization_flags[compiler_LLVM] = flag_vec;

  /* PGI */
  flag_vec.clear();
  flag_vec.push_back("pgcc");
  flag_vec.push_back("-fast");
  if (MCompiler_enabled_options[KNL])
    flag_vec.push_back("-tp=knl");
  else if (MCompiler_enabled_options[SKYLAKE])
    flag_vec.push_back("-tp=skylake");
  else if (MCompiler_enabled_options[HASWELL])
    flag_vec.push_back("-tp=haswell");
  flag_vec.push_back("-Mllvm");
  if (MCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-mp");
  if (MCompiler_enabled_options[C99])
    flag_vec.push_back("-c99");
  else
    flag_vec.push_back("-c11");
  if (MCompiler_enabled_options[PREFETCH])
    flag_vec.push_back("-Mprefetch");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("-Mconcur");
  if (MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("-Mnovect");
  flag_vec.push_back(MCompiler_include_path);
  flag_vec.push_back(MCompiler_macro_defs);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  flag_vec.push_back(MCompiler_extraPostSrcFlags);
  optimization_flags[compiler_PGI] = flag_vec;

  /* PLuTo */
  flag_vec.clear();
  /* Tiling and parallel code option are off by default */
  flag_vec.push_back("polycc");
  flag_vec.push_back("--tile");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("--parallel");
  if (MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("--noprevector ");
  optimization_flags[compiler_Pluto] = flag_vec;

  /* Polly */
  flag_vec.clear();
  flag_vec.push_back("clang");
  flag_vec.push_back("-O3");
  flag_vec.push_back("-mllvm -polly");
  if (!MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("-mllvm -polly-vectorizer=stripmine");
  else
    flag_vec.push_back("-mllvm -polly-vectorizer=none");
  if (MCompiler_enabled_options[KNL])
    flag_vec.push_back("-march=knl");
  else
    flag_vec.push_back("-march=native");
  if (MCompiler_enabled_options[PARALLEL])
    flag_vec.push_back("-fopenmp");
  if (MCompiler_enabled_options[C99])
    flag_vec.push_back("-std=c99");
  else
    flag_vec.push_back("-std=c11");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("-mllvm -polly-parallel");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[NOVEC])
    flag_vec.push_back("-fno-vectorize");
  flag_vec.push_back(MCompiler_include_path);
  flag_vec.push_back(MCompiler_macro_defs);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  flag_vec.push_back(MCompiler_extraPostSrcFlags);
  optimization_flags[compiler_Polly] = flag_vec;
}

// Called inside Profiler
void addLinkerFlags() {
  vector<string> flag_vec;
  /* ICC */
  flag_vec.clear();
  flag_vec.push_back("icc");
  flag_vec.push_back("-xHost");
  flag_vec.push_back("-qopenmp");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("-parallel");
  flag_vec.push_back(MCompiler_link_path);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  linker_flags[compiler_ICC] = flag_vec;

  /* GCC */
  flag_vec.clear();
  flag_vec.push_back("gcc");
  flag_vec.push_back("-march=native");
  flag_vec.push_back("-fopenmp");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    ;
  flag_vec.push_back(MCompiler_link_path);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  linker_flags[compiler_GCC] = flag_vec;

  /* LLVM */
  flag_vec.clear();
  flag_vec.push_back("clang");
  if (MCompiler_enabled_options[KNL])
    flag_vec.push_back("-march=knl");
  else
    flag_vec.push_back("-march=native");
  flag_vec.push_back("-fopenmp");
  flag_vec.push_back("-w");
  /* For Polly Parallel */
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("-lgomp");
  flag_vec.push_back(MCompiler_link_path);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  linker_flags[compiler_LLVM] = flag_vec;

  /* PGI */
  flag_vec.clear();
  flag_vec.push_back("pgcc");
  if (MCompiler_enabled_options[KNL])
    flag_vec.push_back("-tp=knl");
  else if (MCompiler_enabled_options[SKYLAKE])
    flag_vec.push_back("-tp=skylake");
  else if (MCompiler_enabled_options[HASWELL])
    flag_vec.push_back("-tp=haswell");
  flag_vec.push_back("-Mllvm");
  flag_vec.push_back("-mp");
  flag_vec.push_back("-w");
  if (MCompiler_enabled_options[AUTO_PARALLEL])
    flag_vec.push_back("-Mconcur");
  flag_vec.push_back(MCompiler_link_path);
  flag_vec.push_back(MCompiler_extraPreSrcFlags);
  linker_flags[compiler_PGI] = flag_vec;
}

/* For flags that go at the end of the CL */
void addPostLinkerFlags() {
  vector<string> flag_vec;
  flag_vec.clear();
  flag_vec.push_back("-lm");
  flag_vec.push_back(MCompiler_libraries);
  flag_vec.push_back(MCompiler_extraPostSrcFlags);
  if (MCompiler_enabled_options[POWER_PROFILE]) {
    flag_vec.push_back("-L" + likwid_path + forward_slash_str + "lib" + space_str + "-llikwid");
  }
  post_linker_flags[compiler_ICC]  = flag_vec;
  post_linker_flags[compiler_GCC]  = flag_vec;
  post_linker_flags[compiler_LLVM] = flag_vec;
  post_linker_flags[compiler_PGI]  = flag_vec;
}

string executeCommand(string cmd_str) {
  // Since, pipe doesn't capture stderr, redirect it to stdout
  cmd_str                  = cmd_str + " 2>&1";
  const char *cmd_char_ptr = cmd_str.c_str();
  array<char, 128> buffer;
  string result;
  if (MCompiler_enabled_options[MC_INFO])
    cout << "Executing command:" << endl << cmd_str << endl;
  shared_ptr<FILE> pipe(popen(cmd_char_ptr, "r"), pclose);

  if (!pipe)
    throw runtime_error("popen() while executing command failed!");

  while (!feof(pipe.get())) {
    if (fgets(buffer.data(), 128, pipe.get()) != NULL)
      result += buffer.data();
  }
  if (MCompiler_enabled_options[MC_INFO]) {
    if (!result.empty()) {
      cout << "Result of the previous command:" << endl << result << endl;
      // if( result.find("error") == string::npos )
      //	exit(EXIT_FAILURE);
    }
  }
  return result;
}

bool isDirExist(const string &path) {
  struct stat info;
  if (stat(path.c_str(), &info) != 0)
    return false;
  else if (info.st_mode & S_IFDIR)
    return true;
  else
    return false;
}

bool isFileExist(const string &filename) {
  struct stat info;
  return (stat(filename.c_str(), &info) == 0);
}

bool isFileRecent(const string &filename) {
  struct stat info;
  if (stat(filename.c_str(), &info) == 0) {
    auto mtime = info.st_mtime;
    /* Check if file was modified before 5 seconds */
    if (time(0) - info.st_mtime > 5)
      return false;
    return true;
  }
  return false;
}

bool isEndingWith(string const &fullString, string const &ending) {
  if (fullString.length() >= ending.length())
    return (fullString.compare(fullString.length() - ending.length(),
                               ending.length(), ending) == 0);
  else
    return false;
}

bool isEndingWithCompilerName(string const &fullString) {
  if (fullString.compare(fullString.length() - icc_str.length(),
                         icc_str.length(), icc_str) == 0 ||
      fullString.compare(fullString.length() - gcc_str.length(),
                         gcc_str.length(), gcc_str) == 0 ||
//      fullString.compare(fullString.length() - pgi_str.length(),
//                         pgi_str.length(), pgi_str) == 0 ||
      fullString.compare(fullString.length() - llvm_str.length(),
                         llvm_str.length(), llvm_str) == 0 ||
      fullString.compare(fullString.length() - pluto_str.length(),
                         pluto_str.length(), pluto_str) == 0 ||
      fullString.compare(fullString.length() - polly_str.length(),
                         polly_str.length(), polly_str) == 0) {
    return true;
  } else {
    return false;
  }
}

double getVectorMean(vector<double> *dataVec) {
  double sum  = accumulate(dataVec->begin(), dataVec->end(), 0.0);
  double mean = sum / dataVec->size();
  return mean;
}

double getVectorStdev(vector<double> *dataVec) {
  double mean = getVectorMean(dataVec);
  vector<double> diff(dataVec->size());
  transform(dataVec->begin(), dataVec->end(), diff.begin(),
            [mean](double x) { return x - mean; });
  double sq_sum = inner_product(diff.begin(), diff.end(), diff.begin(), 0.0);
  double stdev  = sqrt(sq_sum / dataVec->size());
  return stdev;
}

double getVectorMedian(vector<double> *dataVec) {
  sort(dataVec->begin(), dataVec->end());
  if (dataVec->size() % 2 == 0) {
    return (dataVec->at((dataVec->size() / 2) - 1) +
            dataVec->at(dataVec->size() / 2)) /
           2.0;
  }
  return dataVec->at(dataVec->size() / 2);
}

void genRandomStr(string &str, const int len) {
  static const char alphanum[] = "0123456789"
                                 "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                 "abcdefghijklmnopqrstuvwxyz";

  for (int i = 0; i < len; ++i) {
    str += alphanum[rand() % (sizeof(alphanum) - 1)];
  }
}

void stringReplaceAll(string& str, const string& from, const string& to) {
    size_t start_pos = 0;
    while((start_pos = str.find(from, start_pos)) != string::npos) {
        str.replace(start_pos, from.length(), to);
        start_pos += to.length(); // Handles case where 'to' is a substring of 'from'
    }   
}

string getAbsolutePath(string const &fullString) {
  string result = executeCommand("realpath " + fullString);
  // To remove \n at the end
  result.pop_back();
  if (result.find("No such file or directory") == string::npos) {
    return result;
  } else {
    cerr << "Driver: Incorrect Path -> " << fullString << endl;
    exit(EXIT_FAILURE);
  }
}
