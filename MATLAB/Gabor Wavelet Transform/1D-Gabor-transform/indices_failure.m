clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 1;         % default 
alpha=12;
% level of decomposition
J=1;
M  = 4096; 
%% input signal 
% Failure
f_readf1 = load('C:\Users\user\Desktop\data\failure\Acc\Fail1_Acc__Body_CASE_1_B.txt');
f_failure1=transpose(f_readf1);
f_readf2 = load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
f_failure2=transpose(f_readf2);
%% analysis failure 1
[w_failure1,w_mod_failure1,w_sm_failure1,w_spec_failure1] = analysisforind(f_failure1, J, alpha, tau);
[w_failure2,w_mod_failure2,w_sm_failure2,w_spec_failure2] = analysisforind(f_failure2, J, alpha, tau);
%% smoothness index  failure 1
w_s_failure1=table(w_sm_failure1);
%% 
ww1_failure1=(w_s_failure1.w_sm_failure1{1,1});
%ww2_failure1=(w_s_failure1.w_sm_failure1{2,1});
%ww3_failure1=(w_s_failure1.w_sm_failure1{3,2});
%ww4_failure1=(w_s_failure1.w_sm_failure1{4,1});
%%
SI1_failure1=geomean(ww1_failure1)/mean(ww1_failure1);
%SI2_failure1=geomean(ww2_failure1)/mean(ww2_failure1);
%SI3_failure1=geomean(ww3_failure1)/mean(ww3_failure1);
%SI4_failure1=geomean(ww4_failure1)/mean(ww4_failure1);
%% smoothness index squared modulus  failure 1
w_modu_failure1=table(w_mod_failure1);
%%
ww_mod1_failure1=(w_modu_failure1.w_mod_failure1{1,1});
%ww_mod2_failure1=(w_modu_failure1.w_mod_failure1{1,2});
%ww_mod3_failure1=(w_modu_failure1.w_mod_failure1{1,3});
%ww_mod4_failure1=(w_modu_failure1.w_mod_failure1{1,4});
%%
SI_mod1_failure1=geomean(ww_mod1_failure1)/mean(ww_mod1_failure1);
%SI_mod2_failure1=geomean(ww_mod2_failure1)/mean(ww_mod2_failure1);
%SI_mod3_failure1=geomean(ww_mod3_failure1)/mean(ww_mod3_failure1);
%SI_mod4_failure1=geomean(ww_mod4_failure1)/mean(ww_mod4_failure1);

%% Max  failure 1
max1_failure1=max(ww1_failure1);
%max2_failure1=max(ww2_failure1);
%max3_failure1=max(ww3_failure1);
%max4_failure1=max(ww4_failure1);

max_mod1_failure1=max(ww_mod1_failure1);
%max_mod2_failure1=max(ww_mod2_failure1);
%max_mod3_failure1=max(ww_mod3_failure1);
%max_mod4_failure1=max(ww_mod4_failure1);
%% RMS  failure 1
rms1_failure1=rms(ww1_failure1);
%rms2_failure1=rms(ww2_failure1);
%rms3_failure1=rms(ww3_failure1);
%rms4_failure1=rms(ww4_failure1);

rms_mod1_failure1=rms(ww_mod1_failure1);
%rms_mod2_failure1=rms(ww_mod2_failure1);
%rms_mod3_failure1=rms(ww_mod3_failure1);
%rms_mod4_failure1=rms(ww_mod4_failure1);
%% Crest Factor  failure 1
CF1_failure1=max1_failure1/rms1_failure1;
%CF2_failure1=max2_failure1/rms2_failure1;
%CF3_failure1=max3_failure1/rms3_failure1;
%CF4_failure1=max4_failure1/rms4_failure1;
%CF_ort_failure1=(CF1_failure1+CF2_failure1+CF3_failure1+CF4_failure1)/4;

CF_mod1_failure1=max_mod1_failure1/rms_mod1_failure1;
%CF_mod2_failure1=max_mod2_failure1/rms_mod2_failure1;
%CF_mod3_failure1=max_mod3_failure1/rms_mod3_failure1;
%CF_mod4_failure1=max_mod4_failure1/rms_mod4_failure1;
%CF_modort_failure1=(CF_mod1_failure1+CF_mod2_failure1+CF_mod3_failure1+CF_mod4_failure1)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2=table(w_sm_failure2);
%% 
ww1_failure2=(w_s_failure2.w_sm_failure2{1,1});
%ww2_failure2=(w_s_failure2.w_sm_failure2{1,2});
%ww3_failure2=(w_s_failure2.w_sm_failure2{1,3});
%ww4_failure2=(w_s_failure2.w_sm_failure2{1,4});
%%
SI1_failure2=geomean(ww1_failure2)/mean(ww1_failure2);
%SI2_failure2=geomean(ww2_failure2)/mean(ww2_failure2);
%SI3_failure2=geomean(ww3_failure2)/mean(ww3_failure2);
%SI4_failure2=geomean(ww4_failure2)/mean(ww4_failure2);
%% smoothness index squared modulus  failure2
w_modu_failure2=table(w_mod_failure2);
%%
ww_mod1_failure2=(w_modu_failure2.w_mod_failure2{1,1});
%ww_mod2_failure2=(w_modu_failure2.w_mod_failure2{1,2});
%ww_mod3_failure2=(w_modu_failure2.w_mod_failure2{1,3});
%ww_mod4_failure2=(w_modu_failure2.w_mod_failure2{1,4});
%%
SI_mod1_failure2=geomean(ww_mod1_failure2)/mean(ww_mod1_failure2);
%SI_mod2_failure2=geomean(ww_mod2_failure2)/mean(ww_mod2_failure2);
%SI_mod3_failure2=geomean(ww_mod3_failure2)/mean(ww_mod3_failure2);
%SI_mod4_failure2=geomean(ww_mod4_failure2)/mean(ww_mod4_failure2);
%% Max  failure2
max1_failure2=max(ww1_failure2);
%max2_failure2=max(ww2_failure2);
%max3_failure2=max(ww3_failure2);
%max4_failure2=max(ww4_failure2);
 
