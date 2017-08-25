clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,3,1);
imshow(img_double);
title("original image");


f=fspecial("log",3,0.5);
subplot(2,3,2);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=3, STD=0.5");

f=fspecial("log",3,0.4);
subplot(2,3,3);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=3, STD=0.4");

f=fspecial("log",3,0.9);
subplot(2,3,4);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=3, STD=0.9");

f=fspecial("log",3,0.6);
subplot(2,3,5);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=3, STD=0.6");

f=fspecial("log",9,0.5);
subplot(2,3,6);
j=imfilter(img_double,f);
imshow(j);
title("(LoG) imfilter, dim=9, STD=0.5");