clc;
clear;
clear all;
load cancer_dataset.mat;
inputs = cancerInputs;
outputs_real = cancerTargets;
neuron_number = 10;
net = patternnet(neuron_number);
net.divideParam.trainratio = 0.7;
net.divideParam.valratio = 0.15;
net.divideParam.testratio = 0.15;
[net,tr]  = train(net,inputs,outputs_real);    %network olusturma
outputs_test = net(inputs);
error = gsubtract(outputs_real,outputs_test);
performance = perform(net,outputs_real,outputs_test);
view(net);
figure,plotperform(tr);
figure,plotconfusion(outputs_real,outputs_test);