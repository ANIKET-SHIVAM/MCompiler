#ifndef PREDICTOR_H_
#define PREDICTOR_H_

#include "driver/common.h"
#include <opencv2/core.hpp>
#include <opencv2/ml.hpp>

using namespace std;
using namespace cv;
using namespace cv::ml;

class Predictor {
private:
public:
  Predictor();
  void trainModel();
  void predictCandidate();
};
#endif
