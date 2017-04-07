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

class LoopExtractor : public SgTopDownBottomUpProcessing<InheritedAttribute, int> {
	set<string> header_set;

public:
	LoopExtractor() { }
	virtual InheritedAttribute evaluateInheritedAttribute( SgNode *astNode, 
														   InheritedAttribute inh_attr );
	virtual int evaluateSynthesizedAttribute( SgNode *astNode, InheritedAttribute inh_attr,
                                              SubTreeSynthesizedAttributes syn_attr_list );

};

class LoopInfo {
public:
  SgForStatement *loop_;
  int loop_depth_;
  bool has_math_lib_call_;

  LoopInfo(SgForStatement *loop, int depth, bool hasCall)
      : loop_(loop), loop_depth_(depth), has_math_lib_call_(hasCall) {}

  bool operator<(const LoopInfo &other) const { return loop_ < other.loop_; }
};


#endif
