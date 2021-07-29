clc
clear
clear all

r1=imread('E:\seker\ucak1.jpg')
r2=imread('E:\seker\ucak2.jpg')
figure,imshow(r1)
figure,imshow(r2)

fark=imsubtract(r1,r2)
figure,imshow(fark)

imgfark=imbinarize(fark,0.1)
figure,imshow(imgfark)

% alternatif çözüm
imgfark2=fark>20
figure,imshow(imgfark2)

imgfark=bwareaopen(imgfark2,30)
figure,imshow(imgfark)
se=strel('square',4)
imgDilate=imdilate(imgfark,se)
figure,imshow(imgDilate)

[etiketler,ucaksayisi]=bwlabel(imgDilate)

ucakozellikleri=regionprops(etiketler,'all')
merkezler=[ucakozellikleri.Centroid]

figure,imshow(r1)


x=merkezler(1:2:end)
y=merkezler(2:2:end)

hold on

plot(x,y,'yo','markersize',35,'linewidth',4)

figure,imshow(r2)

hold on
plot(x,y,'bo','markersize',30,'linewidth',4)




















