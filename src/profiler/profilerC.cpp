#include "profilerC.h"

// Check present compilers in the system to find possible candidates for optimizing
void ProfilerC::checkCompilerCandidates(){
	compiler_candidate = {
		{ compiler_ICC,    false  },
		{ compiler_GCC,    false  },
		{ compiler_LLVM,   false  },
		{ compiler_PGI,    false  },
		{ compiler_Pluto,  false  },
		{ compiler_Polly,  false  }
	};
	string result_compiler_found;
	// Can be written better, maybe later!
	result_compiler_found = executeCommand( "icc" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_ICC] = true;	
		cout << "Found in PATH: icc" << endl;
	} else {
		cout << "Couldn't find in PATH: icc" << endl;
	}

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

	result_compiler_found = executeCommand( "clang -O3 -mllvm -polly" );
	if( result_compiler_found.find("not found") == string::npos ){
		compiler_candidate[compiler_Polly] = true;	
		cout << "Found in PATH: clang -O3 -mllvm -polly (Polly+LLVM)" << endl;
	} else {
		cout << "Couldn't find in PATH: clang -O3 -mllvm -polly (Polly+LLVM)" << endl;
	}
	/* In common.h */
	addOptimizationFlags();
}

void ProfilerC::getHotspotFiles(){
	DIR *dir;
	struct dirent *ent;
	if ( ( dir = opendir( ( getDataFolderPath() ).c_str() ) ) != NULL) {
		/* print all the files and directories within directory */
		while ( ( ent = readdir(dir) ) != NULL ){
			if( (ent->d_name)[0] != '.' ){
				files_to_compile.insert( getDataFolderPath() +"/"+ ent->d_name );
				cout << "Adding files for compiling: " << ent->d_name << endl;
			}
		}
		closedir (dir);
	} else {
		/* could not open directory */
		cerr << "Couldn't open data folder: " << getDataFolderPath() << endl;
		exit(EXIT_FAILURE);
	}
}

void ProfilerC::iccOptimize(){
	vector<string> CL_flags = optimization_flags[compiler_ICC];
	vector<string>::iterator iterv;
	string CL;
	for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
		CL += *iterv + space_str;
	}

	//Since we only want to generate .o at this point
	CL += minus_c_str + space_str;
	
	set<string>::iterator iters;
	for( iters = files_to_compile.begin(); iters != files_to_compile.end(); iters++){
		string out_file = (*iters).substr( 0, (*iters).find_last_of(".") ); 
		executeCommand( CL + *iters + space_str + minus_o_str + space_str + out_file + dot_o_str );
	}

}

void ProfilerC::gccOptimize(){
}

void ProfilerC::llvmOptimize(){
}

void ProfilerC::pgiOptimize(){
}

void ProfilerC::plutoOptimize(){
}

void ProfilerC::pollyOptimize(){
}

void ProfilerC::Optimize(){
	map< compiler_type, bool >::iterator iter;
	getHotspotFiles();
	for( iter = compiler_candidate.begin(); iter != compiler_candidate.end(); iter++ ){
		if( iter->second == true ){
			switch (iter->first) {
				case compiler_ICC:
					iccOptimize();   break;
				case compiler_GCC:
					gccOptimize();   break;
				case compiler_LLVM:
					llvmOptimize();  break;
				case compiler_PGI:
					pgiOptimize();   break;
				case compiler_Pluto:
					plutoOptimize(); break;
				case compiler_Polly:
					pollyOptimize(); break;
			}
		}
	}
	
}

ProfilerC::ProfilerC( const string& input_data_folder_path, bool parallel_enabled ){
	data_folder_path = input_data_folder_path;
	parallel = parallel_enabled;
	checkCompilerCandidates();
	Optimize( );
}
