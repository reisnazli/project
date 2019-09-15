function [A, A2] =  autocorr(M, alpha)
%
% computes the autocorrelation filter A(z) for the fractional B-spline.
% A2(z) = A(z^2).
%
nu = (0: 1: M-1)/M;

% N-term approximation
N  = 150;		    
			
A =  zeros(1, M);
for n = -N : 1 : N
	A = A + abs(sinc(nu + n)).^(2*alpha+2);
end

A2 = [A  A];
A2 = A2(1 : 2 : length(A2));		


