function sigDEN = func_denoise_dwhaar_level5_unscaled(SIG)
% FUNC_DENOISE_DW1D Saved Denoising Process.
%   SIG: vector of data
%   -------------------
%   sigDEN: vector of denoised data

%  Auto-generated by Wavelet Toolbox on 31-Oct-2017 12:51:37

% Analysis parameters.
%---------------------
wname = 'haar';
level = 5;

% Denoising parameters.
%----------------------
% meth = 'sqtwolog';
% scal_or_alfa = one;
sorh = 's';    % Specified soft or hard thresholding
thrSettings =  [...
    1.929284283925000 ; ...
    2.426480000000001 ; ...
    3.711069628828393 ; ...
    2.130607500000000 ; ...
    1.426211396682878   ...
    ];

% Denoise using CMDDENOISE.
%--------------------------
sigDEN = cmddenoise(SIG,wname,level,sorh,NaN,thrSettings);