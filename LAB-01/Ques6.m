clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);

subplot(2,2,1);
imshow(img_double);
title("original image");

subplot(2,2,2);
j=imnoise (img_double, "salt & pepper");
imshow(j);
title("salt & paper noise std density");

subplot(2,2,3);
j=imnoise (img_double, "salt & pepper",0.02);
imshow(j);
title("salt & paper noise, density=0.02");

f=fspecial("gaussian",3);
j=imnoise (img_double, "salt & pepper",0.09);
j=imfilter(j,f);
subplot(2,2,4);
imshow(j);
title("gaussian filter ");