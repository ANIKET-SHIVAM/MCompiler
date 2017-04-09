/* Loop Extractor:
 * Move loops into new file as function with calls to that function in the original.
 */
#include "extractor.h"

bool isDirExist( const string &path ) {
	struct stat info;
	if( stat(path.c_str(), &info) != 0 )
		return false;
	else if( info.st_mode & S_IFDIR )
		return true;
	else 
		return false; 
}

string Extractor::getFilePath( const string &fileNameWithPath ) {
	int lastSlashPos = fileNameWithPath.find_last_of('/');
	return fileNameWithPath.substr(0, lastSlashPos);
}

string Extractor::getFileName( const string &fileNameWithPath ) {
	int lastSlashPos = fileNameWithPath.find_last_of('/');
	int lastDotPos   = fileNameWithPath.find_last_of('.');
	return fileNameWithPath.substr(lastSlashPos + 1, lastDotPos-lastSlashPos-1);
}

string Extractor::getFileExtn( const string &fileNameWithPath ) {
	int lastDotPos = fileNameWithPath.find_last_of('.');
	return fileNameWithPath.substr(lastDotPos + 1);
}

int Extractor::getAstNodeLineNum( SgNode *const &astNode ) {
	ROSE_ASSERT(astNode != NULL);
	SgLocatedNode *locatedNode = isSgLocatedNode(astNode);
	return rose::getLineNumber(locatedNode);
}

