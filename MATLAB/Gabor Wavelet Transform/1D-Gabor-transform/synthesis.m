function  recon = synthesis(lowpass, w, J, alpha, tau, L1, L2)
%
% reconstructs the signal from the lowpass signal and the complex wavelet
% coefficients.
% L1 and L2 are the end smaples required to invert the prefiltering.
%
shift=1/2;

% lowpass subbands
f1 = lowpass(1,:); 
f2 = lowpass(2,:);

% synthesis filters
M = length(f1);
L = 2^J * M;

[HH1, GG1] = filters(L, alpha, tau, 1);
[HH2, GG2] = filters(L, alpha, tau+shift, 1); 

% perform synthesis
for depth = J : -1: 1
    
    G0 = HH1(1 : 2^(depth-1) : length(HH1));
    G1 = GG1(1 : 2^(depth-1) : length(GG1));
    H0 = HH2(1 : 2^(depth-1) : length(HH2));
    H1 = GG2(1 : 2^(depth-1) : length(GG2));    

    % channel 1 
    u1 = fft(f1,M);
	v1 = fft(real(w{depth}),M);
    Y0 = G0(1:M).*u1 + G1(1:M) .* v1;
	Y1 = G0(M + (1:M)).*u1 + G1(M + (1:M)).*v1;
	Y  = [Y0 Y1];
	f1 = real(ifft(Y,2*M));
    
    % channel 2
    u2 = fft(f2,M);
	v2 = fft(imag(w{depth}),M);
    Y0 = H0(1:M).*u2 + H1(1:M).*v2;
	Y1 = H0(M + (1:M)).*u2 + H1(M + (1:M)).*v2;
	Y  = [Y0 Y1];
	f2 = real(ifft(Y,2*M));
      
    M  = 2*M;
    
end

% post-filtering (undo pre-filtering)
f1_pad   = [f1 L1];
f2_pad   = [f2 L2];

[P1, P2] = projectionFilters(M+1, alpha, tau);

f1       = real( ifft( (fft(f1_pad).*conj(P1)) ./ (P1.*conj(P1))) );
f2       = real( ifft( (fft(f2_pad).*conj(P2)) ./ (P2.*conj(P2))) );
f1       = f1(1 : length(f1)-1);
f2       = f2(1 : length(f2)-1);

recon    = (f1 + f2) / 2;



