clc;
clear;
clear all;
imag_plane = imread('ucak1.jpg')
figure,imshow(imag_plane);
imag_plane1 = imread('ucak2.jpg')
figure,imshow(imag_plane1);
different = imsubtract(imag_plane,imag_plane1)
figure,imshow(different);
[labels,numbers_samples] = bwlabel(different,8);
sample_data = regionprops(labels,'BoundingBox');
Boundaries = sample_data.BoundingBox;
for i=1:length(sample_data)
    rect = rectangle('position',Boundaries,'LineWidth',2)
    set(rect,'edgecolor',[0 0 1]);
    
end

