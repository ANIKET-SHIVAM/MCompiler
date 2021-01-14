#include "driver.h"

// Check present compilers in the system to find possible candidates for
// optimizing
void Driver::checkCompilerCandidates() {
  compiler_candidate = {{compiler_ICC, false},   {compiler_GCC, false},
                        {compiler_LLVM, false},  {compiler_PGI, false},
                        {compiler_Pluto, false}, {compiler_Polly, false}};
  string result_compiler_found;

  result_compiler_found = executeCommand("icc");
  if (result_compiler_found.find("not found") == string::npos) {
    compiler_candidate[compiler_ICC] = true;
    cout << "Found in PATH: icc (Intel)" << endl;
  } else {
    cout << "Couldn't find in PATH: icc (Intel)" << endl;
  }
  if (!MCompiler_enabled_options[AUTO_PARALLEL]) {
    result_compiler_found = executeCommand("gcc");
    if (result_compiler_found.find("not found") == string::npos) {
      compiler_candidate[compiler_GCC] = true;
      cout << "Found in PATH: gcc" << endl;
    } else {
      cout << "Couldn't find in PATH: gcc" << endl;
    }

    result_compiler_found = executeCommand("clang");
    if (result_compiler_found.find("not found") == string::npos) {
      compiler_candidate[compiler_LLVM] = true;
      cout << "Found in PATH: clang (LLVM)" << endl;
    } else {
      cout << "Couldn't find in PATH: clang (LLVM)" << endl;
    }
  }
  result_compiler_found = executeCommand("pgcc");
  if (result_compiler_found.find("not found") == string::npos) {
    compiler_candidate[compiler_PGI] = true;
    cout << "Found in PATH: pgcc (PGI)" << endl;
  } else {
    cout << "Couldn't find in PATH: pgcc (PGI)" << endl;
  }

  result_compiler_found = executeCommand("polycc");
  if (result_compiler_found.find("not found") == string::npos &&
      !MCompiler_enabled_options[NOPOLYHEDRAL]) {
    compiler_candidate[compiler_Pluto] = true;
    cout << "Found in PATH: polycc (Pluto)" << endl;
  } else {
    cout << "Couldn't find in PATH: polycc (Pluto)" << endl;
  }

  result_compiler_found = executeCommand("opt -help | grep \"Polly Options\"");
  if (result_compiler_found.find("Polly Options") != string::npos &&
      !MCompiler_enabled_options[NOPOLYHEDRAL]) {
    compiler_candidate[compiler_Polly] = true;
    cout << "Found in PATH: Polly+LLVM" << endl;
  } else {
    cout << "Couldn't find in PATH: clang -O3 -mllvm -polly (Polly+LLVM)"
         << endl;
  }

  /* Set baseline compiler as per the order in the map above */
  for (auto const &candidate : compiler_candidate) {
    if (candidate.second) {
      baseline_compiler_str = compiler_keyword[candidate.first];
      cout << "Baseline Compiler: " << compiler_keyword[candidate.first]
           << endl;
      break;
    }
  }

  /* If no compiler found in path */
  if (baseline_compiler_str.empty()) {
    cerr << "Couldn't find any compiler in PATH" << endl;
    exit(EXIT_FAILURE);
  }

  if (MCompiler_enabled_options[POWER_PROFILE])
    MCompiler_macro_defs += "-DLIKWID_PERFMON";

  /* In common.h */
  addOptimizationFlags();
  addLinkerFlags();
  addPostLinkerFlags();
}

bool Driver::checkAdvProfileCandidate() {
  string result_compiler_found = executeCommand(MCompiler_advprofiler_str);
  if (result_compiler_found.find("not found") != string::npos) {
    cerr << "Intel Vtune not found" << endl;
    cerr << "Driver: Check unsuccesful for the Advanced Profiling Tool" << endl;
    return false;
  } else {
    cout << "Found in PATH: " << MCompiler_advprofiler_str << endl;
    return true;
  }
}

bool Driver::checkPowerProfileCandidate() {
  string result_compiler_found = executeCommand("likwid-perfctr");
  if (result_compiler_found.find("not found") != string::npos) {
    cerr << "LIKWID not found" << endl;
    cerr << "Driver: Check unsuccesful for the Power Profiling Tool" << endl;
    return false;
  } else {
    cout << "Found in PATH: likwid-perfctr" << endl;
    return true;
  }
}

