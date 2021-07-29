clc
clear 
clear all

r1=imread('E:\seker\ucak1.jpg')
r2=imread('E:\seker\ucak2.jpg')
figure,imshow(r1)
figure,imshow(r2)
fark=imsubtract(r1,r2)
figure,imshow(fark)
imgfark=imbinarize(fark,20/255)
figure,imshow(imgfark)
imgfark2=fark>20
figure,imshow(imgfark2)
imgfark3=bwareopen(imgfark2,30)
figure,imshow(imgfark3)
