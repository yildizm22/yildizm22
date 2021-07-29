clc;
clear;
clear all;

load bodyfat_dataset.mat;
inputs = bodyfatInputs;
outputs_real = bodyfatTargets;
net = fitnet([10,8,5],'traingdx'); %noron sayısını girer
net.divideparam,trainRatio = 70/100;
net.divideparam,valRatio = 15/100;
net.divideparam,testRatio = 15/100;
[net,tr] = train(net,inputs,outputs_real);
outputs_test = net(inputs);
error = gsubtract(outputs_real,outputs_test);
performance = perform(network,outputs_real,outputs_test);
