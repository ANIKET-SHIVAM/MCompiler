#ifndef EXTRACTOR_H_
#define EXTRACTOR_H_

#include <fstream>
#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>

//#include "defs.h"
#include "rose.h"
#include "ASTtools.hh"

using namespace std;

#define SUCCESS true
#define FAIL    false

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
	set<string> header_set;
	set<string> global_vars;
	ofstream loop_file_buf;
public:
	Extractor() {}
	string getFilePath( const string &fileNameWithPath );
	string getFileName( const string &fileNameWithPath );
	string getFileExtn( const string &fileNameWithPath );
	int getAstNodeLineNum( SgNode *const &astNode );
	string getExtractionFileName( SgNode *astNode );
	void printHeaders( SgNode *const &astNode );
	void printGlobalsAsExtern( SgNode *const &astNode );

	/* Important functions */ 
	void extractLoops( SgNode *astNode );
	virtual InheritedAttribute evaluateInheritedAttribute( SgNode *astNode, 
														   InheritedAttribute inh_attr );
	virtual int evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
                                              SubTreeSynthesizedAttributes syn_attr_list );

};

/* Must contain all info regarding the current loop */
class LoopInfo : public Extractor {
	SgNode *astNode;
	SgForStatement *loop;
	string func_name;	
public:
	LoopInfo( SgNode *astNode, SgForStatement *loop, string func_name )
		: astNode(astNode), loop(loop), func_name(func_name) {}
	string getFuncName() { return func_name; }
	bool operator < ( const LoopInfo &other ) const { return loop < other.loop; }
	void printLoopFunc( ofstream &loop_file_buf );
	void addLoopFuncAsExtern();	// In Base file
	void addLoopFuncCall();		// In Base file
};


#endif
