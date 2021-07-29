clc
clear
clear all

% 1. yöntem polyint komutu belirsiz integral
% a=[3 -2 2]
% polyint(a,3)

% int komutu integral hesaplar

% syms x
% f=sin(x).^2
% int(f)
% syms x
% f=4*x.^3+3*x.^2+2*x+5
% int(f)
% 
% 
% a=[4 3 2 5]
% polyint(a,6)

%@ bizi sembol atamaktan kurtarır 

% denklem=@(x)  cos(x)
% integral(denklem,0,pi/2)

% a=@(x)  exp(-x.^2)
% integral(a,0,inf)
% trapz yöntemi


% x=0:pi/1000:pi/2
% 
% trapz(x,cos(x))

% quad komutu integral çözer

% quad('x.^3',1,3)

% quad('sin(x).*cos(2.*x)',0,pi)

%  üç katlı integral çözümü triplequad




% triplequad('sin(x)+cos(y)+tan(z)',pi,2*pi,-pi,pi,pi/2,pi)






