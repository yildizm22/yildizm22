clc;
clear;
clear all;
dakika = input('Dakikanızı giriniz:');
if dakika <= 0
 disp('önce araba kiralayın.');
elseif dakika < 30
    borc = (dakika/30)*5
else 
    borc = (dakika/30)*5 + (dakika-30)*0.25;
end
fprintf('Borcunuz : %f',borc);