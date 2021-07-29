clc;
clear;
clear all;
U_1 = input('Alt plakanın hız değerini giriniz:');
U_2 = input('Üst plakanın hız değerini giriniz:');
h2 = input('Yağ bölgesinin yüksekliğini giriniz');
t=1;
h1 = ((1360*h2)-((1440*U_2*h2-2000*U_1*h2))/...
    ((100*(1440*U_2-2000*U_1)/(U_2+U_1))+400));
for y=-10:0.1:10
    u_1(t) = ((U_2+U_1)/(100*h1+h2))*(h2/h1)*y-...
        ((U_2+U_1)/(h1))*y+U_1;
%     u_2(t) = ((U_2+U_1)/(100*h1+h2))*y+U_2+...
%         ((U_2+U_1)/(100*h1+h2))*(h1+h2);
    t=t+1
end

plot(y,u_1(t))
% hold on
% plot(u_2)
% fplot(((U_2+U_1)/(100*h1+h2))*(h2/h1)*y-...
%         ((U_2+U_1)/(h1))*y+U_1)

    
    