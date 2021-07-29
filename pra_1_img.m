clc
clear
clear all

imgGri=imread('E:\seker\paralar.png')
imshow(imgGri)
imgSB=imbinarize(imgGri)
imshow(imgSB)
imgSB=imfill(imgSB,'holes')
imshow(imgSB)
sinirler=bwboundaries(imgSB)
nesnesayisi=length(sinirler)
text(10,10,['Bulunan nesne sayısı :',num2str(nesnesayisi)],'color','r')
hold on

for k=1:nesnesayisi
    sinir=sinirler{k}
    plot(sinir(:,2),sinir(:,1),'c','linewidth',3)
end

[etiketlinesneler,nesnesayisi]=bwlabel(imgSB)
nesneozellikleri=regionprops(etiketlinesneler,'Area','centroid')

toplam=0
alanesikdegeri=2000

for k=1:nesnesayisi 
    
    merkez=nesneozellikleri(k).Centroid
    
    x=merkez(1) , y=merkez(2)
    
    alandegeri=nesneozellikleri(k).Area
    
    if alandegeri>alanesikdegeri

        
    text(x-10,y,'5 kr','Fontsize',15,'Fontweight','bold')
    toplam=toplam+5
    
    else
        toplam=toplam+10
        
        text(x-10,y,'10 kr','fontsize',15,'Fontweight','bold')
    end
end

        
        
        
        
        
        
    
    
    
    
    
    
    
    
    
    
    











