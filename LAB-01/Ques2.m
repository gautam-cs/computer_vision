clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,2,1);
hist(img_double);
title("Histogram of original image");

im_gamma=imadjust(img_double,[],[],20);
subplot(2,2,2);
imshow(im_gamma);
hist(im_gamma);
title("histogram for gamma>1");

im_gamma=imadjust(img_double,[],[],0.20);
subplot(2,2,3);
imshow(im_gamma);
hist(im_gamma);
title("histogram for gamma<1");

im_gamma=imadjust(img_double,[],[],1);
subplot(2,2,4);
imshow(im_gamma);
hist(im_gamma);
title("histogram for gamma=1");
