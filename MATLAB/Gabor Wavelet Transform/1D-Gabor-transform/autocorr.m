function [A, A2] =  autocorr(M, alpha)

nu = (0: 1: M-1)/M;

N  = 150;		    
			
A =  zeros(1, M);
for n = -N : 1 : N
	A = A + abs(sinc(nu + n)).^(2*alpha+2);
end

A2 = [A  A];
A2 = A2(1 : 2 : length(A2));		


