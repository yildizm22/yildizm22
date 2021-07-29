clc;
clear;
clear all;
a = input('a degerini giriniz:');
b = input('b degerini giriniz:');
c = input('c degerini giriniz:');
delta = b^2-4*a*c;
if delta <  0
    disp('"Denklemin gerçek kökleri yok."');
elseif delta == 0
    fprintf('"Denklemin bir kökü var"\n');
    
    kok = (-b+sqrt(delta))/(2*a);
    fprintf('Denklemin kökü %f dir .',kok);
else 
    fprintf('"Denklemin iki kökü var."\n');
    kok1 = (-b+sqrt(delta))/(2*a);
    kok2 = (-b-sqrt(delta))/(2*a);
    fprintf('denkleminizin kökleri: %f ve %f dir',kok1,kok2);
end
    