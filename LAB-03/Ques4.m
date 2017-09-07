clc;
pkg load image;

img=imread('cameraman.tif'); 

[rowsi,colsi]= size(img); 
angle=30;

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

tx=10;
ty=15;
for i=1:size(C,1)-tx
    for j=1:size(C,2) -ty                                                     

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=2*(round(x)+xo)+tx;
         y=2*(round(y)+yo)+ty;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=img(x,y,:);  
         end

    end
end

imshow(C);