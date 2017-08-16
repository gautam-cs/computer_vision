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
title("High pass(gaussian) image");

f=fspecial("laplacian",0.3);
subplot(2,2,3);
j=imfilter(img_double,f);
imshow(j);
title("low pass(laplacian) image");

f=fspecial("laplacian",0.3);
subplot(2,2,3);
j=imfilter(img_double,f);
imshow(j);
title("low pass(laplacian) image");

