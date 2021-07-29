clc;
clear;
clear all;
r1 = imread('ucak1.jpg');
r2 = imread('ucak2.jpg');
figure,imshow(r1);
figure,imshow(r2);
different = imsubtract(r1,r2);
figure,imshow(different);
imagSB = imbinarize(different,20/255);
figure,imshow(imagSB);
img_different2 = different >20;
figure,imshow(img_different2);
different1 = bwareaopen(img_different2,30)
figure,imshow(different1)