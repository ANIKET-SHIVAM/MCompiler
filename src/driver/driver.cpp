#include "driver.h"

// Check present compilers in the system to find possible candidates for optimizing
void Driver::checkCompilerCandidates(){
	compiler_candidate = {
		{ compiler_ICC,    false  },
		{ compiler_GCC,    false  },
		{ compiler_LLVM,   false  },
		{ compiler_PGI,    false  },
		{ compiler_Pluto,  false  },
		{ compiler_Polly,  false  }
	};
	string result_compiler_found;
	
	result_compiler_found = executeCommand( "icc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_ICC] = true;	
		cout << "Found in PATH: icc (Intel)" << endl;
	} else {
		cout << "Couldn't find in PATH: icc (Intel)" << endl;
	}
  if(!mCompiler_enabled_options[AUTO_PARALLEL]){
    result_compiler_found = executeCommand( "gcc" );
    if( result_compiler_found.find("not found") == string::npos ){
      compiler_candidate[compiler_GCC] = true;	
      cout << "Found in PATH: gcc" << endl;
    } else {
      cout << "Couldn't find in PATH: gcc" << endl;
    }

    result_compiler_found = executeCommand( "clang" );
    if( result_compiler_found.find("not found") == string::npos ){
      compiler_candidate[compiler_LLVM] = true;	
      cout << "Found in PATH: clang (LLVM)" << endl;
    } else {
		cout << "Couldn't find in PATH: clang (LLVM)" << endl;
    }
  }
	result_compiler_found = executeCommand( "pgcc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_PGI] = true;	
		cout << "Found in PATH: pgcc (PGI)" << endl;
	} else {
		cout << "Couldn't find in PATH: pgcc (PGI)" << endl;
	}
	
	result_compiler_found = executeCommand( "polycc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_Pluto] = true;	
		cout << "Found in PATH: polycc (Pluto)" << endl;
	} else {
		cout << "Couldn't find in PATH: polycc (Pluto)" << endl;
	}

	result_compiler_found = executeCommand( "opt -help | grep \"Polly Options\"" );
	if( result_compiler_found.find("Polly Options") != string::npos ){
		compiler_candidate[compiler_Polly] = true;	
		cout << "Found in PATH: Polly+LLVM" << endl;
	} else {
		cout << "Couldn't find in PATH: clang -O3 -mllvm -polly (Polly+LLVM)" << endl;
	}
	
	/* Set baseline compiler as per the order in the map above */	
	for( auto const &candidate : compiler_candidate ){
		if( candidate.second ){
			baseline_compiler_str = compiler_keyword[candidate.first];
			cout << "Baseline Compiler: " << compiler_keyword[candidate.first] << endl;
			break;
		}
	}

	/* If no compiler found in path */
	if( baseline_compiler_str.empty() ){
		cerr << "Couldn't find any compiler in PATH" << endl;
		exit(EXIT_FAILURE);
	}

	/* In common.h */
	addOptimizationFlags();
	addLinkerFlags();
	addPostLinkerFlags();
}

bool Driver::checkAdvProfileCandidate(){
	string result_compiler_found = executeCommand( vtune_path + "amplxe-cl" );
	if( result_compiler_found.find("not found") != string::npos ){
		cerr << "Intel Vtune not found" << endl;
    cerr << "Driver: Check unsuccesful for the Advanced Profiling Tool" << endl;
    return false;
	} else {
    cout << "Found in PATH: amplxe-cl" << endl;
		return true;
	}
}

void Driver::setMCompilerMode(){
	/* Check if CL had neither object file nor source files */
	if( mCompiler_object_file.empty() && mCompiler_input_file.empty() ){
		cerr << "Driver: Neither source files nor object files provided. See -help." << endl;
		exit(EXIT_FAILURE);
	}

	/* Enable step compilation flag if -c provided */
	if( mCompiler_enabled_options[COMPILE_TO_OBJECT] ){
		mCompiler_mode = mode_TO_OBJECT;	
		cerr << "Driver: Starting -c phase -> Only source files provided" << endl;
	}

	/* Check if CL had object file but no source files -- Linking phase */
	if( !mCompiler_object_file.empty() && mCompiler_input_file.empty() ){
		mCompiler_mode = mode_FROM_OBJECT;	
		mCompiler_enabled_options[EXTRACT] = false;
		cerr << "Driver: Starting link phase -> Only object files provided" << endl;
	}

	/* Check if CL have both object and source files - Complex mode */
	if( !( mCompiler_object_file.empty() || mCompiler_input_file.empty() ) ){
		mCompiler_mode = mode_FROM_OBJECT;
		cerr << "Driver: Starting in complex mode -> Both object and source files provided" << endl;
	}
}

