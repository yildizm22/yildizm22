clc;
clear;
clear all;
imag_grey = imread('paralar.png');
imshow(imag_grey);
image_wd = imbinarize(imag_grey);
imshow(image_wd);
image_wd = imfill(image_wd,'hole');
imshow(image_wd)
sinirlar = bwboundaries(image_wd);
nesnesayisi = length(sinirlar);
text(10,10,['Bulunan nesne sayisi : ',num2str(nesnesayisi)],'color','y');

hold on;
[labels,numbers_samples] = bwlabel(image_wd,8);
sample_data = regionprops(labels,'Area','BoundingBox','Centroid');
area_values = [sample_data.Area];
count = 0;
for i=1:nesnesayisi
   sinir  = sinirlar{i}
   plot(sinir(:,2),sinir(:,1),'c','LineWidth',3);
   a(i) = sample_data(i).Area
   cent = sample_data(i).Centroid;
   x = cent(1);
   y = cent(2);
    if  a(i) > 2000
          text(x-10,y,'1 TL','FontSize',15) 
            count = count +1;
    else 
        count = count +0.5;
          text(x-10,y,'50 KURUS','FontSize',15,'FontWeight','bold') 
    end
end

 

title(['Toplam para: ',num2str(count),'TL'])