#ifndef INC_SCALEFACTOR_HPP__
#define INC_SCALEFACTOR_HPP__

#include <opencv2/core/core.hpp>
#include <vector>

template<class MatT>
void scalefactor(MatT inputimage, cv::Size objectsize, 
      cv::Size minsize, cv::Size maxsize, float scaleFactor, 
      std::vector<MatT> &images, std::vector<float> &scales);

#include "scalefactor.cpp"

#endif
