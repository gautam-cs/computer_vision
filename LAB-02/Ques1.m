clc;
pkg load image;
img_double=im2double(imread("cameraman.tif"));

disk=fspecial("disk");
img_disk=conv2(img_double,disk);


disk_pinv=pinv(disk);
img_disk_pinv=conv2(img_disk,disk_pinv,"valid");

%rmse
[row,column]=size(img_double);
rmse_value=sqrt((sum(sum(img_double-img_disk_pinv).^2))/(row*column));
rmse_map=img_disk_pinv-img_double;
rmse_map_image=(rmse_map);

rmse_value
mean=mean2(rmse_map_image)
variance=var(rmse_map_image)

subplot(2,2,1), imshow(img_double);
title("original image")

subplot(2,2,2), imshow(img_disk);
title("disk filter is added")

subplot(2,2,3), imshow(img_disk_pinv,[]);
title("Pinverse of disk image filter")

subplot(2,2,4), imshow(rmse_map_image,[]);
title("rmse map image")



