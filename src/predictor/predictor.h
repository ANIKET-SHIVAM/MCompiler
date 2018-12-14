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
  int feature_vector_size;

  vector<string> feature_labels;

  Mat instanceMat;
  Ptr<RTrees> rfmodel_trained;

public:
  Predictor();
  void loadModel();
  bool filterFeatures(string hotspot_name);
  void predictCandidate();
};
#endif
