function sigDEN = func_denoise_dwhaar_level3_scaled(SIG)
% FUNC_DENOISE_DW1D Saved Denoising Process.
%   SIG: vector of data
%   -------------------
%   sigDEN: vector of denoised data

%  Auto-generated by Wavelet Toolbox on 31-Oct-2017 11:53:13

% Analysis parameters.
%---------------------
wname = 'haar';
level = 3;

% Denoising parameters.
%----------------------
% meth = 'sqtwolog';
% scal_or_alfa = sln;
sorh = 's';    % Specified soft or hard thresholding
thrSettings = 1.299961467939253;

% Denoise using CMDDENOISE.
%--------------------------
sigDEN = cmddenoise(SIG,wname,level,sorh,NaN,thrSettings);
