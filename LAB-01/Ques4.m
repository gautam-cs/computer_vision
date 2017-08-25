clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,2,1);
imshow(img_double);
title("original image");


f=fspecial("log",3);
subplot(2,2,2);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=3");

f=fspecial("log",5);
subplot(2,2,3);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=5");

f=fspecial("log",9);
subplot(2,2,4);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=9");

