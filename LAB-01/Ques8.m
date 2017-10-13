clc;

pkg load image;
img=imread('cameraman.tif');
img_double=im2double(img);
subplot(2,2,1);
imshow(img_double);
title("original image");


f=fspecial("Gaussian",3,0.3);
subplot(2,2,2);
j=imfilter(img_double,f);
imshow(j);
title("1st low pass(Gaussian)");

subplot(2,2,3);
for k=2:10
  j(k)=imfilter(j(k-1),f);
end
imshow(j);
title("2nd low pass(Gaussain) ");

subplot(2,2,4);
for k=1:100
  k=imfilter(j,f);
end

imshow(j);
title("3rd low pass(Gaussian)");