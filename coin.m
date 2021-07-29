clc;
clear;
clear all;


image = imread('paralar.png');

imshow(imread('coins.png'));

new_image = imfill(image,'holes');

[labels, number]=bwlabel(double(new_image));

prop=regionprops(labels,'Area','Centroid');
area = [prop.Area]

count=0;

hold on

for n=1:size(prop,1) 
    kurus=prop(n).Centroid;
    X=kurus(1);Y=kurus(2);
    if prop(n).Area>2000
        count=count+5;
    else
        count=count+10;
    end
end
hold on
title(['Toplam para: ',num2str(count),' kurus'])