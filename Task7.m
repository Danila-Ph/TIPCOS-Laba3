[X,Fs] = audioread('female_high_11.wav');
X = X';
n = 512;
l = length(X)/n;
m = round(l) + (round(l)-l ~= 0);
X1 = zeros(m,n);
X((length(X)+1):(n*m)) = zeros(1,(n*m)-(length(X)+1)+1);

for i = 1:m
    X1(i,:) = X(((i-1)*n + 1):(i*n));
end

[Y,N] = dft(X1(1,:));
Y = zeros(m,N);

for i = 1:m
   Y(i,:) = dft(X1(i,:)); 
end

Mk = zeros(m,N);
fik = zeros(m,N);

for i = 1:m
    [Mk(i,:), fik(i,:)] = harm_param(Y(i,:));
end

Mkp = zeros(m,N);
alpha = 7;

for i = 1:m
   Mkp(i,:) = ChangeTimbre(Mk(i,:),alpha); 
end

Xk1 = zeros(m,n);

for i = 1:m
    Xk1(i,:) = sintez_harm(Mkp(i,:),fik(i,:));
end

Xk = zeros(1,n*m);

for i = 1:m
    Xk(((i-1)*n + 1):(i*n)) = Xk1(i,:);
end

norm_coef = 1/(2*alpha*(alpha > 1) + 1/alpha*(alpha < 1));

audiowrite('transform_voice.wav',Xk.*norm_coef,Fs);