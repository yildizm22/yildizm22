clc;
clear;
clear all;
rgb_photo = imread('para.jpg') %resmı yukeldık
figure,imshow(rgb_photo); %goruntuleme komutu
grey = rgb2gray(rgb_photo);

se = strel('disk',30);
background = imclose(grey,se);
imshow(background);
subtract_image = imsubtract(background,grey);
imshow(subtract_image)
bw = imbinarize(subtract_image)
figure,imshow(bw);
bw = imfill(bw,'holes')
figure,imshow(bw);
bw2 = imerode(bw,se);
[labels,numbers_samples] = bwlabel(bw2,8);
sample_data = regionprops(labels,'Area','BoundingBox','Centroid');
area_values= [sample_data.Area];
boundary_val = [sample_data.BoundingBox];
count = 0;
for i=1:numbers_samples
    a = sample_data.Area;
    
    if a> 5000;
        count = count +1;
    elseif a< 5000 & a > 2000
            count = count +0.5;
    elseif a<2000 & a>1000
        count = count +0.25;
    elseif count < 1000 & count >500
        count = count + 0.1;
    else 
        count = count +0.05;
    end
end

            
            
