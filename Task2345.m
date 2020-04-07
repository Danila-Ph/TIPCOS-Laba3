load('input_signal');
x = input_signal;
t = 1:length(x);
%% Task 2

n = 1:round(length(x)/10);
[Y,N] = dft(x);
Y = Y(1:N);

[cA, sA] = SinCosAmps(Y);
%% Task 3

x1 = sintez(cA, sA);

figure;
plot(x1);
%% Task 4

[Mk, fik] = harm_param(Y);

figure;
subplot(2,1,1);
plot(Mk);
subplot(2,1,2);
plot(fik);
%% Task 5

x2 = sintez_harm(Mk,fik);

figure;
plot(x2);