
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Analysis and reconstruction of 1-dimensional signals in a multiresolution
% framework using Gabor-like wavelets.
%
% Version: April 20, 2008
% Author : K.N. Chaudhury
%
% References:
%
% [1] K.N. Chaudhury and M. Unser, Construction of Hilbert transform pairs 
% of wavelet bases and Gabor-like transforms, IEEE Transactions on Signal 
% Processing, vol. 57, no. 9, pp. 3411-3425, 2009.
%
% [2] K.N. Chaudhury, Optimally Localized Wavelets and Smoothing Kernels,
% Swiss Federal Institute of Technology Lausanne, EPFL, Thesis no. 4968.
%
%
% Notations:
%
% f:           Input signal of length M
% alpha:       Degree of the fractional B-spline
% tau = 0       (default)
% P1, P2:       Projection filters
% H, HH:        Lowpass filters on the analysis and synthesis sides
% G, GG:        Highpass filters on the analysis and synthesis sides
% w:            Complex wavelet coefficients
% lowpass:      Coarsest approximation
%
% All filtering (convolution) and subsampling operations are performed in  
% Fourier space; see [2] for implementation details.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all force;
%% input signal 
% Failure
%f_read = load('C:\Users\user\Desktop\data\failure\Velo\Fail1_Velo_Body_CASE_1-B.txt');
%f_read = load('C:\Users\user\Desktop\data\failure\Velo\Fail2_Velo_Body_CASE_1-B.txt');
%% Pulverizer C
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120530_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120726_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Velo\C_Velo_Body_CASE_1_20130612_B.txt');
%% Pulverizer D
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_Body_CASE_1_20130612_B.txt');
%% Pulverizer F
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Velo\F_Velo_Body_CASE_1_20130612_B.txt');
%% Pulverizer A
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120521_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120522_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120523_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120619_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer A\Velo\A_Velo_Body_CASE_1_20120731_B.txt');
%% Pulverizer B
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20110908_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer B\Velo\B_Velo_Body_CASE_1_20130612_B.txt');
%% Pulverizer E
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20110909_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120530_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120712_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120713_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20130612_B.txt');
%f_read = load('C:\Users\user\Desktop\data\test\Pulverizer E\Velo\E_Velo_Body_CASE_1_20130731_B.txt');

%%
%Failure = load('C:\Users\user\Desktop\data\failure\Velo\Fail1_Velo__Body_CASE_1_B.txt');
%f_read=Failure(3073:4096,:);
f=transpose(f_read);
%D_20110614_1=D_20110614(1:1024,:);
%D_20110614_2=D_20110614(1025:2048,:);
%D_20110614_3=D_20110614(2049:3072,:);
%D_20110614_4=D_20110614(3073:4096,:);
M  = length(f); 

%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
%alpha = input('Enter value of alpha (e.g., alpha = 12)?: \');  
alpha=12;
% level of decomposition
%J= input('Enter the level of wavelet decomposition (e.g., J = 4)?: \'); 
J=4;
%% exception handling
[f, flag] = exception(f, J);
if ~flag
    fprintf('Aborted!\n');
    return;
end
%% analysis
[w,w_mod, lowpass, L1, L2] = analysis(f, J, alpha, tau);


%% synthesis
recon = synthesis(lowpass, w, J, alpha, tau, L1, L2);


%% results
fprintf('The reconstruction error is : %e\n', norm(f - recon));
displayResults(f, recon, w);

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%
%% smoothness index
w_modu=table(w_mod);
%%
ww_mod1=(w_modu.w_mod{1,1});
ww_mod2=(w_modu.w_mod{1,2});
ww_mod3=(w_modu.w_mod{1,3});
ww_mod4=(w_modu.w_mod{1,4});
%%
SI_mod1=geomean(ww_mod1)/mean(ww_mod1);
SI_mod2=geomean(ww_mod2)/mean(ww_mod2);
SI_mod3=geomean(ww_mod3)/mean(ww_mod3);
SI_mod4=geomean(ww_mod4/mean(ww_mod4));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index
%w_geo=cell2table(w);
%%
%ww1=abs(w_geo.w{1,1});
%ww2=abs(w_geo.w{2,1});
%ww3=abs(w_geo.w{3,1});
%ww4=abs(w_geo.w{4,1});
%%
%deneme1=ww1.^2;
%deneme2=ww2.^2;
%deneme3=ww3.^2;
%deneme4=ww4.^2;
%%
%geom1=geomean(deneme1);
%mean1=mean(deneme1);
%geom2=geomean(deneme2);
%mean2=mean(deneme2);
%geom3=geomean(deneme3);
%mean3=mean(deneme3);
%geom4=geomean(deneme4);
%mean4=mean(deneme4);
%%
%SI1=geom1/mean1;
%SI2=geom2/mean2;
%SI3=geom3/mean3;
%SI4=geom4/mean4;
