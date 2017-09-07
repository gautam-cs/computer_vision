clc;
pkg load image;
img_double=im2double(imread("cameraman.tif"));
subplot(1,2,1);
imshow(img_double);
title("original image")


[row,column]=size(img_double);
tx=10;
ty=15;
%translate function
mat=zeros(row,column);
for i = 1:row-tx
  for j =1:column-ty
    mat(i,j)=img_double(i+tx,j+ty); 
  endfor
endfor
subplot(1,2,2);
imshow(mat);
title("traslated image");





