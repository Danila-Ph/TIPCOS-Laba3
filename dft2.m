function y = dft2(x)
%Функция дискретного преобразования Фурье

if mod(length(x),2) == 0
    N = length(x)/2+1;
else
    N = round(length(x)/2);
end

n = 0:length(x)-1;
y = zeros(1, N);

for k = 0:N-1
    y(k+1) = sum(x(n+1).*exp(-2*pi*1i*k*n/length(x)));
end

end