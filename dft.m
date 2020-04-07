function [X, N] = dft(x)

if mod(length(x),2) == 0
    N = length(x);
else
    N = length(x)-1;
end

N = N/2+1;

n = 0:(length(x)-1);
X = zeros(1,N);

for k = 0:(N-1)
    X(k+1) = sum(x(n+1).*exp(-1i*2*pi*k*n/length(x)));
end

end

