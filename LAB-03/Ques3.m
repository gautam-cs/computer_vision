clc;
pkg load image;
img_double=im2double(imread("cameraman.tif"));

[row,column]=size(img_double);
img_reflect=zeros(size(img_double));
for i=1:row;
  for j=1:column;
    img_reflect(i,j)=img_double(i,column-j+1);
  endfor
endfor

img_reflect1=zeros(size(img_double));
for i=1:row;
  for j=1:column;
    img_reflect1(i,j)=img_double(row-i+1,j);
  endfor
endfor



subplot(1,3,1), imshow(img_double);
title("original image");

subplot(1,3,2), imshow(img_reflect);
title("reflection of image for y-axis");

subplot(1,3,3), imshow(img_reflect1);
title("reflection of image for x-axis");