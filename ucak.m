clc;
clear;
clear all;
r1 = imread('ucak1.jpg');
% figure,imshow(r1);
r2 = imread('ucak2.jpg');
% figure,imshow(r2);
difference = imsubtract(r1,r2);
% figure,imshow(difference);
imagWD = imbinarize(difference,1/255);
difference2 = difference > 20;
% figure,imshow(difference2)
%Alternatif Çözüm1
different1 = bwareaopen(difference2,50);
figure,imshow(different1)
%alternatif çözüm2
% img_difference = difference >25; %20 den buyuklerı 1 yap
% figure,imshow(img_difference);
%resimler bozuk bu yuzden pıkselllerı doldurmamız gerekli...
StructElement = strel('square',4);
imgDilate = imdilate(different1,StructElement);
figure,imshow(imgDilate);
[labels,number_samples] = bwlabel(imgDilate,8);
sample_data = regionprops(labels,'all');
centroids = [sample_data.Centroid];

% sample_data = regionprops(labels,'BoundingBox');
% Boundaries = sample_data.BoundingBox;
% for i=1:length(sample_data)
%     rect = rectangle('position',Boundaries,'LineWidth',2)
%     set(rect,'edgecolor',[0 0 1]);
%     
% end
figure,imshow(r1)
x = centroids(1:2:6);
y = centroids(2:2:6);
hold on;
plot(x,y,'yo','MarkerSize',35,'LineWidth',3);

hold off;
figure,imshow(r2);
hold on
x = centroids(1:2:6);
y = centroids(2:2:6);
hold on;
plot(x,y,'bo','MarkerSize',35,'LineWidth',3);
