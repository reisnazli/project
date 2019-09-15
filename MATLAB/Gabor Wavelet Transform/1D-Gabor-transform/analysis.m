function  [w,w_mod, lowpass, L1, L2]  =  analysis(f, J, alpha, tau)
%
% signal is first prefiltered, and then a J-level wavelet decomposition
% is performed. 
% wavelet coefficients are finally complexified.
%
% get projection filters
M        = length(f);
[P1, P2] = projectionFilters(M + 1, alpha, tau);

% make length M + 1 by repeating the last sample
% the odd length constraint comes up following certain symmetry properties
% of the Fourier transform (see references)
fpad  = [f  f(M)];
f1pad = real( ifft(P1.*fft(fpad)) );
f2pad = real( ifft(P2.*fft(fpad)) );

% extract the first M samples
f1    = f1pad(1 : M);
f2    = f2pad(1 : M);

% store last sample for synthesis
L1  = f1pad(M + 1);
L2  = f2pad(M + 1);

% (complex) wavelet coefficients
w = cell(1,J);

% analysis filters for the 2 channels 
shift    = 1/2;
M        = length(f);

[H1, G1] = filters(M, alpha, tau, 0);
[H2, G2] = filters(M, alpha, tau + shift, 0);

H1 = conj(H1);
G1 = conj(G1);
H2 = conj(H2);
G2 = conj(G2);

% perform analysis
for depth = 1 : J
    
   % channel 1
   f1 = fft(f1,M);
   Y1 = H1 .* f1;
   Z1 = G1 .* f1;
   Y1 = 1/2 * ( Y1(1:M/2) + Y1(M/2+(1:M/2)) );
   Z1 = 1/2 * ( Z1(1:M/2) + Z1(M/2+(1:M/2)) );
   f1 = real( ifft(Y1,M/2) );
   
   % channel 2 
   f2 = fft(f2,M);
   Y2 = H2 .* f2;
   Z2 = G2 .* f2;
   Y2 = 1/2 * ( Y2(1:M/2) + Y2(M/2+(1:M/2)) );
   Z2 = 1/2 * ( Z2(1:M/2)  + Z2(M/2+(1:M/2)) );
   f2 = real( ifft(Y2,M/2) );
   
   % complexify
   w{depth} = (real(ifft(Z1,M/2)).^2 +  real(ifft(Z2,M/2)).^2);
   w_mod{depth}=(real(ifft(Z1,M/2))).^2+(real(ifft(Z2,M/2)).^2);

 
   % decimate filters 
   H1 = H1(1 : 2 : length(H1));
   G1 = G1(1 : 2 : length(G1));    
   H2 = H2(1 : 2 : length(H2));  
   G2 = G2(1 : 2 : length(G2));
  
   M = M/2;
end

% store lowpass (coarsest) signals
lowpass=[f1 ; f2];