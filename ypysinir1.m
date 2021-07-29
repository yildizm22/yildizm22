clc;
clear;
clear all;
x = 1:2:1000
y = 3*x-1;
inputs = x;
outputs_real = y;
% inputs = cancerInputs;
% outputs_real = cancerTargets;
net = patternnet(8);
net = train(net,inputs,outputs_real);
view(net);
outputstest = net(inputs);
plotconfusion(outputs_real,outputstest)