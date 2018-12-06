#include "predictor.h"

Predictor::Predictor(){
  cout << "mCompiler Predictor" << endl;
  int labels[4] = {1, -1, -1, -1};
  float trainingData[4][2] = { {501, 10}, {255, 10}, {501, 255}, {10, 501} };

  Mat trainingDataMat(4, 2, CV_32F, trainingData);
  Mat labelsMat(4, 1, CV_32SC1, labels);
  Ptr<SVM> svm = SVM::create();
  svm->setType(SVM::C_SVC);
  svm->setKernel(SVM::LINEAR);
  svm->setTermCriteria(TermCriteria(TermCriteria::MAX_ITER, 100, 1e-6));
  //! [init]
  //! [train]
  svm->train(trainingDataMat, ROW_SAMPLE, labelsMat);
  cout << "Training done" << endl;
  //! [train]

  // Data for visual representation
  int width = 512, height = 512;
  Mat image = Mat::zeros(height, width, CV_8UC3);

  // Show the decision regions given by the SVM
  //! [show]
  Vec3b green(0,255,0), blue(255,0,0);
  for (int i = 0; i < image.rows; i++)
  {
      for (int j = 0; j < image.cols; j++)
      {
          Mat sampleMat = (Mat_<float>(1,2) << j,i);
          float response = svm->predict(sampleMat);
          if (response == 1){
              image.at<Vec3b>(i,j)  = green;
          } else if (response == -1){
              image.at<Vec3b>(i,j)  = blue;
          }
      }
  }

}
