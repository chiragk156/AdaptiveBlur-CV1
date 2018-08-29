function output = A2016csb1037_SecondOrderEdge(image,sigma,binary)
%Marr-Heledrith edge detector
image = rgb2gray(image);
[m,n]=size(image);
f = @(x,y) exp(-(x^2+y^2)/(2*sigma^2))/(2*pi*sigma^2);
gauss_filter = [f(-1,1),f(0,1),f(1,1);f(-1,0),f(0,0),f(1,0);f(-1,-1),f(0,-1),f(1,-1)];
image = imfilter(image,gauss_filter,'symmetric', 'conv');
image = double(image);
log_output = double(zeros(m,n));
for i=2:1:m-1
    for j=2:1:n-1
        log_output(i,j) = image(i,j-1)+image(i+1,j)+image(i-1,j)+image(i,j+1)-4*image(i,j);
    end
end

output = zeros(m,n);
% Zero Crossing
for i=2:1:m-1
    for j=2:1:n-1
        if(log_output(i-1,j)*log_output(i+1,j)<0)
            output(i,j)=log_output(i,j);
        elseif(log_output(i,j-1)*log_output(i,j+1)<0)
            output(i,j)=log_output(i,j);
        elseif(log_output(i-1,j-1)*log_output(i+1,j+1)<0)
            output(i,j)=log_output(i,j);
        elseif(log_output(i+1,j-1)*log_output(i-1,j+1)<0)
            output(i,j)=log_output(i,j);
        end
    end
end
output = uint8(output);
if(binary==1)
    output = output>0;
end
end
