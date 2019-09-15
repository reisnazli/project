%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all force;
%% input signal 
% Failure
%f_read = load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130311_B.txt');
%%
f=transpose(f_read);

%Fi = 2500;
%Fs = 48e3;
%N = 4096;
%x = cos(pi*Fi/Fs*(1:N))+0.1/3*randn(1,N);
%f = wgn(1,4096,-100);
%f_t=transpose(f_read);
%x=(f_t.*abs(f_t)/max(abs(f_t)));
%f=x+f_t;
 %f =cos(2*pi*100*Fs) + 0.1/3*randn(1,N);
% f=awgn(f_t,100);

%fs = 5e4; 
%f0 = 2.5e3;
%N = 1024;
%t = (0:N-1)/fs;

%ct = sin(2*pi*f0*t);
%f = ct + 0.00005*randn(size(ct));
%%
%SNR = snr(x,Fs);
M  = length(f); 

%% settingsww1
% parameters for the fractional B-spline wavelets
tau   = 0.63;         % default 
%alpha = input('Enter value of alpha (e.g., alpha = 12)?: \');  
alpha=8.4848;
% level of decomposition
%J= input('Enter the level of wavelet decomposition (e.g., J = 4)?: \'); 
J=1;
%% exception handling
[f, flag] = exception(f, J);
if ~flag
    fprintf('Aborted!\n');
    return;
end
%% analysis
[w,w_mod,lowpass, L1, L2] = analysis(f, J, alpha, tau);
%% synthesis
recon = synthesis(lowpass, w, J, alpha, tau, L1, L2);
%% results
%fprintf('The reconstruction error is : %e\n', norm(f - recon));
%displayResults(f, recon, w);
%%
%% smoothness index  failure 2
w_s=table(w);
%% 
ww1=(w_s.w{1,1});
%%
SI1_C20110914=geomean(abs(ww1))/mean(abs(ww1));
CF=max((ww1))/rms(ww1);
krt=kurtosis(ww1);