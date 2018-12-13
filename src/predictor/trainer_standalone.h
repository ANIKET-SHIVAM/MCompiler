#include <fstream>
#include <iostream>
#include <string>

#include <opencv2/core.hpp>
#include <opencv2/ml.hpp>

#include "driver/csv.h"

using namespace std;
using namespace cv;
using namespace cv::ml;

// Taken from driver/common.h
typedef enum {
  compiler_ICC   = 0,
  compiler_GCC   = 1,
  compiler_LLVM  = 2,
  compiler_PGI   = 3,
  compiler_Pluto = 4,
  compiler_Polly = 5
} compiler_type;

string input_file;
string trained_model_file;

int feature_vector_size;
int instances_count;

Mat trainingDataMat;
Mat labelMat;

vector<string> features_name_vector;
