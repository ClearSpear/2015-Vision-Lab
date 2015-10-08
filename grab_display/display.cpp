#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include "highgui.h"
#include <opencv2/opencv.hpp>

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <time.h>

using namespace std;
using namespace cv;
int frequency = 2;
int myblur= 2;
int lowedge= 100;
int highedge= 300;
int BlueMax= 255;
int BlueMin= 0;
int RedMax= 255;
int RedMin= 0;
int GreenMax= 255;
int GreenMin= 0;
int dilation_size = 0;


int main() {
	namedWindow("Original", WINDOW_AUTOSIZE);
	namedWindow("Parameters",WINDOW_AUTOSIZE);
	namedWindow("Red", WINDOW_AUTOSIZE);
	namedWindow("Green", WINDOW_AUTOSIZE);
	namedWindow("Blue", WINDOW_AUTOSIZE);
	namedWindow("RangeControl", WINDOW_AUTOSIZE);
	namedWindow("Tracking", WINDOW_AUTOSIZE);
	
	createTrackbar( "Kernel size:\n 2n + 1", "RangeControl", &dilation_size, 21);

	createTrackbar("BlueMax","RangeControl", &BlueMax,255);
	createTrackbar("BlueMin","RangeControl", &BlueMin,255);

	createTrackbar("RedMax","RangeControl", &RedMax,255);
	createTrackbar("RedMin","RangeControl", &RedMin,255);

	createTrackbar("GreenMax","RangeControl", &GreenMax,255);
	createTrackbar("Greenmin","RangeControl", &GreenMin,255);


	createTrackbar("Blur","Parameters", &myblur,10);
	createTrackbar("LowEdge","Parameters", &lowedge,1000);
	createTrackbar("HighEdge","Parameters", &highedge,2000);

	createTrackbar("Frequency","Parameters", &frequency,10);
   	VideoCapture inputVideo(0);
	
	if(!inputVideo.isOpened())
		cout << "Capture not open" << endl;

	Mat input;

	vector<Mat> channels;
	vector<Mat> temp2(3);

	int count = 0;
	bool isColor = true;

	Mat temp;
	Mat red;
	Mat green;
	Mat blue;

	inputVideo >> input;

	Mat zero = Mat::zeros(input.rows, input.cols, CV_8UC1);

	while(1) {

		inputVideo >> input;
		if(frequency == 0)
			frequency = 1;
		if(count % frequency == 0)
			isColor = !isColor;
		split(input, channels);


		/* if(!isColor) 
{	
			temp = channels[2];
			channels[2] = channels[0];
			channels[0] = temp;
			merge(channels, input);	
		} */

		

		imshow("Original", input);

		temp2[0] = channels[0];
		temp2[1] = zero;
		temp2[2] = zero;
		merge(temp2, blue);	
		imshow("Blue", blue);

		temp2[0] = zero;
		temp2[1] = channels[1];
		merge(temp2, green);
		imshow("Green", green);

		temp2[1] = zero;
		temp2[2] = channels[2];
		merge(temp2, red);
		imshow("Red", red);

		vector<Mat> comp(3);
		

      inRange(channels[0], BlueMin, BlueMax, comp[0]);
		inRange(channels[1], GreenMin, GreenMax, comp[1]);
		inRange(channels[2], RedMin, RedMax, comp[2]);

		Mat btrack;

		bitwise_and(comp[0], comp[1], btrack);
		bitwise_and(btrack, comp[2], btrack);

		int dilation_type = MORPH_RECT;
		

		Mat element = getStructuringElement( dilation_type,
														  Size( 2*dilation_size + 1, 2*dilation_size+1 ),
														  Point( dilation_size, dilation_size ) );
		

		dilate(btrack, btrack, element);
		imshow("Tracking", btrack);
		
      //BlueMax 73, BlueMin 0, RedMax 174, RedMin 127, GreenMax 75, GreenMin 0 
		

		/* GaussianBlur(input, input, Size(9,9), myblur); 
		imshow("Blur", input); */
		
		
Canny(input, temp, lowedge, highedge, 3);
		imshow("Edges", temp);
count++;
		if(waitKey(5) >= 0) break;
   	}
	return 0;
}