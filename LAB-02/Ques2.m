clc;
pkg load image;
img_double=im2double(imread("cameraman.tif"));

disk=fspecial("disk");
img_disk=conv2(img_double,disk);

img_disk_noise=imnoise(img_disk,"gaussian",0,0.001);

disk_pinv=pinv(disk);
img_disk_noise_pinv=conv2(img_disk_noise,disk_pinv,"valid");


subplot(2,2,1), imshow(img_double);
title("original image")

subplot(2,2,2), imshow(img_disk);
title("disk image")

subplot(2,2,3), imshow(img_disk_noise);
title("noise is added in the blurred image");

subplot(2,2,4), imshow(img_disk_noise_pinv,[]);
title("noisy image is deblurred")
