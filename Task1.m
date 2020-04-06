[x,Fs] = audioread('female_high_11.wav');
n = 1:round(length(x)/3);
x = (x(n))';
Y1 = fft(x);
[Y2,N] = dft(x);
Y1 = Y1(1:N);
Y2 = Y2(1:N);

figure;
plot(n,x);

figure;

subplot(2,2,1);
plot(abs(Y1));

subplot(2,2,2);
plot(abs(Y2));

subplot(2,2,3);
plot(angle(Y1));

subplot(2,2,4);
plot(angle(Y2));