void Driver::setMCompilerMode() {
  /* Check if CL had neither object file nor source files */
  if (MCompiler_object_file.empty() && MCompiler_input_file.empty()) {
    cerr << "Driver: Neither source files nor object files provided. See -help."
         << endl;
    exit(EXIT_FAILURE);
  }

  /* Enable step compilation flag if -c provided */
  if (MCompiler_enabled_options[COMPILE_TO_OBJECT]) {
    MCompiler_mode = mode_TO_OBJECT;
    cout << "Driver: Starting -c phase -> Only source files provided" << endl;
  }

  /* Check if CL had object file but no source files -- Linking phase */
  if (!MCompiler_object_file.empty() && MCompiler_input_file.empty()) {
    MCompiler_mode                     = mode_FROM_OBJECT;
    MCompiler_enabled_options[EXTRACT] = false;
    cout << "Driver: Starting link phase -> Only object files provided" << endl;
  }

  /* Check if CL have both object and source files - Complex mode */
  if (!(MCompiler_object_file.empty() || MCompiler_input_file.empty())) {
    MCompiler_mode = mode_FROM_OBJECT;
    cout << "Driver: Starting in complex mode -> Both object and source files "
            "provided"
         << endl;
  }
}

void Driver::getPathsToUtils() {
  const char *env_PATH      = getenv("PATH");
  char *copy_env_PATH       = strdup(env_PATH);
  const char *env_LDLIBPATH = getenv("LD_LIBRARY_PATH");
  char *copy_env_LDLIBPATH  = strdup(env_LDLIBPATH);
  /* Search for PGI lib path */
  if (compiler_candidate[compiler_PGI] == true) {
    char *token = strtok(copy_env_LDLIBPATH, ":");
    string tmppath;
    while (token != NULL) {
      tmppath = token;
      if (tmppath.find("pgi") != string::npos &&
          tmppath.find("lib") != string::npos) {
        pgi_lib_path = tmppath;
        cout << "PGI lib path: " << pgi_lib_path << endl;
        break;
      }
      token = strtok(NULL, ":");
    }
  }
  char *env_MLmodel = getenv("MC_ML_MODEL");
  if (env_MLmodel != NULL) {
    MCompiler_trained_model_path = string(env_MLmodel);
    MCompiler_trained_model_features_path =
        MCompiler_trained_model_path + "_features.txt";
  }
  char *env_MLautoparmodel = getenv("MC_ML_AUTOPAR_MODEL");
  if (env_MLautoparmodel != NULL) {
    MCompiler_trained_autopar_model_path = string(env_MLautoparmodel);
    MCompiler_trained_autopar_model_features_path =
        MCompiler_trained_autopar_model_path + "_features.txt";
  }
}

