clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,3,1);
imshow(img_double);
title("original image");

im_comp=imcomplement(img_double);
subplot(2,3,2);
imshow(im_comp);
title("complement image");

im_adj=imadjust(img_double);
subplot(2,3,3);
imshow(im_adj);
title("imadjust image");

im_adj_1=imadjust(img_double,[0;1],[0;0.5]);
subplot(2,3,4);
imshow(im_adj_1);
title("imadjust1 image");

im_adj_2=imadjust(img_double,[0;0.5],[0.5;0]);
subplot(2,3,5);
imshow(im_adj_2);
title("imadjust2 image");

im_adj_3=imadjust(img_double,[0;0.5],[0;1]);
subplot(2,3,6);
imshow(im_adj_3);
title("imadjust3 image");

      