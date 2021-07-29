clc;
clear;
clear all;

A = [0 1;-2 2];
B = [0;1];
C = [1 0];
D = 0;
G = ss(A,B,C,D);
[A,B,C,D] = ssdata(G)
%transferden durum uzaya gecme
[n,d] = ss2tf(A,B,C,D);
y = tf(n,d)
% transfer fonksiyonundan state space e gecis
[A B C D] = tf2ss(n,d)