/* Create temp folder in /tmp unless DEBUG mode is enabled */
void Driver::createMCompilerDataFolder(){
	if( mCompiler_enabled_options[MC_DEBUG] ){
    mCompiler_data_folder_path = mCompiler_curr_dir_path + mCompiler_data_folder + forward_slash_str;
  } else {
    mCompiler_data_folder_path = "/tmp/" + mCompiler_data_folder + forward_slash_str;
  } 
  if (!isDirExist(mCompiler_data_folder_path)){
    const int dir_err = mkdir(mCompiler_data_folder_path.c_str(),
                          S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
    if (dir_err == -1) {
      cout << "Error creating mCompiler data directory:" << mCompiler_data_folder_path << endl;
      exit(EXIT_FAILURE);
    }
  }
}

void Driver::removeMCompilerDataFolder(){
  string CL = "rm -rf ";
  CL += mCompiler_data_folder_path;
  executeCommand(CL);
}

void Driver::generateMCompilerHeaderFile(){
	bool isPresent = false;
	if( isFileExist(getDataFolderPath()+mCompiler_header_name) )
		isPresent = true;
	//header_file_buf.close();
	
	string temp_str = "void " + printTimingVarFuncName + "();";	
	if(isPresent)	
		executeCommand("sed -i '/" + temp_str + "/d;/" + "#endif" + "/d' " + getDataFolderPath()+mCompiler_header_name );
	
	/* Create/Append mCompiler header file */
	if( mCompiler_mode == mode_FULL_PASS ){
		header_file_buf.open( (getDataFolderPath()+mCompiler_header_name).c_str(), ofstream::out );
		isPresent = false;
	} else {
		header_file_buf.open( (getDataFolderPath()+mCompiler_header_name).c_str(), ofstream::app );
	}
	
	if(!isPresent)
		header_file_buf << "#ifndef MCOMPILER_H" << endl << "#define MCOMPILER_H" << endl;

	/* add global timing vars to the header */
	vector<string>::iterator iter;
	for( iter = loop_funcName_vec->begin(); iter != loop_funcName_vec->end(); iter++){
		header_file_buf << "double " << getLoopTimingVarSuffix() + *iter << ";" << endl;
	}

	header_file_buf << temp_str << endl;
	header_file_buf << "#endif" << endl;
	
	header_file_buf.close();

	temp_str = "}";
	if(isPresent)	
		executeCommand("sed -i '/" + temp_str + "/d' " + getDataFolderPath()+mCompiler_header_code_name );
	/* Now open/append mCompiler header's code file */	
	if( mCompiler_mode == mode_FULL_PASS ){
		header_code_file_buf.open( (getDataFolderPath()+mCompiler_header_code_name).c_str(), ofstream::out );
		isPresent = false;
	} else {
		header_code_file_buf.open( (getDataFolderPath()+mCompiler_header_code_name).c_str(), ofstream::app );
	}
	
	if(!isPresent){
		header_code_file_buf << "#include \"" << mCompiler_header_name << "\"" << endl;
		header_code_file_buf << "void " << printTimingVarFuncName << "(){" << endl;
	}
	
	for( iter = loop_funcName_vec->begin(); iter != loop_funcName_vec->end(); iter++){
		if( getSrcType() == src_lang_C ){
			header_code_file_buf << "printf(\"\\n" << *iter + mCompiler_timing_keyword << " \%.9f\\n\"," << getLoopTimingVarSuffix() + *iter <<");" << endl;
		} else if( getSrcType() == src_lang_CPP ){
			header_code_file_buf << "std::cout << std::endl \"" << *iter + mCompiler_timing_keyword << " \" << std::setprecision(9) << " <<  getLoopTimingVarSuffix() + *iter << " << std::endl;" << endl;
		}
	}
	header_code_file_buf << temp_str << endl;
	header_code_file_buf.close();
	files_to_compile.insert(getDataFolderPath()+mCompiler_header_code_name);

}

void Driver::copyInFolderHeaders( string folder_path ){
	string cmd_str = "cp -u " + folder_path + "*.h " + getDataFolderPath();
	executeCommand(cmd_str);
}

/* Fetch profiler input args and required data files */
void Driver::fetchProfilerInput(){
	if( mCompiler_profiler_input.empty() )
		return;
	vector<string> temp_vec;
	string temp = getAbsolutePath(mCompiler_profiler_input);
	string line;
	ifstream input_file(temp);
	if (input_file.is_open()){
		while( getline(input_file,line) ){
			istringstream iss(line);
			vector<string>tokens{istream_iterator<string>{iss},
					 istream_iterator<string>{}};
			temp_vec.insert(temp_vec.end(), tokens.begin(), tokens.end());	
		}
		input_file.close();
	}
	mCompiler_profiler_input = "";
	for( auto const &arg : temp_vec ){
		mCompiler_profiler_input += arg + space_str;
	}
}

/* file_name is the relative path to the file to be extracted */
void Driver::initiateExtractor( string file_name ){
    if (FILE *file = fopen(file_name.c_str(), "r")) {
        fclose(file);
    } else {
		cerr << "The input file doesn't exist: " << file_name << endl;
		exit(EXIT_FAILURE);
    }   
	vector<string> filename_vec;
	string dummy_arg_for_extractor_frontend = "Rose, please let me run the extractor!";
	filename_vec.push_back(dummy_arg_for_extractor_frontend);
#ifdef OS_CENTOS
	dummy_arg_for_extractor_frontend = "-I"+ rose_path +"include/edg/gcc_HEADERS/";
	filename_vec.push_back(dummy_arg_for_extractor_frontend);
#endif
	/* Rose frontend needs each include path in different vector entry */
	istringstream bufI(mCompiler_include_path);
  istream_iterator<string> begI(bufI), endI;
  vector<string> tokensI(begI, endI);
	for(auto& sI: tokensI)
		filename_vec.push_back(sI);

	/* Rose frontend needs each Macro definition in different vector entry */
  if(mCompiler_enabled_options[PARALLEL])
		filename_vec.push_back("-D_OPENMP");
	istringstream bufM(mCompiler_macro_defs);
  istream_iterator<string> begM(bufM), endM;
  vector<string> tokensM(begM, endM);
	for(auto& sM: tokensM)
		filename_vec.push_back(sM);
	
	filename_vec.push_back(file_name);

	extr = new Extractor( filename_vec );

	mainFuncPresent = extr->mainFuncPresent;
	src_type = extr->getSrcType();

	/* Keep on collection Loop Functions name - Append two vector */	
	loop_funcName_vec->insert( loop_funcName_vec->end(), (extr->loop_funcName_vec)->begin(), (extr->loop_funcName_vec)->end() );	
	/* mCompiler header must be printed at last */
	if( isLastSrcFile ){
		generateMCompilerHeaderFile();
	}
	/* Copy headers that are in same folder as Source to mC data folder */ 	
	copyInFolderHeaders(extr->getFilePath());
	
}

void Driver::initiateProfiler(){
	prof = new ProfilerC();
}

void Driver::initiateAdvProfiler(){
	adv_prof = new AdvProfiler();
}

void Driver::initiateSynthesizer(){
	synth = new SynthesizerC();
}

int main( int argc, char* argv[] ){
	Driver *driver = new Driver();
	set_mCompiler_options( argc, argv );
	
	/* Get current working directory path */
	mCompiler_curr_dir_path = getAbsolutePath(".") + forward_slash_str;
  if(mCompiler_binary_path.empty())
	  mCompiler_binary_path = mCompiler_curr_dir_path;
	driver->createMCompilerDataFolder();
	
	genRandomStr(mCompiler_unique_str, 5);	
	
	driver->fetchProfilerInput();
	driver->checkCompilerCandidates();
	driver->setMCompilerMode();

  if( mCompiler_enabled_options[ADV_PROFILE] ){
    if( !driver->checkAdvProfileCandidate() ){
      mCompiler_enabled_options[ADV_PROFILE] = false;
    } 
  }
	
	/* Send all files in the command line for extraction */
	if( mCompiler_enabled_options[EXTRACT] ){
		vector<string>::iterator iter;
		for( iter = mCompiler_input_file.begin();  iter != mCompiler_input_file.end(); iter++ ){
			if( *iter == mCompiler_input_file.back() ){
				driver->isLastSrcFile = true;
			}
			driver->initiateExtractor( *iter );
		}
	}
	
	if( mCompiler_enabled_options[PROFILE] ){
		if( mCompiler_data_folder_path.empty() ){
			cerr << "Driver: Couldn't find the folder to profile hotspots" << endl;	
			exit(EXIT_FAILURE);
		}
		driver->initiateProfiler();
	}

	if( mCompiler_enabled_options[SYNTHESIZE] && 
    ( mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_FROM_OBJECT || mCompiler_mode == mode_COMPLEX )){
		if( mCompiler_data_folder_path.empty() ){
			cerr << "Driver: Couldn't find the folder to synthesize hotspots" << endl;	
			exit(EXIT_FAILURE);
		}	
		driver->initiateSynthesizer();
	}

	if( mCompiler_enabled_options[ADV_PROFILE] ){
    driver->initiateAdvProfiler();
  }

	if( mCompiler_enabled_options[TEST] && 
    ( mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_FROM_OBJECT || mCompiler_mode == mode_COMPLEX )){
		Tester *tester = new Tester();
	}

  if( !mCompiler_enabled_options[MC_DEBUG] &&
    ( mCompiler_mode == mode_FULL_PASS || mCompiler_mode == mode_FROM_OBJECT || mCompiler_mode == mode_COMPLEX )){
    driver->removeMCompilerDataFolder();
  }

	delete driver;
	return 0;
}
