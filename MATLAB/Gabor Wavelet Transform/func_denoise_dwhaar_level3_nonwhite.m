function sigDEN = func_denoise_dwhaar_level3_nonwhite(SIG)
% FUNC_DENOISE_DW1D Saved Denoising Process.
%   SIG: vector of data
%   -------------------
%   sigDEN: vector of denoised data

%  Auto-generated by Wavelet Toolbox on 31-Oct-2017 12:00:56

% Analysis parameters.
%---------------------
wname = 'haar';
level = 3;

% Denoising parameters.
%----------------------
% meth = 'sqtwolog';
% scal_or_alfa = mln;
sorh = 's';    % Specified soft or hard thresholding
thrSettings =  [...
    1.299961467939253 ; ...
    2.426480000000001 ; ...
    3.711069628828393   ...
    ];

% Denoise using CMDDENOISE.
%--------------------------
sigDEN = cmddenoise(SIG,wname,level,sorh,NaN,thrSettings);
