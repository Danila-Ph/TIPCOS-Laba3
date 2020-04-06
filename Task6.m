load('ecg_data');
x = ecg_data';
Fs = 360;
n = (1:length(x))./Fs;
[Y,N] = dft(x);
t = 0:Fs/2/(N-1):Fs/2;

figure;
plot(n,x);

figure;

subplot(2,1,1);
plot(t,abs(Y));
subplot(2,1,2);
plot(t,angle(Y));