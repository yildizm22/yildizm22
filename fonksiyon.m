clc;
clear ;
clear all;
x=-5:0.01:5 ;
y=10*x.^2.*exp(-x.^2);
g=x+cos(x.^5);
plot(x,y,'--g+')
hold on 
plot(x,g,'-ro')