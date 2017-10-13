clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,2,1);
imshow(img_double);
title("original image");


f=fspecial("gaussian",3);
subplot(2,2,2);
j=imfilter(img_double,f);
imshow(j);
title("Low pass(gaussian) image");

f=fspecial("laplacian",0.3);
subplot(2,2,3);
j=imfilter(img_double,f);
imshow(j);
title("high pass(laplacian) image");


subplot(2,2,4);
A=[-1 -1 -1; -1 17 -1; -1 -1 -1];
j=conv2(img_double,A);
imshow(j);
title("high boost filter image");

