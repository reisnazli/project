%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
%alpha = input('Enter value of alpha (e.g., alpha = 12)?: \');  
tau   = 0;         % default 
alpha=7;
% level of decomposition
J=4;
M  = 4096; 
%% Pulverizer C
C_20110914 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20110914_B.txt');
C_20111213 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111213_B.txt');
C_20111228 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111228_B.txt');
C_20120105 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120105_B.txt');
C_20120118 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120118_B.txt');
C_20120131 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120131_B.txt');
C_20120306 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120306_B.txt');
C_20120518 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120518_B.txt');
C_20120530 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120530_B.txt');
C_20120621 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120621_B.txt');
C_20120726 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120726_B.txt');
C_20120731 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120731_B.txt');
C_20120924 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120924_B.txt');
C_20120926 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120926_B.txt');
C_20130118 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130118_B.txt');
C_20130311 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130311_B.txt');
C_20130612 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130612_B.txt');
%% Pulverizer D
D_20110614 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20110614_B.txt');
D_20110914 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20110914_B.txt');
D_20111213 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20111213_B.txt');
D_20111228 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20111228_B.txt');
D_20120105 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120105_B.txt');
D_20120118 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120118_B.txt');
D_20120131 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120131_B.txt');
D_20120306 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120306_B.txt');
D_20120518 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120518_B.txt');
D_20120621 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120621_B.txt');
D_20120731 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120731_B.txt');
D_20120924 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120924_B.txt');
D_20120926 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120926_B.txt');
D_20130118 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130118_B.txt');
D_20130311 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130311_B.txt');
D_20130612 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130612_B.txt');
%% Pulverizer F
F_20110614 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110614_B.txt');
F_20110914 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110914_B.txt');
F_20111213 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111213_B.txt');
F_20111228 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111228_B.txt');
F_20120105 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120105_B.txt');
F_20120118 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120118_B.txt');
F_20120131 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120131_B.txt');
F_20120306 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120306_B.txt');
F_20120518 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120518_B.txt');
F_20120621 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120621_B.txt');
F_20120731 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120731_B.txt');
F_20120924 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120924_B.txt');
F_20120926 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120926_B.txt');
F_20130118 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130118_B.txt');
F_20130311 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130311_B.txt');
F_20130612 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130612_B.txt');
%%%%%%%%
%% input signal 
% Failure
f_readf1 = load('C:\Users\user\Desktop\data\failure\Acc\Fail1_Acc__Body_CASE_1_B.txt');
f_failure1=transpose(f_readf1);
f_readf2 = load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
f_failure2=transpose(f_readf2);
%% NORMAL DATA
f_read_norm=[C_20110914;C_20111213;C_20111228;C_20120105;C_20120118;C_20120131;C_20120306;C_20120518;C_20120530;C_20120621;C_20120726;C_20120731;C_20120926;C_20130118;C_20130311;C_20130612;D_20110614;D_20110914;D_20111213;D_20111228;D_20120105;D_20120118;D_20120131;D_20120306;D_20120518;D_20120621;D_20120731;D_20120926;D_20130118;D_20130311;D_20130612;F_20110614;F_20110914;F_20111213;F_20111228;F_20120105;F_20120118;F_20120131;F_20120306;F_20120518;F_20120621;F_20120731;F_20120926;F_20130118;F_20130311;F_20130612];
f_norm=transpose(f_read_norm);
%% analysis failure 1
[w_failure1,w_mod_failure1,lowpass_failure1, L1_failure1, L2_failure1] = analysis(f_failure1, J, alpha, tau);
[w_failure2,w_mod_failure2,lowpass_failure2, L1_failure2, L2_failure2] = analysis(f_failure2, J, alpha, tau);
[w_norm,w_mod_norm,lowpass_norm, L1_norm, L2_norm] = analysis(f_norm, J, alpha, tau);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% synthesis
recon_failure1 = synthesis(lowpass_failure1, w_failure1, J, alpha, tau, L1_failure1, L2_failure1);
recon_failure2 = synthesis(lowpass_failure2, w_failure2, J, alpha, tau, L1_failure2, L2_failure2);
recon_norm = synthesis(lowpass_norm, w_norm, J, alpha, tau, L1_norm, L2_norm);

%% results
%fprintf('The reconstruction  is : %e\n', norm(f_failure1 - recon_failure1));
%displayResults(f_failure1, recon_failure1, w_failure1);
%%
%fprintf('The reconstruction : %e\n', norm(f_failure2 - recon_failure2));
%displayResults(f_failure2, recon_failure2, w_failure2);
%%
%fprintf('The reconstruction : %e\n', norm(f_norm - recon_norm));
%displayResults(f_norm, recon_norm, w_norm);

%% smoothness index  fnormal data
w_s_norm=table(w_norm);
%% 
ww1_norm=abs(w_s_norm.w_norm{1,1});
ww2_norm=abs(w_s_norm.w_norm{2,1});
ww3_norm=abs(w_s_norm.w_norm{3,1});
ww4_norm=abs(w_s_norm.w_norm{4,1});
%% smoothness index squared modulus  failure 1
w_modu_norm=table(w_mod_norm);
%%
ww_mod1_norm=(w_modu_norm.w_mod_norm{1,1});
ww_mod2_norm=(w_modu_norm.w_mod_norm{1,2});
ww_mod3_norm=(w_modu_norm.w_mod_norm{1,2});
ww_mod4_norm=(w_modu_norm.w_mod_norm{1,4});
%% Crest Factor  failure 1
CF1_norm=max(ww1_norm)/rms(ww1_norm);
CF2_norm=max(ww2_norm)/rms(ww2_norm);
CF3_norm=max(ww3_norm)/rms(ww3_norm);
CF4_norm=max(ww4_norm)/rms(ww4_norm);
CF_ort_norm=(CF1_norm+CF2_norm+CF3_norm+CF4_norm)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 1
w_s_failure1=table(w_failure1);
%% 
ww1_failure1=abs(w_s_failure1.w_failure1{1,1});
ww2_failure1=abs(w_s_failure1.w_failure1{2,1});
ww3_failure1=abs(w_s_failure1.w_failure1{3,1});
ww4_failure1=abs(w_s_failure1.w_failure1{4,1});
%% smoothness index squared modulus  failure 1
w_modu_failure1=table(w_mod_failure1);
%%
ww_mod1_failure1=(w_modu_failure1.w_mod_failure1{1,1});
ww_mod2_failure1=(w_modu_failure1.w_mod_failure1{1,2});
ww_mod3_failure1=(w_modu_failure1.w_mod_failure1{1,3});
ww_mod4_failure1=(w_modu_failure1.w_mod_failure1{1,4});
%% Crest Factor  failure 1
CF1_failure1=max(ww1_failure1)/rms(ww1_failure1);
CF2_failure1=max(ww2_failure1)/rms(ww2_failure1);
CF3_failure1=max(ww3_failure1)/rms(ww3_failure1);
CF4_failure1=max(ww4_failure1)/rms(ww4_failure1);
CF_ort_failure1=(CF1_failure1+CF2_failure1+CF3_failure1+CF4_failure1)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2=table(w_failure2);
%% 
ww1_failure2=abs(w_s_failure2.w_failure2{1,1});
ww2_failure2=abs(w_s_failure2.w_failure2{2,1});
ww3_failure2=abs(w_s_failure2.w_failure2{3,1});
ww4_failure2=abs(w_s_failure2.w_failure2{4,1});
%% smoothness index squared modulus  failure2
w_modu_failure2=table(w_mod_failure2);
%%
ww_mod1_failure2=(w_modu_failure2.w_mod_failure2{1,1});
ww_mod2_failure2=(w_modu_failure2.w_mod_failure2{1,2});
ww_mod3_failure2=(w_modu_failure2.w_mod_failure2{1,3});
ww_mod4_failure2=(w_modu_failure2.w_mod_failure2{1,4});
%% Crest Factor  failure 1
CF1_failure2=max(ww1_failure2)/rms(ww1_failure2);
CF2_failure2=max(ww2_failure2)/rms(ww2_failure2);
CF3_failure2=max(ww3_failure2)/rms(ww3_failure2);
CF4_failure2=max(ww4_failure2)/rms(ww4_failure2);
CF_ort_failure2=(CF1_failure2+CF2_failure2+CF3_failure2+CF4_failure2)/4;
%%
CF_modulus_norm=[CF1_norm;CF2_norm;CF3_norm;CF4_norm];
CF_modulus_failure1=[CF1_failure1;CF2_failure1;CF3_failure1;CF4_failure1];
CF_modulus_failure2=[CF1_failure2;CF2_failure2;CF3_failure2;CF4_failure2];
A_CF_modulus=[CF_modulus_norm CF_modulus_failure1 CF_modulus_failure2];
%%
CF_modulus_ave_failure1=(CF1_failure1+CF2_failure1+CF3_failure1+CF4_failure1)/4;
CF_modulus_ave_failure2=(CF1_failure2+CF2_failure2+CF3_failure2+CF4_failure2)/4;
CF_modulus_ave_norm=(CF1_norm+CF2_norm+CF3_norm+CF4_norm)/4;
CF_modulus_ave=[CF_modulus_ave_norm CF_modulus_ave_failure1 CF_modulus_ave_failure2];
%%
ALL=[CF_modulus_ave];