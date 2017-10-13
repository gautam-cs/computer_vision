clc;

rows=256;
cols=256;
image=zeros(rows,cols);
mid_X=rows/2;
mid_Y=cols/2;
image(mid_X,mid_Y)=255;
for r=1:mid_X
  for x=1:rows
    for y=1:cols
      if((x-mid_X)^2 + (y-mid_Y)^2 <= (mid_X+1-r)^2)
        image(x,y)=127+r;
        if (x^2)+(y^2)>(r^2);
          z=sqrt(r^2-(x^2+y^2));
          p=(-x)/z;
          q=(-y)/z;
        end
      end
    end
  end
end

%imshow(image,[]);
%image=im2double(image);  
%imwrite(image,"sphere.jpeg");