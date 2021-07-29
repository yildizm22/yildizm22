clc
clear
clear all

% syms s t
% f=exp(-2*t)*cos(4*t)
% lap=laplace(f)
% simp=simplify(lap)    % değişkeni düzenle
% pretty(simp)      %% düzenli bir şekilde ekrana yaz
% ezplot(lap)

% syms s t
% f=(s+2)/((s+2)^2+16)
% lap=ilaplace(f)
% simp=simplify(lap)
% pretty(simp)
% ezplot(lap)

% syms s t
% f=1/(s.^2+4)
% lap=ilaplace(f)
% simp=simplify(lap)
% pretty(simp)
% ezplot(lap)
% syms s t
% f=sin(2*t)/2
% 


num=[2 5 3 6]
den=[1 6 11 6]
[r,p,k]=residue(num,den)










