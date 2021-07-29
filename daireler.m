clc;
clear;
clear all;
imgrgb = imread('daireler1.png');
figure,imshow(imgrgb);
cetvel = imdistline;
delete(cetvel);
imggri = rgb2gray(imgrgb);
imshow(imggri);
[merkezler, yaricaplar] = imfindcircles(imgrgb,[20 25],'objectPolarity','Dark',...
    'Sensitivity',0.92); %yaricap araligi veirldi.
imshow(imgrgb)
h1 = viscircles(merkezler,yaricaplar) %bulunan cicrcle ları gösterme komutudur.
delete(h1)
[merkezler, yaricaplar] = imfindcircles(imgrgb,[20 25],'objectPolarity','Dark','Sensitivity',0.92,...
    'method','TwoStage');
% [merkezlerparlak, yaricaplarparlak] = imfindcircles(imgrgb,[20 25], 'objectPolarity',...
%     'bright','method','TwoStage');
% h2 = viscircles(merkezlerparlak,yaricaplarparlak,'color','b') %bulunan cicrcle ları gösterme komutudur.
[merkezlerparlak,yaricaplarparlak,parlaklikdegeri] = imfindcircles(imgrgb,[20 25],...
    'objectPolarity','bright','Sensitivity',0.92,'edgeThreshold',0.1)  %edge renk değişimi gradyani
viscircles(merkezlerparlak,yaricaplarparlak,'color','b');



