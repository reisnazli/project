function [H, G] = filters(M, alpha, tau, flag)

nu = (0: 1: M - 1) / M;
p  = 0.5*(alpha+1) - tau;
q  = 0.5*(alpha+1) + tau;

[A, A2] = autocorr(M, alpha);

H = sqrt(2) * ( (1+exp(2*sqrt(-1)*pi*nu))/2 ).^p .* ...
    ( (1+exp(-2*sqrt(-1)*pi*nu))/2 ).^q;

G = exp(2*sqrt(-1)*pi*nu) .* A .* H;
G = conj( [G(M/2+(1:M/2))  G(1:M/2)] );

if flag == 1
    return;
else
    H = (H .* A) ./ A2;
    G = G ./(A2 .* [A(M/2+(1:M/2)) A(1:M/2)]);
end




