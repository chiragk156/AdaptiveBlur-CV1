Name: Chirag Khurana
Entry No.: 2016CSB1037
CSL462 Assignment-1
Tools Required: Matlab
===================================How to Run===================================
Run main.m file. It will provide two options:
	1. Second Order Edge Detection
	2. Adaptive Blur
For 1.:
	1. Enter Image path without ''.
	Example: C:\Users\chira\Desktop\selfie.jpg
	2. Then Enter sigma idealy(0.1 to 2)

For 2.:
	1. Enter Image path without ''.
	Example: C:\Users\chira\Desktop\selfie.jpg
	2. Then Enter path to store output image without ''.
	Example: C:\Users\chira\Desktop\selfieoutput

==============================To Use Functions===================================
1. A2016csb1037_SecondOrderEdge(image,sigma,binary)
	image => It is variable which is storing image after imread.
	sigma => For gaussian filter idealy(0.1 to 2)
	binary => 0 , For output with edge magnitudes.
		  1 , For binary image output.
	It will return you output image.

2.  A2016csb1037_ComputeAdaptiveBlur(img,filepath)
	image => It is variable which is storing image after imread.
	filepath => It is path including image name to store output image.
	Example: 'C:\Users\chira\Desktop\selfieoutput'

======================================End=======================================