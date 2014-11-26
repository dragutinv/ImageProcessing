function [ CA,CH,CV,CD ] = DWT( )
%DWT Summary of this function goes here
%   Detailed explanation goes here
clear all;
close all;

i = imread('lena.jpg');
sX=size(i);
[LL,LH,HL,HH]=dwt2(i,'db1');

subplot(3,3,1);imshow(i);title('Original image');
subplot(3,3,2);imshow(LL);title('LL band of image');
subplot(3,3,3);imshow(LH);title('LH band of image');
subplot(3,3,4);imshow(HL);title('HL band of image');
subplot(3,3,5);imshow(HH);title('HH band of image');

% inverse DWT 
X = idwt2(LL,LH,HL,HH,'db1',sX);
subplot(3,3,6);imshow(X);title('Inverse DTW image');
end
