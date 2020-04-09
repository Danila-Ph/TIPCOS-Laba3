[x,t] = gen_sig(1000,5,20,100,300,0,30,120,90,3,1.9,1.2,0.3);

Y1 = fft(x);
[Y2,N] = dft(x);
Y1 = Y1(1:N);
Y2 = Y2(1:N);

figure;
plot(t,x);

figure;

subplot(2,2,1);
plot(abs(Y1));

subplot(2,2,2);
plot(abs(Y2));

subplot(2,2,3);
plot(angle(Y1));

subplot(2,2,4);
plot(angle(Y2));