/* Create data folder in /tmp */
void Driver::createMCompilerDataFolder() {
  MCompiler_data_folder_path =
      "/tmp/" + MCompiler_data_folder + forward_slash_str;
  if (!isDirExist(MCompiler_data_folder_path)) {
    const int dir_err = mkdir(MCompiler_data_folder_path.c_str(),
                              S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
    if (dir_err == -1) {
      cout << "Error creating MCompiler data directory:"
           << MCompiler_data_folder_path << endl;
      exit(EXIT_FAILURE);
    }
  }
}

void Driver::removeMCompilerDataFolder() {
  string CL = "rm -rf ";
  CL += MCompiler_data_folder_path;
  executeCommand(CL);
}

void Driver::moveMCompilerDataFolder() {
  string CL = "mv ";
  CL += MCompiler_data_folder_path + space_str + MCompiler_curr_dir_path;
  executeCommand(CL);
}

void Driver::generateMCompilerHeaderFile() {
  bool isPresent = false;
  if (isFileExist(getDataFolderPath() + MCompiler_header_name))
    isPresent = true;
  // header_file_buf.close();

  string temp_str = "void " + printTimingVarFuncName + "();";
  if (isPresent)
    executeCommand("sed -i '/" + temp_str + "/d;/" + "#endif" + "/d' " +
                   getDataFolderPath() + MCompiler_header_name);

  /* Create/Append MCompiler header file */
  if (MCompiler_mode == mode_FULL_PASS) {
    header_file_buf.open((getDataFolderPath() + MCompiler_header_name).c_str(),
                         ofstream::out);
    isPresent = false;
  } else {
    header_file_buf.open((getDataFolderPath() + MCompiler_header_name).c_str(),
                         ofstream::app);
  }

  if (!isPresent)
    header_file_buf << "#ifndef MCOMPILER_H" << endl
                    << "#define MCOMPILER_H" << endl;

  /* add global timing vars to the header */
  vector<string>::iterator iter;
  for (iter = loop_funcName_vec->begin(); iter != loop_funcName_vec->end();
       iter++) {
    header_file_buf << "double " << getLoopTimingVarSuffix() + *iter << ";"
                    << endl;
  }

  header_file_buf << temp_str << endl;
  header_file_buf << "#endif" << endl;

  header_file_buf.close();

  temp_str = "}";
  if (isPresent)
    executeCommand("sed -i '/" + temp_str + "/d' " + getDataFolderPath() +
                   MCompiler_header_code_name);
  /* Now open/append MCompiler header's code file */
  if (MCompiler_mode == mode_FULL_PASS) {
    header_code_file_buf.open(
        (getDataFolderPath() + MCompiler_header_code_name).c_str(),
        ofstream::out);
    isPresent = false;
  } else {
    header_code_file_buf.open(
        (getDataFolderPath() + MCompiler_header_code_name).c_str(),
        ofstream::app);
  }

  if (!isPresent) {
    header_code_file_buf << "#include \"" << MCompiler_header_name << "\""
                         << endl;
    header_code_file_buf << "void " << printTimingVarFuncName << "(){" << endl;
  }

  for (iter = loop_funcName_vec->begin(); iter != loop_funcName_vec->end();
       iter++) {
    if (getSrcType() == src_lang_C) {
      header_code_file_buf << "printf(\"\\n"
                           << *iter + MCompiler_timing_keyword << " \%.9f\\n\","
                           << getLoopTimingVarSuffix() + *iter << ");" << endl;
    } else if (getSrcType() == src_lang_CPP) {
      header_code_file_buf << "std::cout << std::endl \""
                           << *iter + MCompiler_timing_keyword
                           << " \" << std::setprecision(9) << "
                           << getLoopTimingVarSuffix() + *iter
                           << " << std::endl;" << endl;
    }
  }
  header_code_file_buf << temp_str << endl;
  header_code_file_buf.close();
  files_to_compile.insert(getDataFolderPath() + MCompiler_header_code_name);
}

void Driver::copyInFolderHeaders(string folder_path, bool copysourcefiles) {
  string cmd_str = "cp " + folder_path + "*.h " + getDataFolderPath();
  executeCommand(cmd_str);
  cmd_str = "cp " + folder_path + "*.inc " + getDataFolderPath();
  executeCommand(cmd_str);
  if (copysourcefiles) {
    string cmd_str = "cp " + folder_path + "*.c " + getDataFolderPath();
    executeCommand(cmd_str);
  }
}

/* Fetch profiler input args and required data files */
void Driver::fetchProfilerInput() {
  if (MCompiler_profiler_input.empty())
    return;
  vector<string> temp_vec;
  string temp = getAbsolutePath(MCompiler_profiler_input);
  string line;
  ifstream input_file(temp);
  if (input_file.is_open()) {
    while (getline(input_file, line)) {
      istringstream iss(line);
      vector<string> tokens{istream_iterator<string>{iss},
                            istream_iterator<string>{}};
      temp_vec.insert(temp_vec.end(), tokens.begin(), tokens.end());
    }
    input_file.close();
  }
  MCompiler_profiler_input = "";
  for (auto const &arg : temp_vec) {
    MCompiler_profiler_input += arg + space_str;
  }
}

/* file_name is the relative path to the file to be extracted */
void Driver::initiateExtractor(string file_name) {
  if (FILE *file = fopen(file_name.c_str(), "r")) {
    fclose(file);
  } else {
    cerr << "The input file doesn't exist: " << file_name << endl;
    exit(EXIT_FAILURE);
  }
  vector<string> filename_vec;
  string dummy_arg_for_extractor_frontend =
      "Rose, please let me run the extractor!";
  filename_vec.push_back(dummy_arg_for_extractor_frontend);
#ifdef OS_CENTOS
  dummy_arg_for_extractor_frontend =
      "-I" + rose_path + "include/edg/gcc_HEADERS/";
  filename_vec.push_back(dummy_arg_for_extractor_frontend);
#endif
  /* Rose frontend needs each include path in different vector entry */
  istringstream bufI(MCompiler_include_path);
  istream_iterator<string> begI(bufI), endI;
  vector<string> tokensI(begI, endI);
  for (auto &sI : tokensI)
    filename_vec.push_back(sI);

  /* Rose frontend needs each Macro definition in different vector entry */
  if (MCompiler_enabled_options[PARALLEL])
    filename_vec.push_back("-D_OPENMP");
  istringstream bufM(MCompiler_macro_defs);
  istream_iterator<string> begM(bufM), endM;
  vector<string> tokensM(begM, endM);
  for (auto &sM : tokensM)
    filename_vec.push_back(sM);

  filename_vec.push_back(file_name);

  extr = new Extractor(filename_vec);

  mainFuncPresent = extr->mainFuncPresent;
  src_type        = extr->getSrcType();

  /* Keep on collection Loop Functions name - Append two vector */
  loop_funcName_vec->insert(loop_funcName_vec->end(),
                            (extr->loop_funcName_vec)->begin(),
                            (extr->loop_funcName_vec)->end());
  /* MCompiler header must be printed at last */
  if (isLastSrcFile) {
    generateMCompilerHeaderFile();
  }
  /* Copy headers that are in same folder as Source to MC data folder */
  copyInFolderHeaders(extr->getFilePath(), extr->copysourcefiles);
}

void Driver::initiateProfiler() { prof = new ProfilerC(); }

void Driver::initiateAdvProfiler() { adv_prof = new AdvProfiler(); }

void Driver::initiatePowerProfiler() { power_prof = new PowerProfiler(); }

void Driver::initiatePredictor() { predictor = new Predictor(); }

void Driver::initiateSynthesizer() { synth = new SynthesizerC(); }

int main(int argc, char *argv[]) {
  Driver *driver = new Driver();
  set_MCompiler_options(argc, argv);

  /* Get current working directory path */
  MCompiler_curr_dir_path = getAbsolutePath(".") + forward_slash_str;
  if (MCompiler_binary_path.empty())
    MCompiler_binary_path = MCompiler_curr_dir_path;
  driver->createMCompilerDataFolder();

  genRandomStr(MCompiler_unique_str, 5);

  driver->fetchProfilerInput();
  driver->checkCompilerCandidates();
  driver->setMCompilerMode();
  driver->getPathsToUtils();

  if (MCompiler_enabled_options[ADV_PROFILE]) {
    if (!driver->checkAdvProfileCandidate()) {
      MCompiler_enabled_options[ADV_PROFILE] = false;
    }
  }

  if (MCompiler_enabled_options[POWER_PROFILE]) {
    if (!driver->checkPowerProfileCandidate()) {
      MCompiler_enabled_options[POWER_PROFILE] = false;
      MCompiler_macro_defs += "-DLIKWID_PERFMON";
    }
  }

  /* Send all files in the command line for extraction */
  if (MCompiler_enabled_options[EXTRACT]) {
    vector<string>::iterator iter;
    for (iter = MCompiler_input_file.begin();
         iter != MCompiler_input_file.end(); iter++) {
      if (*iter == MCompiler_input_file.back()) {
        driver->isLastSrcFile = true;
      }
      driver->initiateExtractor(*iter);
    }
  }

  if (MCompiler_enabled_options[PROFILE]) {
    if (MCompiler_data_folder_path.empty()) {
      cerr << "Driver: Couldn't find the folder to profile hotspots" << endl;
      exit(EXIT_FAILURE);
    }
    driver->initiateProfiler();
  }

  /* If making prediction, then move Synthesis to the end of the pipeline */
  if (MCompiler_enabled_options[SYNTHESIZE] &&
      !MCompiler_enabled_options[PREDICT] &&
      (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
       MCompiler_mode == mode_COMPLEX)) {
    if (MCompiler_data_folder_path.empty()) {
      cerr << "Driver: Couldn't find the folder to synthesize hotspots" << endl;
      exit(EXIT_FAILURE);
    }
    driver->initiateSynthesizer();
  }

  /* Perform counter profiling after Synthesis, if not making prediction */
  if (MCompiler_enabled_options[ADV_PROFILE]) {
    driver->initiateAdvProfiler();
  }

  if (MCompiler_enabled_options[POWER_PROFILE]) {
    driver->initiatePowerProfiler();
  }

  if (MCompiler_enabled_options[PREDICT] &&
      (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
       MCompiler_mode == mode_COMPLEX)) {
    if (MCompiler_data_folder_path.empty()) {
      cerr << "Driver: Couldn't find the folder to predict for hotspots"
           << endl;
      exit(EXIT_FAILURE);
    }
    driver->initiatePredictor();
  }

  if (MCompiler_enabled_options[SYNTHESIZE] &&
      MCompiler_enabled_options[PREDICT] &&
      (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
       MCompiler_mode == mode_COMPLEX)) {
    if (MCompiler_data_folder_path.empty()) {
      cerr << "Driver: Couldn't find the folder to synthesize hotspots" << endl;
      exit(EXIT_FAILURE);
    }
    driver->initiateSynthesizer();
  }

  if (MCompiler_enabled_options[TEST] &&
      (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
       MCompiler_mode == mode_COMPLEX)) {
    Tester *tester = new Tester();
  }

  if (!MCompiler_enabled_options[MC_INFO] &&
      (MCompiler_mode == mode_FULL_PASS || MCompiler_mode == mode_FROM_OBJECT ||
       MCompiler_mode == mode_COMPLEX)) {
    driver->removeMCompilerDataFolder();
  } else if (MCompiler_enabled_options[MC_INFO] &&
             (MCompiler_mode == mode_FULL_PASS ||
              MCompiler_mode == mode_FROM_OBJECT ||
              MCompiler_mode == mode_COMPLEX)) {
    driver->moveMCompilerDataFolder();
  }

  delete driver;
  return 0;
}
