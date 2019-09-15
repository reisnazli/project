function  generate ( ~ )
%
% generates and plots the real and imaginary components, and the modulus 
% of the Gabor-like wavelet 
%
clc, close all force;
fprintf('Synthesizing the wavelet ...\n');

% set parameters
len   = 5 * 1024; 
alpha = 12;
tau   = 0;
shift = 1/2;
J     = 9;
M     =  len/2^J;

% set up the impulse (Kronecker detla)
Yh              = cell(J,1);
for j = 1 : J
    Yh{j} = zeros(1, len/2^j);
end
mid             = length(Yh{J});
Yh{J}(1, mid/2) = 1;
LP1             = 0 * Yh{J};
LP2             = 0 * Yh{J};

% filters
[H1, G1] = filters(len, alpha, tau, 1);
[H2, G2] = filters(len, alpha, tau + shift, 1);

% synthesize the impulse
for j = J : -1 : 1
	
    H =  H1(1 : 2^(j-1) : length(H1));
	G =  G1(1 : 2^(j-1) : length(G1));
    HH = H2(1 : 2^(j-1) : length(H2));
	GG = G2(1 : 2^(j-1) : length(G2));
    
    % synthesize real part
    Y0  =  H(1:M).*fft(LP1) + G(1:M).*fft(Yh{j});
	Y1  =  H(M + (1:M)).*fft(LP1) + G(M + (1:M)).*fft(Yh{j});
	Y   =  [Y0  Y1];
    LP1 =  ifft(Y,2*M);

    % synthesize imaginary part
    Y0  = HH(1:M).*fft(LP2) + GG(1:M).*fft(Yh{j});
	Y1  = HH(M + (1:M)).*fft(LP2) + GG(M + (1:M)).*fft(Yh{j});
	Y   = [Y0  Y1];
    LP2 = ifft(Y,2*M);
    
    M = 2*M;
	
end

% plot
figure,
plot(real(LP1),'b','Linewidth',1.5), 
hold on, 
plot(real(LP2),'r','Linewidth',1.5),
hold on, 
plot(abs(real(LP1) + sqrt(-1) * real(LP2)),'k--','Linewidth',1.5), 
hold on,
plot(-abs(real(LP1) + sqrt(-1) * real(LP2)),'k--','Linewidth',1.5), 
axis tight; 
legend('Real wavelet','Imaginary wavelet', 'Envelope'),
title(['Gabor wavelet, order= 12'],'fontSize', 15);

