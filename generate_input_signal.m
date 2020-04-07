Fs = 10000;
t = 0:1/Fs:1;
om1 = 50; om2 = 200; om3 = 1000; om4 = 3000;
fi1 = 0*(pi/180); fi2 = 30*(pi/180); fi3 = 120*(pi/180); fi4 = 90*(pi/180);
x = 3*sin(2*pi*om1*t + fi1) + 1.9*sin(2*pi*om2*t + fi2) + 1.2*sin(2*pi*om2*t + fi3) + 0.3*sin(2*pi*om2*t + fi4);

% [x,Fs] = audioread('female_high_11.wav');
% n = 1:round(length(x)/10);
% x = (x(n))';