string Extractor::getExtractionFileName( SgNode *astNode ) {
	string fileNameWithPath = (astNode->get_file_info())->get_filenameString();
	string filePath = getFilePath(fileNameWithPath);
	string fileName = getFileName(fileNameWithPath);
	string fileExtn = getFileExtn(fileNameWithPath);
	int lineNumber = getAstNodeLineNum(astNode);

	string outputPath = filePath + "/mCompiler_extractions/";

	fileName += "_line" + to_string(lineNumber);

	fileName = fileName + "." + fileExtn;

	if (!isDirExist(outputPath)) {
		const int dir_err = mkdir(outputPath.c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
		if (dir_err == -1) {
			cout << "Error creating extraction directory!" << endl;
			exit(1);
		}
	}
	return outputPath + fileName;
}

void Extractor::printHeaders( SgNode *const &astNode ){
	set<string>::iterator iter;
	bool hasTimer = false;
	for( iter = header_set.begin(); iter != header_set.end(); iter++ ){
		string header_str = *iter;
		loop_file_buf << header_str;  //header_set has space at the end already
		if( header_str.find("#include <timer.h>") != string::npos )
				hasTimer = true;
	}
	if( !hasTimer )
		loop_file_buf << "#include <timer.h>" << endl;
}

void Extractor::printGlobalsAsExtern( SgNode *const &astNode ){
	set<string>::iterator iter;
	for( iter = global_vars.begin(); iter != global_vars.end(); iter++ ){
		string var_str = *iter;
		loop_file_buf << "extern " << var_str << ";" << endl; 
	}

}

void LoopInfo::printLoopFunc( ofstream &loop_file_buf ){
	
	// Function defination 
	loop_file_buf << endl << "void " << getFuncName() << "(" << "){" << endl;
	
	// Entire Loop Body
	loop_file_buf << "#pragma scop" << endl;
	loop_file_buf << loop->unparseToCompleteString() << endl;	
	loop_file_buf << "#pragma endscop" << endl;
	loop_file_buf << "}" << endl;
}

void Extractor::extractLoops( SgNode *astNode ){
	SgForStatement *loop = dynamic_cast<SgForStatement *>(astNode);
	string loop_file_name = getExtractionFileName(astNode);
	loop_file_buf.open(loop_file_name.c_str(), ofstream::out);
	
	// Create loop object
	LoopInfo curr_loop( astNode, loop, 
		getFileName( (astNode->get_file_info())->get_filenameString() ) + "_" + 
			to_string( getAstNodeLineNum(astNode) ) ); 

	printHeaders(astNode);
	printGlobalsAsExtern(astNode);
	
	cerr << "Adding loop to file: " << curr_loop.getFuncName() << endl;
	curr_loop.printLoopFunc(loop_file_buf);	

	loop_file_buf.close();

	/* Call astyleFormatter here in future */
}

/* Required for Top Down parsing */
InheritedAttribute Extractor::evaluateInheritedAttribute( SgNode *astNode,
															  InheritedAttribute inh_attr ){
	switch (astNode->variantT()) {
	case V_SgForStatement: {
		SgForStatement *loop = dynamic_cast<SgForStatement *>(astNode);
		if (loop == NULL) {
			cerr << "Error: incorrect loop node type" << endl;
			break;
		}  
		cerr << "Found a " << loop->class_name() << " with depth: " << inh_attr.loop_nest_depth_ << endl;
		++inh_attr.loop_nest_depth_;
		cout << "Extracting loop now" << endl;
		extractLoops( astNode );
		break;
	}
	default: {
			cerr << "Found a " << astNode->class_name() << endl;	
	}
	}

	/* For gathering the header files */
	SgLocatedNode *locatedNode = isSgLocatedNode(astNode);
	if (locatedNode != NULL) {
		AttachedPreprocessingInfoType *directives = locatedNode->getAttachedPreprocessingInfo();
		if (directives != NULL) {
			AttachedPreprocessingInfoType::iterator i;
			for (i = directives->begin(); i != directives->end(); i++) {
				string directiveTypeName = PreprocessingInfo::directiveTypeName((*i)->getTypeOfDirective()).c_str();
				string headerName = (*i)->getString().c_str();
				if (directiveTypeName == "CpreprocessorIncludeDeclaration" &&
					header_set.find(headerName) == header_set.end()) {
					header_set.insert(headerName);
					cerr << "Header: " << headerName << endl;	
				}	
			}
		}
	}
	
	/* Gather the global variables/static data member names */
	SgVariableDeclaration* variableDeclaration = isSgVariableDeclaration(astNode);
	if (variableDeclaration != NULL)
	{
		// Typically just one InitializedName in a VariableDecl, but still
		SgInitializedNamePtrList::iterator i = variableDeclaration->get_variables().begin();
        while (i != variableDeclaration->get_variables().end())
		{
			SgInitializedName* initializedName = *i;
            if (initializedName != NULL){
				// Get Type for the variable
				SgType* variableType = initializedName->get_type();
				string var_type_str = variableType->unparseToString();
				// Now check if this is a global variable or an static class member
                SgScopeStatement* scope = variableDeclaration->get_scope();
                if (isSgGlobal(scope) != NULL){
					cerr << "Found a global var: " << var_type_str + " " + initializedName->get_name().getString() << endl;	
                    global_vars.insert( var_type_str + " " + initializedName->get_name().getString() );
				}
                if (isSgClassDefinition(scope) != NULL)
                {
					// Now check if it is a static data member
                    if (variableDeclaration->get_declarationModifier().get_storageModifier().isStatic() == true){
						cerr << "Found a static global var: " << var_type_str + " " + initializedName->get_name().getString() << endl;	
						global_vars.insert( var_type_str + " " + initializedName->get_name().getString() );
					}
				}
            }	
            i++;
		}
    }

	return inh_attr;
}

/* Required for Bottom Up parsing virtual function - Will not be used */
int Extractor::evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
												 SubTreeSynthesizedAttributes syn_attr_list){
	return 0;
}

void runExtraction( SgProject *ast ){
	ROSE_ASSERT( ast != NULL );
	InheritedAttribute inhr_attr;
	Extractor fileExtractor;
	/* Traverse all files and their ASTs in Top Down fashion (Inherited Attr) and extract loops */
	fileExtractor.traverseInputFiles( ast, inhr_attr );
}
	

int main( int argc, char *argv[] ){
	vector<string> argvList(argv + 1, argv + argc);
	SgProject *project = NULL;

	/* Create AST and pass to the extraction functions */
	project = frontend(argc, argv);
    runExtraction(project);

	delete project;
	return 0;
}
