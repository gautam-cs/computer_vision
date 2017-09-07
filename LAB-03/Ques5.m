clc;
pkg load image;

img=imread('cameraman.tif'); 

[rowsi,colsi]= size(img); 
angle=60;
rads=2*pi*angle/360;  

%setting the dimension of array for rotation image
rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));                     

C=uint8(zeros([rowsf colsf 3 ]));
%centre of image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);

midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);

a=1, b=0.5, c=0.5, d=1;
tx=10;
ty=15;
for i=1:size(C,1)-tx
    for j=1:size(C,2) -ty                                                     

         x= (i-midx)*a+(j-midy)*c;                                       
         y= -(i-midx)*b+(j-midy)*d;                             
         x=(round(x)+xo)+tx;
         y=(round(y)+yo)+ty;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=img(x,y,:);  
         end

    end
end

subplot(1,2,1),imshow(img);
title("original image");
subplot(1,2,2),imshow(C);
title("using affine function where a=1, b=0.5, c=0.5, d=1;");