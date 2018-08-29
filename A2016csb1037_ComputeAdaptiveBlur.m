function output = A2016csb1037_ComputeAdaptiveBlur(img,filepath)
%It will blur background
%It will return an image and also store it at given path
img_copy = img;
edge_output=double(A2016csb1037_SecondOrderEdge(img,0.2,0));
[m,n] = size(edge_output);
sum=0;
for i=1:1:m
    for j=1:1:n
      sum=sum+abs(edge_output(i,j));
    end
end
avg=sum/(m*n);
for i=1:1:m
    for j=1:1:n
      if(abs(edge_output(i,j))>=3*avg)
          edge_output(i,j)=255;
      else
          edge_output(i,j)=0;
      end
    end
end
edge_output = uint8(edge_output);
figure()
imshow(edge_output)
title('Binary Image to distinguish background and foreground')
for i=1:round(m/10):m-round(m/10)
    for j=1:round(n/10):n-round(n/10)        
        sigma = A2016csb1037_ExtractStatistics(edge_output,edge_output(i:i+round(m/10),j:j+round(n/10)));
        if(sigma~=0)
            img(i:i+round(m/10),j:j+round(n/10),:)=imgaussfilt(img(i:i+round(m/10),j:j+round(n/10),:),sigma);
        end
    end
end
output = img;
figure()
imshow(img_copy)
title('Original')
figure()
imshow(img)
title('Adaptive Blur')
imwrite(img,strcat(filepath,'.jpg'))
disp('Image is stored at given path')
end