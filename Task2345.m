[x,t] = gen_sig(1000,5,20,100,300,0,30,120,90,3,1.9,1.2,0.3);

%% Task 2

[Y,N] = dft(x);

[cA, sA] = SinCosAmps(Y);
%% Task 3

x1 = sintez(cA, sA);

figure;
plot(x1);
%% Task 4

[Mk, fik] = harm_param(Y);

figure;
subplot(2,1,1);
plot(0:length(Mk)-1,Mk);
subplot(2,1,2);
plot(0:length(fik)-1,fik);
%% Task 5

x2 = sintez_harm(Mk,fik);

figure;
plot(x2);