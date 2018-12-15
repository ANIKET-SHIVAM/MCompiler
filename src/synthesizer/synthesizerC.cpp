#include "synthesizerC.h"

void SynthesizerC::selectOptimalOptimizedCandidate(string hotspot_name) {
  // pair< compiler_string, running time >
  set<pair<string, double>, less_than_cmp_set> hotspot_timing_set;

  /* Add Mean timing for eligible compilers into comparision set */
  map<compiler_type, bool>::iterator iter;
  for (iter = compiler_candidate.begin(); iter != compiler_candidate.end();
       iter++) {
    if (iter->second == true) {
      compiler_type curr_compiler = iter->first;
      map<pair<string, string>, vector<double> *>::iterator dataIter;
      dataIter = profiler_hotspot_data.find(
          pair<string, string>(hotspot_name, compiler_keyword[curr_compiler]));
      if (dataIter != profiler_hotspot_data.end()) {
        hotspot_timing_set.insert(pair<string, double>(
            compiler_keyword[curr_compiler], getVectorMean(dataIter->second)));
        if (mCompiler_enabled_options[MC_INFO]) {
          cout << "Synthesizer: " << hotspot_name << " + "
               << compiler_keyword[curr_compiler] << ":"
               << getVectorMean(dataIter->second) << endl;
        }
      }
    }
  }

  /* Find the lowest running time compiler and add its hotspot object file to
   * final set for linking */
  string best_compiler_option = (hotspot_timing_set.begin())->first;
  hotspot_best_compiler_map.insert(
      pair<string, string>(hotspot_name, best_compiler_option));
  string best_option_path =
      (profiler_hotspot_obj_path.find(
           pair<string, string>(hotspot_name, best_compiler_option)))
          ->second;
  best_objs_to_link.insert(best_option_path);
  if ((hotspot_timing_set.begin())->second != 0)
    cout << "mCompiler chose: " << hotspot_name << " + " << best_compiler_option
         << " (" << (hotspot_timing_set.begin())->second << "s)" << endl;
  else
    cout << "mCompiler chose: " << hotspot_name << " + "
         << "baseline (lacks profile info)" << endl;
}

void SynthesizerC::analyzeHotspotProfileData() {
  /* Add basefiles from the baseline compiler obj */
  vector<string>::iterator vIters;
  for (vIters = ((base_obj_path.find(baseline_compiler_str))->second)->begin();
       vIters != ((base_obj_path.find(baseline_compiler_str))->second)->end();
       vIters++) {
    best_objs_to_link.insert(*vIters);
  }

  set<string>::iterator iters;
  for (iters = hotspot_name_set.begin(); iters != hotspot_name_set.end();
       iters++) {
    selectOptimalOptimizedCandidate(*iters);
  }

  /*
   * Now add the object files that are required for linking but we dont have
   * runtime info about them, since they didn't run while profiling
*/
  for (iters = hotspots_skipped_profiling.begin();
       iters != hotspots_skipped_profiling.end(); iters++) {
    best_objs_to_link.insert(*iters);
  }

  /*
          map< pair< string, string >, vector<double>* >::iterator dataIter;
          map< pair< string, string >, string >::iterator locIter;
          for( dataIter = profiler_hotspot_data.begin(); dataIter !=
     profiler_hotspot_data.end(); dataIter++ ){
                  cout << (dataIter->first).first << (dataIter->first).second <<
     getVectorMean(dataIter->second) << endl;
          }
          for( locIter = profiler_hotspot_obj_path.begin(); locIter !=
     profiler_hotspot_obj_path.end(); locIter++ ){
                  cout << (locIter->first).first << (locIter->first).second <<
     locIter->second << endl;
          }
  */
}

void SynthesizerC::selectPredictedObjs() {
  /* Select base obj files */
  string line;
  ifstream baselistfile(getDataFolderPath()+mCompiler_baselist_file);
  while (getline(baselistfile,line)) {
    best_objs_to_link.insert(getDataFolderPath() + line +
        baseline_compiler_str + dot_o_str );
  }
  baselistfile.close();

  /* Select hotspot obj files based on the predictor */
  for (map<string,compiler_type>::iterator iterm = predicted_compiler.begin();
       iterm != predicted_compiler.end(); ++iterm) {
    string hotspot_name = iterm->first;
    /* All dashes are converted to XunderscoreX in function name, recover them
     * to match loop file names */
    while (hotspot_name.find("X_X") != string::npos) {
      hotspot_name.replace(hotspot_name.find("X_X"), 3, "-");
    }
    best_objs_to_link.insert(getDataFolderPath() + hotspot_name +
        compiler_keyword.find(iterm->second)->second + dot_o_str );
  }
}

void SynthesizerC::generateFinalBinary() {
  // TODO: Change linker from ICC to LLD or faster option
  vector<string> CL_flags = linker_flags[compiler_ICC];
  vector<string>::iterator iterv;
  string CL;
  for (iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  /* NOT NEEDED WITH PGI-LLVM BACKEND (USING KMPC RUNTIME) - add object files
   * for PGI compilers objects with OpenMP to be linked. */
  //  if( compiler_candidate[compiler_PGI] == true )
  //    CL += pgi_lib_path + "trace_init.o" + space_str + pgi_lib_path +
  //    "initmp.o" + space_str;

  set<string>::iterator iters;
  string object_files;
  for (iters = best_objs_to_link.begin(); iters != best_objs_to_link.end();
       iters++) {
    object_files += *iters + space_str;
  }

  /* Add object files then add -o binary_name, before adding post linker flags
   */
  CL += object_files + space_str + minus_o_str + space_str + binary_name +
        space_str;

  /* For flags that go at the end of the command line */
  vector<string> post_CL_flags = post_linker_flags[compiler_ICC];
  for (iterv = post_CL_flags.begin(); iterv != post_CL_flags.end(); iterv++) {
    CL += *iterv + space_str;
  }

  /* NOT NEEDED WITH PGI-LLVM BACKEND (USING KMPC RUNTIME) UNLESS there is a
   * math library function inside hotspot
   * link libraries for PGI compilers objects with OpenMP to be linked. */
  if (compiler_candidate[compiler_PGI] == true)
    CL += "-L" + pgi_lib_path + space_str + " -lpgatm -lomp -lpgmath -lpgc";

  executeCommand(CL);
  /* Check if binary is generated */
  if (!isFileRecent(binary_name)) {
    cerr << "Fatal error: Cannot generate binary. Check --info." << endl;
    exit(EXIT_FAILURE);
  }
}

SynthesizerC::SynthesizerC() {
  binary_name = mCompiler_binary_path + mCompiler_binary_name;

  if (mCompiler_enabled_options[PREDICT])
    selectPredictedObjs();
  else
    analyzeHotspotProfileData();

  generateFinalBinary();
}
