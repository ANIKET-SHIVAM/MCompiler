#ifndef DRIVER_H_
#define DRIVER_H_

#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

#include "extractor/extractor.h"

using namespace std;

class Driver {
	Extractor *extr;
public:
	Driver() {};
	void initiateExtractor( string file_name );
	string executeCommand( string cmd_str );

};

#endif  
