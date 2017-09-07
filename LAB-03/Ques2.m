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


for i=1:size(C,1)
    for j=1:size(C,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=2*img(x,y,:);  
         end

    end
end

imshow(C);