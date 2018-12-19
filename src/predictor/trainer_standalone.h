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

vector<string> feature_labels;

int feature_vector_size;
int instances_count;

Mat trainingDataMat;
Mat labelMat;
Mat testingDataMat;

Ptr<RTrees> rfmodel;

#define MAXCATEGORIES                                                          \
  15 // max number of categories (use sub-optimal algorithm for larger numbers)
#define MAXDEPTH 25          // max depth
#define MINSAMPLECOUNT 5     // min sample count
#define REGRESSIONACCURACY 0 // N/A here
#define ACTIVEVARCOUNT                                                         \
  4 // number of variables randomly selected at node and used to find the best
    // split(s).
#define CALCULATEVARIMPORTANCE true // calculate variable importance
#define TERMCRITERIA                                                           \
  (CV_TERMCRIT_ITER | CV_TERMCRIT_EPS) // termination criteria
