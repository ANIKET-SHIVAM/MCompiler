#include "predictor.h"

/* Load trained model */
void Predictor::loadModel() {
  if (!isFileExist(mCompiler_trained_model_path)) {
    cerr << "Predictor: No trained model found to make predictions at:" 
         << mCompiler_trained_model_path << endl;
    exit(EXIT_FAILURE);
  }
  if (!isFileExist(mCompiler_trained_model_features_path)) {
    cerr << "Predictor: No trained model features found to make predictions at:" 
         << mCompiler_trained_model_features_path << endl;
    exit(EXIT_FAILURE);
  }

  string line;
  ifstream feature_file(mCompiler_trained_model_features_path);
  while (getline(feature_file,line)) {
    feature_labels.push_back(line);
  }
  feature_file.close();

  feature_vector_size = feature_labels.size();
  instanceMat = Mat(1,feature_vector_size,CV_32F);

  rfmodel_trained = RTrees::create();
  rfmodel_trained = RTrees::load(mCompiler_trained_model_path); 
}

void Predictor::filterFeatures() {


}

void Predictor::predictCandidate() {
  //int target_compiler = rfmodel_trained->predict(instanceMat);
}

Predictor::Predictor() {
  loadModel();
  predictCandidate();
}
