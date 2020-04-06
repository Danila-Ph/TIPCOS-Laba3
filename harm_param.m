function [Mk, fik] = harm_param(X)
[cA, sA] = SinCosAmps(X);
N = (length(cA)-1)*2;
cAn = cA./(N/2);
sAn = sA./(-N/2);
cAn(1) = cAn(1)/2;
cAn(N/2+1) = cAn(N/2+1)/2;
Mk = sqrt(cAn.^2 + sAn.^2);
fik = atan2(-sAn,cAn);
end

