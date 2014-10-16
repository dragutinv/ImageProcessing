function [ output_args ] = ImgInvert( input_args )
%IMGINVERT Summary of this function goes here
%   Detailed explanation goes here

img = imread('ImgDemos\Lenna.png');
subplot(5,5,1);
imshow(img);
title('Original');

subplot(5,5,2);
imshow(255 - img);
title('Invert');

subplot(5,5,3);
imshow(rgb2gray(img));
title('Gray');

subplot(5,5,4);
imshow(255-rgb2gray(img));
title('Gray Invert');


subplot(5,5,5);
imshow(img(:,:,1));
title('Red');

subplot(5,5,6);
imshow(img(:,:,2));
title('Green');

subplot(5,5,7);
imshow(img(:,:,3));
title('Blue');

end