max_mod1_failure2=max(ww_mod1_failure2);
%max_mod2_failure2=max(ww_mod2_failure2);
%max_mod3_failure2=max(ww_mod3_failure2);
%max_mod4_failure2=max(ww_mod4_failure2);
%% RMS  failure2
rms1_failure2=rms(ww1_failure2);
%rms2_failure2=rms(ww2_failure2);
%rms3_failure2=rms(ww3_failure2);
%rms4_failure2=rms(ww4_failure2);
 
rms_mod1_failure2=rms(ww_mod1_failure2);
%rms_mod2_failure2=rms(ww_mod2_failure2);
%rms_mod3_failure2=rms(ww_mod3_failure2);
%rms_mod4_failure2=rms(ww_mod4_failure2);
%% Crest Factor  failure2
CF1_failure2=max1_failure2/rms1_failure2;
%CF2_failure2=max2_failure2/rms2_failure2;
%CF3_failure2=max3_failure2/rms3_failure2;
%CF4_failure2=max4_failure2/rms4_failure2;
%CF_ort_failure2=(CF1_failure2+CF2_failure2+CF3_failure2+CF4_failure2)/4;
 
CF_mod1_failure2=max_mod1_failure2/rms_mod1_failure2;
%CF_mod2_failure2=max_mod2_failure2/rms_mod2_failure2;
%CF_mod3_failure2=max_mod3_failure2/rms_mod3_failure2;
%CF_mod4_failure2=max_mod4_failure2/rms_mod4_failure2;
%CF_modort_failure2=(CF_mod1_failure2+CF_mod2_failure2+CF_mod3_failure2+CF_mod4_failure2)/4;

%%
%A_CF_modulus=[CF1_failure1; CF2_failure1; CF3_failure1; CF4_failure1;CF1_failure2; CF2_failure2; CF3_failure2; CF4_failure2];
%A_CF_sqmodulus=[CF_mod1_failure1;CF_mod2_failure1;CF_mod3_failure1;CF_mod4_failure1;CF_mod1_failure2;CF_mod2_failure2;CF_mod3_failure2;CF_mod4_failure2];
%A_SI_modulus=[SI1_failure1;SI2_failure1;SI3_failure1;SI4_failure1;SI1_failure2;SI2_failure2;SI3_failure2;SI4_failure2];
%A_SI_sqmodulus=[SI_mod1_failure1;SI_mod2_failure1;SI_mod3_failure1;SI_mod4_failure1;SI_mod1_failure2;SI_mod2_failure2;SI_mod3_failure2;SI_mod4_failure2];
%A_SI_new=[SI_rat1_failure1;SI_rat2_failure1;SI_rat3_failure1;SI_rat4_failure1;SI_rat1_failure2;SI_rat2_failure2;SI_rat3_failure2;SI_rat4_failure2];

%CF_modulus_ave_failure1=(CF1_failure1+CF2_failure1+CF3_failure1+CF4_failure1)/4;
%CF_modulus_ave_failure2=(CF1_failure2+CF2_failure2+CF3_failure2+CF4_failure2)/4;

%CF_sqmodulus_ave_failure1=(CF_mod1_failure1+CF_mod2_failure1+CF_mod3_failure1+CF_mod4_failure1)/4;
%CF_sqmodulus_ave_failure2=(CF_mod1_failure2+CF_mod2_failure2+CF_mod3_failure2+CF_mod4_failure2)/4;

%SI_modulus_ave_failure1=(SI1_failure1+SI2_failure1+SI3_failure1+SI4_failure1)/4;
%SI_modulus_ave_failure2=(SI1_failure2+SI2_failure2+SI3_failure2+SI4_failure2)/4;
 
%SI_sqmodulus_ave_failure1=(SI_mod1_failure1+SI_mod2_failure1+SI_mod3_failure1+SI_mod4_failure1)/4;
%SI_sqmodulus_ave_failure2=(SI_mod1_failure2+SI_mod2_failure2+SI_mod3_failure2+SI_mod4_failure2)/4;

%SI_new_ave_failure1=(SI_rat1_failure1+SI_rat2_failure1+SI_rat3_failure1+SI_rat4_failure1)/4;
%SI_new_ave_failure2=(SI_rat1_failure2+SI_rat2_failure2+SI_rat3_failure2+SI_rat4_failure2)/4;
