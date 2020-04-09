function x = sintez(cA, sA)

N = (length(cA)-1)*2;
x = zeros(1,N);
k = 0:N/2;
cAn = cA./(N/2);
sAn = sA./(-N/2);
cAn(1) = cAn(1)/2;
cAn(N/2+1) = cAn(N/2+1)/2;

for n = 1:N
    x(n) = sum(cAn.*cos(2*pi*n/N.*k)) + sum(sAn.*sin(2*pi*n/N.*k));
end
end

