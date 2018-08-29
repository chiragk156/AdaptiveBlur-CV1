function output = A2016csb1037_ExtractStatistics(edge_img,img_part)
%It will return value of sigma to blur the image
avg_density = mean(mean(edge_img));
avg_img_part = mean(mean(img_part));
if(avg_img_part<min(4,avg_density/2))
    output = min(5,(min(4,avg_density/2)-avg_img_part));
elseif(avg_img_part<=avg_density/2)
    output = 2;
else
    output=0;
end
end

