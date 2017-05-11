#ifndef EXTRACTOR_H_
#define EXTRACTOR_H_

#include "driver/common.h"

using namespace std;

typedef enum src_lang_enum{
	src_lang_C       = 0,
	src_lang_CPP     = 1,
	src_lang_FORTRAN = 2,
}src_lang;

class InheritedAttribute {
public:
	int loop_nest_depth_;
	int scope_depth_;

	InheritedAttribute() : loop_nest_depth_(0), scope_depth_(0) {}

	InheritedAttribute(const InheritedAttribute &other) {
		loop_nest_depth_ = other.loop_nest_depth_;
		scope_depth_ = other.scope_depth_;
	}
};

class SynthesizedAttribute {
public:
  SynthesizedAttribute() {}
};

class Extractor : public SgTopDownBottomUpProcessing<InheritedAttribute, int> {
	string mCompiler_file_path; 
	string mCompiler_file_name; 
	string mCompiler_file_extn;
	string loopTimingVarSuffix = "accumulatorTime_";
	SgScopeStatement* main_scope = NULL;
	bool nonVoidMain = false;
	SgGlobal *global_node; // Needed to add the extern calls
	set<SgNode*> astNodesCollector; //Required to not add loop functions on Ast Post Processing
	vector<SgStatement*> externLoopFuncDefinitionsAdd;
	set<string> header_set;
	set<string> global_vars;
	src_lang src_type;
public:
	bool mainFuncPresent = false;	
	vector<string> *loop_funcName_vec = new vector<string>;
	//ofstream loop_file_buf_profile;
	//ofstream loop_file_buf_profile;
	ofstream header_file_buf;
	ofstream header_code_file_buf;
public:
	Extractor() {};
	Extractor( const vector<string> &argv );

	src_lang getSrcType() { return src_type; }
	SgGlobal* getGlobalNode() { return global_node; }
	string getDataFolderPath() { return mCompiler_data_folder_path; };
	string getLoopTimingVarSuffix() { return loopTimingVarSuffix; };

	string getFilePath() { return mCompiler_file_path; };
	string getFileName() { return mCompiler_file_name; };
	string getFileExtn() { return mCompiler_file_extn; };
	string getFilePath( const string &fileNameWithPath );
	string getFileName( const string &fileNameWithPath );
	string getFileExtn( const string &fileNameWithPath );
	int getAstNodeLineNum( SgNode *const &astNode );
	string getExtractionFileName( SgNode *astNode, bool isProfileFile );
	void printHeaders( ofstream& loop_file_buf );
	void printGlobalsAsExtern( ofstream& loop_file_buf );
	void addExternDefs( SgFunctionDeclaration *func );
	void addPostTraversalDefs(); 
	void generateHeaderFile(); 
	void addTimingFuncCallVoidMain();
	void addTimingFuncCallNonVoidMain( SgStatement* returnStmt );

	/* Important functions */
	void extractLoops( SgNode *astNode );
	virtual InheritedAttribute evaluateInheritedAttribute( SgNode *astNode, 
														   InheritedAttribute inh_attr );
	virtual int evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
                                              SubTreeSynthesizedAttributes syn_attr_list );

};

/* Must contain all info regarding the current loop */
class LoopInfo {
	Extractor& extr;
	SgNode *astNode;
	SgForStatement *loop;
	string func_name;
	SgScopeStatement *loop_scope;
	vector<string> scope_vars_str_vec;
	vector<SgVariableSymbol*> scope_vars_symbol_vec;
	vector<SgInitializedName*> scope_vars_initName_vec;
	set<SgFunctionDeclaration *> scope_funcCall_vec;
public:
	LoopInfo( SgNode *astNode, SgForStatement *loop, string func_name, Extractor& e )
		: extr(e) ,astNode(astNode), loop(loop), func_name(func_name) {}
	string getFuncName() { return func_name; }
	bool isDeclaredInInnerScope( SgScopeStatement *var_scope );
	void getVarsInScope();
	bool hasFuncCallInScope();
	void addScopeFuncAsExtern( string &externFuncStr );

	void printLoopFunc( ofstream& loop_file_buf, bool isProfileFile );
	void pushPointersToLocalVars( ofstream& loop_file_buf );
	void popLocalVarsToPointers( ofstream& loop_file_buf );
	void addLoopFuncAsExtern();	// In Base file
	void addLoopFuncCall();	// In Base file
};

#endif
