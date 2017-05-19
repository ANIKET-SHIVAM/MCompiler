#include "tester.h"

void Tester::testCompilerCandidates(){
	map< compiler_type, bool >::iterator iter;
	for( iter = compiler_candidate.begin(); iter != compiler_candidate.end(); iter++ ){
		if( iter->first != compiler_Pluto && iter->second == true ){
			compiler_type curr_compiler = iter->first;
			vector<string> CL_flags = optimization_flags[curr_compiler];
			vector<string>::iterator iterv;
			string CL;
			for( iterv = CL_flags.begin(); iterv != CL_flags.end(); iterv++){
				CL += *iterv + space_str;
			}

			for( iterv = mCompiler_input_file.begin(); iterv != mCompiler_input_file.end(); iterv++){
				CL += *iterv + space_str;
			}
				
			CL += mCompiler_link_path + mCompiler_libraries;
			string curr_binary = getDataFolderPath() + binary_name + test_str + compiler_keyword[curr_compiler];
			CL += minus_o_str + space_str + curr_binary;

			string result_compilation = executeCommand(CL);
			if( result_compilation.find("error") != string::npos )
				exit(EXIT_FAILURE);

			CL.clear();
			CL = "time " + curr_binary;
			string result_execution = executeCommand(CL);
			
			stringstream line_stream(result_execution);
			string cell;	
			//TODO: Improve this later
			while( getline( line_stream, cell ) ){
				if( cell.find("user") != string::npos ){
					int pos_user = cell.find("user");
					binaries_time[curr_compiler] = cell.substr(0,pos_user);
				}
			}
		}
	}
	// Get mCompiler generated binary timing
	string CL = "time " + mCompiler_curr_dir_path + mCompiler_binary_name;
	string result_execution = executeCommand(CL);
	
	stringstream line_stream(result_execution);
	string cell;	
	while( getline( line_stream, cell ) ){
		if( cell.find("user") != string::npos ){
			int pos_user = cell.find("user");
			mCompiler_timing = cell.substr(0,pos_user);
		}
	}
}

void Tester::printCompilerTimings(){
	cout << "Running time comparision: " << endl;
	map< compiler_type, bool >::iterator iter;
	for( iter = compiler_candidate.begin(); iter != compiler_candidate.end(); iter++ ){
		if( iter->first != compiler_Pluto && iter->second == true ){
			cout << compiler_keyword[iter->first] << " -> " << binaries_time[iter->first] << endl; 
		}
	}
	if( !mCompiler_timing.empty() )
		cout << "mCompiler -> " << mCompiler_timing << endl; 	
}

Tester::Tester( bool parallel_enabled ){
	
	compiler_keyword = {
		{ compiler_ICC,   icc_str.substr(1,string::npos)   },
		{ compiler_GCC,   gcc_str.substr(1,string::npos)   },
		{ compiler_LLVM,  llvm_str.substr(1,string::npos)  },
		{ compiler_PGI,   pgi_str.substr(1,string::npos)   },
		{ compiler_Pluto, pluto_str.substr(1,string::npos) },
		{ compiler_Polly, polly_str.substr(1,string::npos) },
	};	

	binary_name = mCompiler_binary_name;

	testCompilerCandidates();
	printCompilerTimings();	
}
