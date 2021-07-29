clc;
clear;
clear all;
rgb_photo = imread('sekerler.bmp') %resmı yukeldık
figure,imshow(rgb_photo); %goruntuleme komutu
gri = rgb2gray(rgb_photo);
figure,imshow(gri);
se = strel('disk',15)

arkaplan = imclose(gri,se)
figure,imshow(arkaplan);
farkgoruntu = imsubtract(arkaplan,gri)
figure,imshow(farkgoruntu);
imgsekerlersb = imbinarize(farkgoruntu)
figure,imshow(imgsekerlersb);
imgsekerlersb = imfill(imgsekerlersb,'holes')
figure,imshow(imgsekerlersb);
[etiketler,nesnesayisi] = bwlabel(imgsekerlersb,4);
nesneverileri =  regionprops(etiketler,'Eccentricity','Area','BoundingBox')
alandegerleri = [nesneverileri.Area];
tuhaflik = [nesneverileri.Eccentricity];
minalan = mean(alandegerleri)-0.25*std(alandegerleri);
bozukalanIndexleri = find(alandegerleri<minalan & tuhaflik > 0.5);

bozukveriler = nesneverileri(bozukalanIndexleri)
figure;
imshow(rgb_photo);
hold on;
for i=1:length(bozukalanIndexleri)
    rect = rectangle('position',bozukveriler(i).BoundingBox,'LineWidth',2)
    set(rect,'edgecolor',[0 0 1]);
    
end
% set(rect,'edgecolor',[0 0 1]);
hold off;
