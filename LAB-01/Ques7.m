clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);

subplot(2,2,1);
imshow(img_double);
title("original image");

subplot(2,2,2);
j=imnoise (img_double, "Gaussian");
imshow(j);
title("Gaussian std density");

subplot(2,2,3);
j=imnoise (img_double, "Gaussian",0.02);
imshow(j);
title("Gaussian, density=0.02");

subplot(2,2,4);
j=imnoise (img_double, "Gaussian",0.09);
imshow(j);
title("Gaussian, density=0.09");