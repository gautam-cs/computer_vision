clc;
pkg load image;
img_double=im2double(imread("cameraman.tif"));

disk=fspecial("disk");
disk_noise=imnoise(disk,"gaussian",0,0.001);
img_noise_disk=conv2(disk_noise,img_double);


disk_pinv=pinv(disk);
img_disk_noise_pinv=conv2(img_noise_disk,disk_pinv,"valid");


subplot(1,3,1), imshow(img_double);
title("original image")

subplot(1,3,2), imshow(img_noise_disk);
title("(A+N)*x")

subplot(1,3,3), imshow(img_disk_noise_pinv,[]);
title("debluring the disk image")
