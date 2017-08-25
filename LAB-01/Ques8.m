clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,2,1);
imshow(img_double);
title("original image");


f=fspecial("laplacian",0.3);
subplot(2,2,2);
j=imfilter(img_double,f);
imshow(j);
title("1st low pass(laplacian)");

subplot(2,2,3);
j=imfilter(j,f);
imshow(j);
title("2nd low pass(laplacian) ");

subplot(2,2,4);
j=imfilter(j,f);
imshow(j);
title("3rd low pass(laplacian)");