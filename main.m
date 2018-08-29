disp('1. Second Order Edge Detection')
disp('2. Adaptive Blur')
x = input('Enter option: ');
if(x==1)
   impath = input('Enter image path: ','s');
   img = imread(impath);
   sigma = input('Enter sigma idealy(0.1 to 2):');
   figure()
   imshow(A2016csb1037_SecondOrderEdge(img,sigma,0))
   title('With Edge magnitude');
   figure()
   imshow(A2016csb1037_SecondOrderEdge(img,sigma,1))
   title('Binary Image');
elseif(x==2)
    impath = input('Enter image path: ','s');
    img = imread(impath);
    filepath = input('Enter path to store image: ','s');
    A2016csb1037_ComputeAdaptiveBlur(img,filepath);
else
    disp('Please try again!')
end
