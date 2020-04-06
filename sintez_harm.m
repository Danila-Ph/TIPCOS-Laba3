function x = sintez_harm(Mk, fik)

N = (length(Mk)-1)*2;
x = zeros(1,N);
k = 0:N/2;

for n = 1:N
    x(n) = sum(Mk.*cos((2*pi*n/N).*k + fik));
end
end

