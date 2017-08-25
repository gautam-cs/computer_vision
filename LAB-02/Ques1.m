img_double=im2double(imread("cameraman.tif"));
subplot(2,2,1);
imshow(img_double);


disk=fspecial("disk");
img_disk=imfilter(img_double,disk);
subplot(2,2,2);
imshow(img_disk);


disk_pinv=pinv(disk);
img_disk_pinv=imfilter(img_disk,disk_pinv);
subplot(2,2,3);
imshow(img_disk_pinv,[]);


subplot(2,2,4);
imshow(img_disk,[]);



%rmse
[row,column]=size(img_double);
img_rms=sqrt(sum(sum(img_double-img_disk_pinv).^2)/(row*column));
img_rms

