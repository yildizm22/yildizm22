clc;
clear;
clear all;
sonuc = 0;
t=2;
for i=1:2:1001
    sonuc = sonuc+(4*(1/i)*(-1)^t);
    t=t+1;
end
fprintf('sonuc = %f',sonuc);