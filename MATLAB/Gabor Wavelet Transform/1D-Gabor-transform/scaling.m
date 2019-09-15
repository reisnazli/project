%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all force;
%% input signal 
% Failure
%f_read = load('C:\Users\user\Desktop\data\failure\Acc\Fail1_Acc__Body_CASE_1_B.txt');
%f_read = load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
%% Pulverizer C
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120530_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120726_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130118_B.txt');
f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130612_B.txt');
%% Pulverizer D
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130612_B.txt');
%% Pulverizer F
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110614_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110914_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111213_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111228_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120105_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120131_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120306_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120518_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120621_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120731_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120924_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120926_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130118_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130311_B.txt');
%f_read = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130612_B.txt');
%%
f=transpose(f_read);
M  = length(f); 
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
%alpha = input('Enter value of alpha (e.g., alpha = 12)?: \');  
alpha=0;
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
fprintf('The reconstruction error is : %e\n', norm(f - recon));
displayResults(f, recon, w);
