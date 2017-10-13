img = im2double(imread('cameraman.tif'));
len = size(img);
mu = zeros(len,len);
sigma = zeros(len,len);

subplot(1,3,1);
imshow(img);
title('Original Image');

for m = 1:len(1)
    for n = 1:len(2)
        c = 0;
        for k = 0:2
            for l = 0:2
                if((m - k > 0) && (n - l > 0))
                     c = c + img(m-k,n-l); 
                     mu(m,n) = c;
                end
            end
        end
        mu(m,n) = mu(m,n) / 9;
    end
end 

for m = 1:len(1)
    for n = 1:len(2)
        c = 0;
        for k = 0:2
            for l = 0:2
                if((m - k > 0) && (n - l > 0))
                     c = c + ( img(m-k,n-l) - mu(m,n) ) ^ 2; 
                     sigma(m,n) = c;
                end
            end
        end
        sigma(m,n) = sqrt(sigma(m,n) / 9);
    end
end 

v = mu ./ sigma;
scaled_image = img ./ v ;

subplot(1,3,2);
imshow(scaled_image);
title('Inverse Contrast Scaled image');

global_sigma = std(std(img));

v_s = img ./ global_sigma;

statistical_scaling_image = img ./ v_s;

subplot(1,3,3);
imshow(statistical_scaling_image);
title('Statistical Scaled Image');