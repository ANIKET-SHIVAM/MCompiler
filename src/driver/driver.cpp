#include "driver.h"

void Driver::setMCompilerMode(){
	/* Check if CL had neither object file nor source files */
	if( mCompiler_object_file.empty() && mCompiler_input_file.empty() ){
		cerr << "Driver: Neither source files nor object files provided" << endl;
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

void Driver::createMCompilerDataFolder(){
	// TODO: If -o is provided, then data_folder at that location
	string pwd_result = executeCommand("pwd");
	// To skip last \n chracter
	pwd_result.pop_back();

	if( pwd_result.empty() ){
		cerr << "Driver: Cannot run command 'pwd'" << endl;
		exit(EXIT_FAILURE);
	}

	mCompiler_curr_dir_path    = pwd_result + forward_slash_str;
	mCompiler_data_folder_path = mCompiler_curr_dir_path + mCompiler_data_folder + forward_slash_str;
	
	if (!isDirExist(mCompiler_data_folder_path)) {
		const int dir_err = mkdir(mCompiler_data_folder_path.c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
		if (dir_err == -1) {
			cout << "Error creating mCompiler data directory:" << mCompiler_data_folder_path << endl;
			exit(EXIT_FAILURE);
		}
	}
}

void Driver::generateMCompilerHeaderFile(){
	/* Create mCompiler header file */
	header_file_buf.open( (getDataFolderPath()+mCompiler_header_name).c_str(), ofstream::out );
    header_file_buf << "#ifndef MCOMPILER_H" << endl << "#define MCOMPILER_H" << endl;

	/* add global timing vars to the header */
	vector<string>::iterator iter;
	for( iter = loop_funcName_vec->begin(); iter != loop_funcName_vec->end(); iter++){
		header_file_buf << "double " << getLoopTimingVarSuffix() + *iter << ";" << endl;
	}

	header_file_buf << "void " << printTimingVarFuncName << "();" << endl;
	header_file_buf << "#endif" << endl;
	
	header_file_buf.close();

	/* Now open mCompiler header's code file */	
	header_code_file_buf.open( (getDataFolderPath()+mCompiler_header_code_name).c_str(), ofstream::out );
	header_code_file_buf << "#include \"" << mCompiler_header_name << "\"" << endl;
	header_code_file_buf << "void " << printTimingVarFuncName << "(){" << endl;
	
	for( iter = loop_funcName_vec->begin(); iter != loop_funcName_vec->end(); iter++){
		if( getSrcType() == src_lang_C ){
			header_code_file_buf << "printf(\"\\n" << *iter + mCompiler_timing_keyword << " \%.9f\\n\"," << getLoopTimingVarSuffix() + *iter <<");" << endl;
		} else if( getSrcType() == src_lang_CPP ){
			header_code_file_buf << "std::cout << std::endl \"" << *iter + mCompiler_timing_keyword << " \" << std::setprecision(9) << " <<  getLoopTimingVarSuffix() + *iter << " << std::endl;" << endl;
		}
	}
	header_code_file_buf << "}" << endl;
	header_code_file_buf.close();
	files_to_compile.insert(getDataFolderPath()+mCompiler_header_code_name);

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

	/* Rose frontend needs each include path in different vector entry */
	istringstream bufI(mCompiler_include_path);
    istream_iterator<string> begI(bufI), endI;
    vector<string> tokensI(begI, endI);
	for(auto& sI: tokensI)
		filename_vec.push_back(sI);

	/* Rose frontend needs each Macro definition in different vector entry */
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
}

void Driver::initiateProfiler( bool parallel ){
	src_lang src_type = extr->getSrcType();
	if( src_type == src_lang_C ){
		prof = new ProfilerC( parallel );
	}else if( src_type == src_lang_C ){
		//ProfilerCPP( string data_folder_path );
	} else if( src_type == src_lang_FORTRAN ){
		//ProfilerFortran( string data_folder_path );
	} else {
		cerr << "Unknown source extention" << endl;
		exit(EXIT_FAILURE);
	}
}

void Driver::initiateSynthesizer( bool parallel){
	src_lang src_type = extr->getSrcType();
	if( src_type == src_lang_C ){
		synth = new SynthesizerC( parallel );
	}else if( src_type == src_lang_C ){
		//SynthesizerCPP( string data_folder_path );
	} else if( src_type == src_lang_FORTRAN ){
		//SynthesizerFortran( string data_folder_path );
	} else {
		cerr << "Unknown source extention" << endl;
		exit(EXIT_FAILURE);
	}
}

int main( int argc, char* argv[] ){
	Driver *driver = new Driver();
	
	/* TODO: Clear the mCompiler data folder, if starting from beginning */
	driver->createMCompilerDataFolder();
	
	set_mCompiler_options( argc, argv );

	driver->setMCompilerMode();
	
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
		driver->initiateProfiler( mCompiler_enabled_options[PARALLEL] );
	}

	if( mCompiler_enabled_options[SYNTHESIZE] && 
			!(mCompiler_enabled_options[COMPILE_TO_OBJECT]) ){
		if( mCompiler_data_folder_path.empty() ){
			cerr << "Driver: Couldn't find the folder to synthesize hotspots" << endl;	
			exit(EXIT_FAILURE);
		}	
		driver->initiateSynthesizer( mCompiler_enabled_options[PARALLEL] );
	}

	if( mCompiler_enabled_options[TEST] ){
		Tester test( mCompiler_enabled_options[PARALLEL] );
	}

	delete driver;
	return 0;
}
