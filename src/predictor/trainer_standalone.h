#include <iostream>
#include <fstream>
#include <string>

#include <opencv2/core.hpp>
#include <opencv2/ml.hpp>

#include "driver/csv.h"

using namespace std;
using namespace cv;
using namespace cv::ml;

string input_file;
string trained_model_file;

