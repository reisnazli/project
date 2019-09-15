clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
alpha=9;
% level of decomposition
J=4;
M  = 4096; 
%% input signal 
%% Pulverizer C
f_read_C20110614 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20110614_B.txt');
f_read_C20110914 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20110914_B.txt');
f_read_C20111213 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111213_B.txt');
f_read_C20111228 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111228_B.txt');
f_read_C20120105 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120105_B.txt');
f_read_C20120118 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120118_B.txt');
f_read_C20120131 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120131_B.txt');
f_read_C20120306 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120306_B.txt');
f_read_C20120518 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120518_B.txt');
f_read_C20120530 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120530_B.txt');
f_read_C20120621 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120621_B.txt');
f_read_C20120726 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120726_B.txt');
f_read_C20120731 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120731_B.txt');
f_read_C20120924 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120924_B.txt');
f_read_C20120926 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120926_B.txt');
f_read_C20130118 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130118_B.txt');
f_read_C20130311 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130311_B.txt');
f_read_C20130612 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130612_B.txt');

f_C20110614=transpose(f_read_C20110614);
f_C20110914=transpose(f_read_C20110914);
f_C20111213=transpose(f_read_C20111213);
f_C20111228=transpose(f_read_C20111228);
f_C20120105=transpose(f_read_C20120105);
f_C20120118=transpose(f_read_C20120118);
f_C20120131=transpose(f_read_C20120131);
f_C20120306=transpose(f_read_C20120306);
f_C20120518=transpose(f_read_C20120518);
f_C20120530=transpose(f_read_C20120530);
f_C20120621=transpose(f_read_C20120621);
f_C20120726=transpose(f_read_C20120726);
f_C20120731=transpose(f_read_C20120731);
f_C20120924=transpose(f_read_C20120924);
f_C20120926=transpose(f_read_C20120926);
f_C20130118=transpose(f_read_C20130118);
f_C20130311=transpose(f_read_C20130311);
f_C20130612=transpose(f_read_C20130612);
%% analysis failure 1
[w_C20110614,w_mod_C20110614,w_sm_C20110614,w_spec_C20110614] = analysisforind(f_C20110614, J, alpha, tau);
[w_C20110914,w_mod_C20110914,w_sm_C20110914,w_spec_C20110914] = analysisforind(f_C20110914, J, alpha, tau);
[w_C20111213,w_mod_C20111213,w_sm_C20111213,w_spec_C20111213] = analysisforind(f_C20111213, J, alpha, tau);
[w_C20111228,w_mod_C20111228,w_sm_C20111228,w_spec_C20111228] = analysisforind(f_C20111228, J, alpha, tau);
[w_C20120105,w_mod_C20120105,w_sm_C20120105,w_spec_C20120105] = analysisforind(f_C20120105, J, alpha, tau);
[w_C20120118,w_mod_C20120118,w_sm_C20120118,w_spec_C20120118] = analysisforind(f_C20120118, J, alpha, tau);
[w_C20120131,w_mod_C20120131,w_sm_C20120131,w_spec_C20120131] = analysisforind(f_C20120131, J, alpha, tau);
[w_C20120306,w_mod_C20120306,w_sm_C20120306,w_spec_C20120306] = analysisforind(f_C20120306, J, alpha, tau);
[w_C20120518,w_mod_C20120518,w_sm_C20120518,w_spec_C20120518] = analysisforind(f_C20120518, J, alpha, tau);
[w_C20120530,w_mod_C20120530,w_sm_C20120530,w_spec_C20120530] = analysisforind(f_C20120530, J, alpha, tau);
[w_C20120621,w_mod_C20120621,w_sm_C20120621,w_spec_C20120621] = analysisforind(f_C20120621, J, alpha, tau);
[w_C20120726,w_mod_C20120726,w_sm_C20120726,w_spec_C20120726] = analysisforind(f_C20120726, J, alpha, tau);
[w_C20120731,w_mod_C20120731,w_sm_C20120731,w_spec_C20120731] = analysisforind(f_C20120731, J, alpha, tau);
[w_C20120924,w_mod_C20120924,w_sm_C20120924,w_spec_C20120924] = analysisforind(f_C20120924, J, alpha, tau);
[w_C20120926,w_mod_C20120926,w_sm_C20120926,w_spec_C20120926] = analysisforind(f_C20120926, J, alpha, tau);
[w_C20130118,w_mod_C20130118,w_sm_C20130118,w_spec_C20130118] = analysisforind(f_C20130118, J, alpha, tau);
[w_C20130311,w_mod_C20130311,w_sm_C20130311,w_spec_C20130311] = analysisforind(f_C20130311, J, alpha, tau);
[w_C20130612,w_mod_C20130612,w_sm_C20130612,w_spec_C20130612] = analysisforind(f_C20130612, J, alpha, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20110614=table(w_sm_C20110614);
%% 
ww1_C20110614=(w_s_C20110614.w_sm_C20110614{1,1});
ww2_C20110614=(w_s_C20110614.w_sm_C20110614{1,2});
ww3_C20110614=(w_s_C20110614.w_sm_C20110614{1,3});
ww4_C20110614=(w_s_C20110614.w_sm_C20110614{1,4});
%%
SI1_C20110614=geomean(ww1_C20110614)/mean(ww1_C20110614);
SI2_C20110614=geomean(ww2_C20110614)/mean(ww2_C20110614);
SI3_C20110614=geomean(ww3_C20110614)/mean(ww3_C20110614);
SI4_C20110614=geomean(ww4_C20110614)/mean(ww4_C20110614);
%% smoothness index squared modulus  C20110614
w_modu_C20110614=table(w_mod_C20110614);
%%
ww_mod1_C20110614=(w_modu_C20110614.w_mod_C20110614{1,1});
ww_mod2_C20110614=(w_modu_C20110614.w_mod_C20110614{1,2});
ww_mod3_C20110614=(w_modu_C20110614.w_mod_C20110614{1,3});
ww_mod4_C20110614=(w_modu_C20110614.w_mod_C20110614{1,4});
%%
SI_mod1_C20110614=geomean(ww_mod1_C20110614)/mean(ww_mod1_C20110614);
SI_mod2_C20110614=geomean(ww_mod2_C20110614)/mean(ww_mod2_C20110614);
SI_mod3_C20110614=geomean(ww_mod3_C20110614)/mean(ww_mod3_C20110614);
SI_mod4_C20110614=geomean(ww_mod4_C20110614)/mean(ww_mod4_C20110614);
%% smoothness index energy spectrum  C20110614
w_s_C20110614=table(w_spec_C20110614);
%%
ww_rat1_C20110614=abs(w_s_C20110614.w_spec_C20110614{1,1});
ww_rat2_C20110614=abs(w_s_C20110614.w_spec_C20110614{1,2});
ww_rat3_C20110614=abs(w_s_C20110614.w_spec_C20110614{1,3});
ww_rat4_C20110614=abs(w_s_C20110614.w_spec_C20110614{1,4});
%%
new1_C20110614=abs(ww1_C20110614.*ww_rat1_C20110614);
new2_C20110614=abs(ww2_C20110614.*ww_rat2_C20110614);
new3_C20110614=abs(ww3_C20110614.*ww_rat3_C20110614);
new4_C20110614=abs(ww4_C20110614.*ww_rat4_C20110614);
%%
SI_rat1_C20110614=geomean(new1_C20110614)/mean(new1_C20110614);
SI_rat2_C20110614=geomean(new2_C20110614)/mean(new2_C20110614);
SI_rat3_C20110614=geomean(new3_C20110614)/mean(new3_C20110614);
SI_rat4_C20110614=geomean(new4_C20110614)/mean(new4_C20110614);
%% Max  C20110614
max1_C20110614=max(ww1_C20110614);
max2_C20110614=max(ww2_C20110614);
max3_C20110614=max(ww3_C20110614);
max4_C20110614=max(ww4_C20110614);
 
max_mod1_C20110614=max(ww_mod1_C20110614);
max_mod2_C20110614=max(ww_mod2_C20110614);
max_mod3_C20110614=max(ww_mod3_C20110614);
max_mod4_C20110614=max(ww_mod4_C20110614);
%% RMS  C20110614
rms1_C20110614=rms(ww1_C20110614);
rms2_C20110614=rms(ww2_C20110614);
rms3_C20110614=rms(ww3_C20110614);
rms4_C20110614=rms(ww4_C20110614);
 
rms_mod1_C20110614=rms(ww_mod1_C20110614);
rms_mod2_C20110614=rms(ww_mod2_C20110614);
rms_mod3_C20110614=rms(ww_mod3_C20110614);
rms_mod4_C20110614=rms(ww_mod4_C20110614);
%% Crest Factor  C20110614
CF1_C20110614=max1_C20110614/rms1_C20110614;
CF2_C20110614=max2_C20110614/rms2_C20110614;
CF3_C20110614=max3_C20110614/rms3_C20110614;
CF4_C20110614=max4_C20110614/rms4_C20110614;
CF_ort_C20110614=(CF1_C20110614+CF2_C20110614+CF3_C20110614+CF4_C20110614)/4;
 
CF_mod1_C20110614=max_mod1_C20110614/rms_mod1_C20110614;
CF_mod2_C20110614=max_mod2_C20110614/rms_mod2_C20110614;
CF_mod3_C20110614=max_mod3_C20110614/rms_mod3_C20110614;
CF_mod4_C20110614=max_mod4_C20110614/rms_mod4_C20110614;
CF_modort_C20110614=(CF_mod1_C20110614+CF_mod2_C20110614+CF_mod3_C20110614+CF_mod4_C20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20110914=table(w_sm_C20110914);
%% 
ww1_C20110914=(w_s_C20110914.w_sm_C20110914{1,1});
ww2_C20110914=(w_s_C20110914.w_sm_C20110914{1,2});
ww3_C20110914=(w_s_C20110914.w_sm_C20110914{1,3});
ww4_C20110914=(w_s_C20110914.w_sm_C20110914{1,4});
%%
SI1_C20110914=geomean(ww1_C20110914)/mean(ww1_C20110914);
SI2_C20110914=geomean(ww2_C20110914)/mean(ww2_C20110914);
SI3_C20110914=geomean(ww3_C20110914)/mean(ww3_C20110914);
SI4_C20110914=geomean(ww4_C20110914)/mean(ww4_C20110914);
%% smoothness index squared modulus  C20110914
w_modu_C20110914=table(w_mod_C20110914);
%%
ww_mod1_C20110914=(w_modu_C20110914.w_mod_C20110914{1,1});
ww_mod2_C20110914=(w_modu_C20110914.w_mod_C20110914{1,2});
ww_mod3_C20110914=(w_modu_C20110914.w_mod_C20110914{1,3});
ww_mod4_C20110914=(w_modu_C20110914.w_mod_C20110914{1,4});
%%
SI_mod1_C20110914=geomean(ww_mod1_C20110914)/mean(ww_mod1_C20110914);
SI_mod2_C20110914=geomean(ww_mod2_C20110914)/mean(ww_mod2_C20110914);
SI_mod3_C20110914=geomean(ww_mod3_C20110914)/mean(ww_mod3_C20110914);
SI_mod4_C20110914=geomean(ww_mod4_C20110914)/mean(ww_mod4_C20110914);
%% smoothness index energy spectrum  C20110914
w_s_C20110914=table(w_spec_C20110914);
%%
ww_rat1_C20110914=abs(w_s_C20110914.w_spec_C20110914{1,1});
ww_rat2_C20110914=abs(w_s_C20110914.w_spec_C20110914{1,2});
ww_rat3_C20110914=abs(w_s_C20110914.w_spec_C20110914{1,3});
ww_rat4_C20110914=abs(w_s_C20110914.w_spec_C20110914{1,4});
%%
new1_C20110914=abs(ww1_C20110914.*ww_rat1_C20110914);
new2_C20110914=abs(ww2_C20110914.*ww_rat2_C20110914);
new3_C20110914=abs(ww3_C20110914.*ww_rat3_C20110914);
new4_C20110914=abs(ww4_C20110914.*ww_rat4_C20110914);
%%
SI_rat1_C20110914=geomean(new1_C20110914)/mean(new1_C20110914);
SI_rat2_C20110914=geomean(new2_C20110914)/mean(new2_C20110914);
SI_rat3_C20110914=geomean(new3_C20110914)/mean(new3_C20110914);
SI_rat4_C20110914=geomean(new4_C20110914)/mean(new4_C20110914);
%% Max  C20110914
max1_C20110914=max(ww1_C20110914);
max2_C20110914=max(ww2_C20110914);
max3_C20110914=max(ww3_C20110914);
max4_C20110914=max(ww4_C20110914);
 
max_mod1_C20110914=max(ww_mod1_C20110914);
max_mod2_C20110914=max(ww_mod2_C20110914);
max_mod3_C20110914=max(ww_mod3_C20110914);
max_mod4_C20110914=max(ww_mod4_C20110914);
%% RMS  C20110914
rms1_C20110914=rms(ww1_C20110914);
rms2_C20110914=rms(ww2_C20110914);
rms3_C20110914=rms(ww3_C20110914);
rms4_C20110914=rms(ww4_C20110914);
 
rms_mod1_C20110914=rms(ww_mod1_C20110914);
rms_mod2_C20110914=rms(ww_mod2_C20110914);
rms_mod3_C20110914=rms(ww_mod3_C20110914);
rms_mod4_C20110914=rms(ww_mod4_C20110914);
%% Crest Factor  C20110914
CF1_C20110914=max1_C20110914/rms1_C20110914;
CF2_C20110914=max2_C20110914/rms2_C20110914;
CF3_C20110914=max3_C20110914/rms3_C20110914;
CF4_C20110914=max4_C20110914/rms4_C20110914;
CF_ort_C20110914=(CF1_C20110914+CF2_C20110914+CF3_C20110914+CF4_C20110914)/4;
 
CF_mod1_C20110914=max_mod1_C20110914/rms_mod1_C20110914;
CF_mod2_C20110914=max_mod2_C20110914/rms_mod2_C20110914;
CF_mod3_C20110914=max_mod3_C20110914/rms_mod3_C20110914;
CF_mod4_C20110914=max_mod4_C20110914/rms_mod4_C20110914;
CF_modort_C20110914=(CF_mod1_C20110914+CF_mod2_C20110914+CF_mod3_C20110914+CF_mod4_C20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20111213=table(w_sm_C20111213);
%% 
ww1_C20111213=(w_s_C20111213.w_sm_C20111213{1,1});
ww2_C20111213=(w_s_C20111213.w_sm_C20111213{1,2});
ww3_C20111213=(w_s_C20111213.w_sm_C20111213{1,3});
ww4_C20111213=(w_s_C20111213.w_sm_C20111213{1,4});
%%
SI1_C20111213=geomean(ww1_C20111213)/mean(ww1_C20111213);
SI2_C20111213=geomean(ww2_C20111213)/mean(ww2_C20111213);
SI3_C20111213=geomean(ww3_C20111213)/mean(ww3_C20111213);
SI4_C20111213=geomean(ww4_C20111213)/mean(ww4_C20111213);
%% smoothness index squared modulus  C20111213
w_modu_C20111213=table(w_mod_C20111213);
%%
ww_mod1_C20111213=(w_modu_C20111213.w_mod_C20111213{1,1});
ww_mod2_C20111213=(w_modu_C20111213.w_mod_C20111213{1,2});
ww_mod3_C20111213=(w_modu_C20111213.w_mod_C20111213{1,3});
ww_mod4_C20111213=(w_modu_C20111213.w_mod_C20111213{1,4});
%%
SI_mod1_C20111213=geomean(ww_mod1_C20111213)/mean(ww_mod1_C20111213);
SI_mod2_C20111213=geomean(ww_mod2_C20111213)/mean(ww_mod2_C20111213);
SI_mod3_C20111213=geomean(ww_mod3_C20111213)/mean(ww_mod3_C20111213);
SI_mod4_C20111213=geomean(ww_mod4_C20111213)/mean(ww_mod4_C20111213);
%% smoothness index energy spectrum  C20111213
w_s_C20111213=table(w_spec_C20111213);
%%
ww_rat1_C20111213=abs(w_s_C20111213.w_spec_C20111213{1,1});
ww_rat2_C20111213=abs(w_s_C20111213.w_spec_C20111213{1,2});
ww_rat3_C20111213=abs(w_s_C20111213.w_spec_C20111213{1,3});
ww_rat4_C20111213=abs(w_s_C20111213.w_spec_C20111213{1,4});
%%
new1_C20111213=abs(ww1_C20111213.*ww_rat1_C20111213);
new2_C20111213=abs(ww2_C20111213.*ww_rat2_C20111213);
new3_C20111213=abs(ww3_C20111213.*ww_rat3_C20111213);
new4_C20111213=abs(ww4_C20111213.*ww_rat4_C20111213);
%%
SI_rat1_C20111213=geomean(new1_C20111213)/mean(new1_C20111213);
SI_rat2_C20111213=geomean(new2_C20111213)/mean(new2_C20111213);
SI_rat3_C20111213=geomean(new3_C20111213)/mean(new3_C20111213);
SI_rat4_C20111213=geomean(new4_C20111213)/mean(new4_C20111213);
%% Max  C20111213
max1_C20111213=max(ww1_C20111213);
max2_C20111213=max(ww2_C20111213);
max3_C20111213=max(ww3_C20111213);
max4_C20111213=max(ww4_C20111213);
 
max_mod1_C20111213=max(ww_mod1_C20111213);
max_mod2_C20111213=max(ww_mod2_C20111213);
max_mod3_C20111213=max(ww_mod3_C20111213);
max_mod4_C20111213=max(ww_mod4_C20111213);
%% RMS  C20111213
rms1_C20111213=rms(ww1_C20111213);
rms2_C20111213=rms(ww2_C20111213);
rms3_C20111213=rms(ww3_C20111213);
rms4_C20111213=rms(ww4_C20111213);
 
rms_mod1_C20111213=rms(ww_mod1_C20111213);
rms_mod2_C20111213=rms(ww_mod2_C20111213);
rms_mod3_C20111213=rms(ww_mod3_C20111213);
rms_mod4_C20111213=rms(ww_mod4_C20111213);
%% Crest Factor  C20111213
CF1_C20111213=max1_C20111213/rms1_C20111213;
CF2_C20111213=max2_C20111213/rms2_C20111213;
CF3_C20111213=max3_C20111213/rms3_C20111213;
CF4_C20111213=max4_C20111213/rms4_C20111213;
CF_ort_C20111213=(CF1_C20111213+CF2_C20111213+CF3_C20111213+CF4_C20111213)/4;
 
CF_mod1_C20111213=max_mod1_C20111213/rms_mod1_C20111213;
CF_mod2_C20111213=max_mod2_C20111213/rms_mod2_C20111213;
CF_mod3_C20111213=max_mod3_C20111213/rms_mod3_C20111213;
CF_mod4_C20111213=max_mod4_C20111213/rms_mod4_C20111213;
CF_modort_C20111213=(CF_mod1_C20111213+CF_mod2_C20111213+CF_mod3_C20111213+CF_mod4_C20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20111228=table(w_sm_C20111228);
%% 
ww1_C20111228=(w_s_C20111228.w_sm_C20111228{1,1});
ww2_C20111228=(w_s_C20111228.w_sm_C20111228{1,2});
ww3_C20111228=(w_s_C20111228.w_sm_C20111228{1,3});
ww4_C20111228=(w_s_C20111228.w_sm_C20111228{1,4});
%%
SI1_C20111228=geomean(ww1_C20111228)/mean(ww1_C20111228);
SI2_C20111228=geomean(ww2_C20111228)/mean(ww2_C20111228);
SI3_C20111228=geomean(ww3_C20111228)/mean(ww3_C20111228);
SI4_C20111228=geomean(ww4_C20111228)/mean(ww4_C20111228);
%% smoothness index squared modulus  C20111228
w_modu_C20111228=table(w_mod_C20111228);
%%
ww_mod1_C20111228=(w_modu_C20111228.w_mod_C20111228{1,1});
ww_mod2_C20111228=(w_modu_C20111228.w_mod_C20111228{1,2});
ww_mod3_C20111228=(w_modu_C20111228.w_mod_C20111228{1,3});
ww_mod4_C20111228=(w_modu_C20111228.w_mod_C20111228{1,4});
%%
SI_mod1_C20111228=geomean(ww_mod1_C20111228)/mean(ww_mod1_C20111228);
SI_mod2_C20111228=geomean(ww_mod2_C20111228)/mean(ww_mod2_C20111228);
SI_mod3_C20111228=geomean(ww_mod3_C20111228)/mean(ww_mod3_C20111228);
SI_mod4_C20111228=geomean(ww_mod4_C20111228)/mean(ww_mod4_C20111228);
%% smoothness index energy spectrum  C20111228
w_s_C20111228=table(w_spec_C20111228);
%%
ww_rat1_C20111228=abs(w_s_C20111228.w_spec_C20111228{1,1});
ww_rat2_C20111228=abs(w_s_C20111228.w_spec_C20111228{1,2});
ww_rat3_C20111228=abs(w_s_C20111228.w_spec_C20111228{1,3});
ww_rat4_C20111228=abs(w_s_C20111228.w_spec_C20111228{1,4});
%%
new1_C20111228=abs(ww1_C20111228.*ww_rat1_C20111228);
new2_C20111228=abs(ww2_C20111228.*ww_rat2_C20111228);
new3_C20111228=abs(ww3_C20111228.*ww_rat3_C20111228);
new4_C20111228=abs(ww4_C20111228.*ww_rat4_C20111228);
%%
SI_rat1_C20111228=geomean(new1_C20111228)/mean(new1_C20111228);
SI_rat2_C20111228=geomean(new2_C20111228)/mean(new2_C20111228);
SI_rat3_C20111228=geomean(new3_C20111228)/mean(new3_C20111228);
SI_rat4_C20111228=geomean(new4_C20111228)/mean(new4_C20111228);
%% Max  C20111228
max1_C20111228=max(ww1_C20111228);
max2_C20111228=max(ww2_C20111228);
max3_C20111228=max(ww3_C20111228);
max4_C20111228=max(ww4_C20111228);
 
max_mod1_C20111228=max(ww_mod1_C20111228);
max_mod2_C20111228=max(ww_mod2_C20111228);
max_mod3_C20111228=max(ww_mod3_C20111228);
max_mod4_C20111228=max(ww_mod4_C20111228);
%% RMS  C20111228
rms1_C20111228=rms(ww1_C20111228);
rms2_C20111228=rms(ww2_C20111228);
rms3_C20111228=rms(ww3_C20111228);
rms4_C20111228=rms(ww4_C20111228);
 
rms_mod1_C20111228=rms(ww_mod1_C20111228);
rms_mod2_C20111228=rms(ww_mod2_C20111228);
rms_mod3_C20111228=rms(ww_mod3_C20111228);
rms_mod4_C20111228=rms(ww_mod4_C20111228);
%% Crest Factor  C20111228
CF1_C20111228=max1_C20111228/rms1_C20111228;
CF2_C20111228=max2_C20111228/rms2_C20111228;
CF3_C20111228=max3_C20111228/rms3_C20111228;
CF4_C20111228=max4_C20111228/rms4_C20111228;
CF_ort_C20111228=(CF1_C20111228+CF2_C20111228+CF3_C20111228+CF4_C20111228)/4;
 
CF_mod1_C20111228=max_mod1_C20111228/rms_mod1_C20111228;
CF_mod2_C20111228=max_mod2_C20111228/rms_mod2_C20111228;
CF_mod3_C20111228=max_mod3_C20111228/rms_mod3_C20111228;
CF_mod4_C20111228=max_mod4_C20111228/rms_mod4_C20111228;
CF_modort_C20111228=(CF_mod1_C20111228+CF_mod2_C20111228+CF_mod3_C20111228+CF_mod4_C20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120105=table(w_sm_C20120105);
%% 
ww1_C20120105=(w_s_C20120105.w_sm_C20120105{1,1});
ww2_C20120105=(w_s_C20120105.w_sm_C20120105{1,2});
ww3_C20120105=(w_s_C20120105.w_sm_C20120105{1,3});
ww4_C20120105=(w_s_C20120105.w_sm_C20120105{1,4});
%%
SI1_C20120105=geomean(ww1_C20120105)/mean(ww1_C20120105);
SI2_C20120105=geomean(ww2_C20120105)/mean(ww2_C20120105);
SI3_C20120105=geomean(ww3_C20120105)/mean(ww3_C20120105);
SI4_C20120105=geomean(ww4_C20120105)/mean(ww4_C20120105);
%% smoothness index squared modulus  C20120105
w_modu_C20120105=table(w_mod_C20120105);
%%
ww_mod1_C20120105=(w_modu_C20120105.w_mod_C20120105{1,1});
ww_mod2_C20120105=(w_modu_C20120105.w_mod_C20120105{1,2});
ww_mod3_C20120105=(w_modu_C20120105.w_mod_C20120105{1,3});
ww_mod4_C20120105=(w_modu_C20120105.w_mod_C20120105{1,4});
%%
SI_mod1_C20120105=geomean(ww_mod1_C20120105)/mean(ww_mod1_C20120105);
SI_mod2_C20120105=geomean(ww_mod2_C20120105)/mean(ww_mod2_C20120105);
SI_mod3_C20120105=geomean(ww_mod3_C20120105)/mean(ww_mod3_C20120105);
SI_mod4_C20120105=geomean(ww_mod4_C20120105)/mean(ww_mod4_C20120105);
%% smoothness index energy spectrum  C20120105
w_s_C20120105=table(w_spec_C20120105);
%%
ww_rat1_C20120105=abs(w_s_C20120105.w_spec_C20120105{1,1});
ww_rat2_C20120105=abs(w_s_C20120105.w_spec_C20120105{1,2});
ww_rat3_C20120105=abs(w_s_C20120105.w_spec_C20120105{1,3});
ww_rat4_C20120105=abs(w_s_C20120105.w_spec_C20120105{1,4});
%%
new1_C20120105=abs(ww1_C20120105.*ww_rat1_C20120105);
new2_C20120105=abs(ww2_C20120105.*ww_rat2_C20120105);
new3_C20120105=abs(ww3_C20120105.*ww_rat3_C20120105);
new4_C20120105=abs(ww4_C20120105.*ww_rat4_C20120105);
%%
SI_rat1_C20120105=geomean(new1_C20120105)/mean(new1_C20120105);
SI_rat2_C20120105=geomean(new2_C20120105)/mean(new2_C20120105);
SI_rat3_C20120105=geomean(new3_C20120105)/mean(new3_C20120105);
SI_rat4_C20120105=geomean(new4_C20120105)/mean(new4_C20120105);
%% Max  C20120105
max1_C20120105=max(ww1_C20120105);
max2_C20120105=max(ww2_C20120105);
max3_C20120105=max(ww3_C20120105);
max4_C20120105=max(ww4_C20120105);
 
max_mod1_C20120105=max(ww_mod1_C20120105);
max_mod2_C20120105=max(ww_mod2_C20120105);
max_mod3_C20120105=max(ww_mod3_C20120105);
max_mod4_C20120105=max(ww_mod4_C20120105);
%% RMS  C20120105
rms1_C20120105=rms(ww1_C20120105);
rms2_C20120105=rms(ww2_C20120105);
rms3_C20120105=rms(ww3_C20120105);
rms4_C20120105=rms(ww4_C20120105);
 
rms_mod1_C20120105=rms(ww_mod1_C20120105);
rms_mod2_C20120105=rms(ww_mod2_C20120105);
rms_mod3_C20120105=rms(ww_mod3_C20120105);
rms_mod4_C20120105=rms(ww_mod4_C20120105);
%% Crest Factor  C20120105
CF1_C20120105=max1_C20120105/rms1_C20120105;
CF2_C20120105=max2_C20120105/rms2_C20120105;
CF3_C20120105=max3_C20120105/rms3_C20120105;
CF4_C20120105=max4_C20120105/rms4_C20120105;
CF_ort_C20120105=(CF1_C20120105+CF2_C20120105+CF3_C20120105+CF4_C20120105)/4;
 
CF_mod1_C20120105=max_mod1_C20120105/rms_mod1_C20120105;
CF_mod2_C20120105=max_mod2_C20120105/rms_mod2_C20120105;
CF_mod3_C20120105=max_mod3_C20120105/rms_mod3_C20120105;
CF_mod4_C20120105=max_mod4_C20120105/rms_mod4_C20120105;
CF_modort_C20120105=(CF_mod1_C20120105+CF_mod2_C20120105+CF_mod3_C20120105+CF_mod4_C20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120118=table(w_sm_C20120118);
%% 
ww1_C20120118=(w_s_C20120118.w_sm_C20120118{1,1});
ww2_C20120118=(w_s_C20120118.w_sm_C20120118{1,2});
ww3_C20120118=(w_s_C20120118.w_sm_C20120118{1,3});
ww4_C20120118=(w_s_C20120118.w_sm_C20120118{1,4});
%%
SI1_C20120118=geomean(ww1_C20120118)/mean(ww1_C20120118);
SI2_C20120118=geomean(ww2_C20120118)/mean(ww2_C20120118);
SI3_C20120118=geomean(ww3_C20120118)/mean(ww3_C20120118);
SI4_C20120118=geomean(ww4_C20120118)/mean(ww4_C20120118);
%% smoothness index squared modulus  C20120118
w_modu_C20120118=table(w_mod_C20120118);
%%
ww_mod1_C20120118=(w_modu_C20120118.w_mod_C20120118{1,1});
ww_mod2_C20120118=(w_modu_C20120118.w_mod_C20120118{1,2});
ww_mod3_C20120118=(w_modu_C20120118.w_mod_C20120118{1,3});
ww_mod4_C20120118=(w_modu_C20120118.w_mod_C20120118{1,4});
%%
SI_mod1_C20120118=geomean(ww_mod1_C20120118)/mean(ww_mod1_C20120118);
SI_mod2_C20120118=geomean(ww_mod2_C20120118)/mean(ww_mod2_C20120118);
SI_mod3_C20120118=geomean(ww_mod3_C20120118)/mean(ww_mod3_C20120118);
SI_mod4_C20120118=geomean(ww_mod4_C20120118)/mean(ww_mod4_C20120118);
%% smoothness index energy spectrum  C20120118
w_s_C20120118=table(w_spec_C20120118);
%%
ww_rat1_C20120118=abs(w_s_C20120118.w_spec_C20120118{1,1});
ww_rat2_C20120118=abs(w_s_C20120118.w_spec_C20120118{1,2});
ww_rat3_C20120118=abs(w_s_C20120118.w_spec_C20120118{1,3});
ww_rat4_C20120118=abs(w_s_C20120118.w_spec_C20120118{1,4});
%%
new1_C20120118=abs(ww1_C20120118.*ww_rat1_C20120118);
new2_C20120118=abs(ww2_C20120118.*ww_rat2_C20120118);
new3_C20120118=abs(ww3_C20120118.*ww_rat3_C20120118);
new4_C20120118=abs(ww4_C20120118.*ww_rat4_C20120118);
%%
SI_rat1_C20120118=geomean(new1_C20120118)/mean(new1_C20120118);
SI_rat2_C20120118=geomean(new2_C20120118)/mean(new2_C20120118);
SI_rat3_C20120118=geomean(new3_C20120118)/mean(new3_C20120118);
SI_rat4_C20120118=geomean(new4_C20120118)/mean(new4_C20120118);
%% Max  C20120118
max1_C20120118=max(ww1_C20120118);
max2_C20120118=max(ww2_C20120118);
max3_C20120118=max(ww3_C20120118);
max4_C20120118=max(ww4_C20120118);
 
max_mod1_C20120118=max(ww_mod1_C20120118);
max_mod2_C20120118=max(ww_mod2_C20120118);
max_mod3_C20120118=max(ww_mod3_C20120118);
max_mod4_C20120118=max(ww_mod4_C20120118);
%% RMS  C20120118
rms1_C20120118=rms(ww1_C20120118);
rms2_C20120118=rms(ww2_C20120118);
rms3_C20120118=rms(ww3_C20120118);
rms4_C20120118=rms(ww4_C20120118);
 
rms_mod1_C20120118=rms(ww_mod1_C20120118);
rms_mod2_C20120118=rms(ww_mod2_C20120118);
rms_mod3_C20120118=rms(ww_mod3_C20120118);
rms_mod4_C20120118=rms(ww_mod4_C20120118);
%% Crest Factor  C20120118
CF1_C20120118=max1_C20120118/rms1_C20120118;
CF2_C20120118=max2_C20120118/rms2_C20120118;
CF3_C20120118=max3_C20120118/rms3_C20120118;
CF4_C20120118=max4_C20120118/rms4_C20120118;
CF_ort_C20120118=(CF1_C20120118+CF2_C20120118+CF3_C20120118+CF4_C20120118)/4;
 
CF_mod1_C20120118=max_mod1_C20120118/rms_mod1_C20120118;
CF_mod2_C20120118=max_mod2_C20120118/rms_mod2_C20120118;
CF_mod3_C20120118=max_mod3_C20120118/rms_mod3_C20120118;
CF_mod4_C20120118=max_mod4_C20120118/rms_mod4_C20120118;
CF_modort_C20120118=(CF_mod1_C20120118+CF_mod2_C20120118+CF_mod3_C20120118+CF_mod4_C20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120131=table(w_sm_C20120131);
%% 
ww1_C20120131=(w_s_C20120131.w_sm_C20120131{1,1});
ww2_C20120131=(w_s_C20120131.w_sm_C20120131{1,2});
ww3_C20120131=(w_s_C20120131.w_sm_C20120131{1,3});
ww4_C20120131=(w_s_C20120131.w_sm_C20120131{1,4});
%%
SI1_C20120131=geomean(ww1_C20120131)/mean(ww1_C20120131);
SI2_C20120131=geomean(ww2_C20120131)/mean(ww2_C20120131);
SI3_C20120131=geomean(ww3_C20120131)/mean(ww3_C20120131);
SI4_C20120131=geomean(ww4_C20120131)/mean(ww4_C20120131);
%% smoothness index squared modulus  C20120131
w_modu_C20120131=table(w_mod_C20120131);
%%
ww_mod1_C20120131=(w_modu_C20120131.w_mod_C20120131{1,1});
ww_mod2_C20120131=(w_modu_C20120131.w_mod_C20120131{1,2});
ww_mod3_C20120131=(w_modu_C20120131.w_mod_C20120131{1,3});
ww_mod4_C20120131=(w_modu_C20120131.w_mod_C20120131{1,4});
%%
SI_mod1_C20120131=geomean(ww_mod1_C20120131)/mean(ww_mod1_C20120131);
SI_mod2_C20120131=geomean(ww_mod2_C20120131)/mean(ww_mod2_C20120131);
SI_mod3_C20120131=geomean(ww_mod3_C20120131)/mean(ww_mod3_C20120131);
SI_mod4_C20120131=geomean(ww_mod4_C20120131)/mean(ww_mod4_C20120131);
%% smoothness index energy spectrum  C20120131
w_s_C20120131=table(w_spec_C20120131);
%%
ww_rat1_C20120131=abs(w_s_C20120131.w_spec_C20120131{1,1});
ww_rat2_C20120131=abs(w_s_C20120131.w_spec_C20120131{1,2});
ww_rat3_C20120131=abs(w_s_C20120131.w_spec_C20120131{1,3});
ww_rat4_C20120131=abs(w_s_C20120131.w_spec_C20120131{1,4});
%%
new1_C20120131=abs(ww1_C20120131.*ww_rat1_C20120131);
new2_C20120131=abs(ww2_C20120131.*ww_rat2_C20120131);
new3_C20120131=abs(ww3_C20120131.*ww_rat3_C20120131);
new4_C20120131=abs(ww4_C20120131.*ww_rat4_C20120131);
%%
SI_rat1_C20120131=geomean(new1_C20120131)/mean(new1_C20120131);
SI_rat2_C20120131=geomean(new2_C20120131)/mean(new2_C20120131);
SI_rat3_C20120131=geomean(new3_C20120131)/mean(new3_C20120131);
SI_rat4_C20120131=geomean(new4_C20120131)/mean(new4_C20120131);
%% Max  C20120131
max1_C20120131=max(ww1_C20120131);
max2_C20120131=max(ww2_C20120131);
max3_C20120131=max(ww3_C20120131);
max4_C20120131=max(ww4_C20120131);
 
max_mod1_C20120131=max(ww_mod1_C20120131);
max_mod2_C20120131=max(ww_mod2_C20120131);
max_mod3_C20120131=max(ww_mod3_C20120131);
max_mod4_C20120131=max(ww_mod4_C20120131);
%% RMS  C20120131
rms1_C20120131=rms(ww1_C20120131);
rms2_C20120131=rms(ww2_C20120131);
rms3_C20120131=rms(ww3_C20120131);
rms4_C20120131=rms(ww4_C20120131);
 
rms_mod1_C20120131=rms(ww_mod1_C20120131);
rms_mod2_C20120131=rms(ww_mod2_C20120131);
rms_mod3_C20120131=rms(ww_mod3_C20120131);
rms_mod4_C20120131=rms(ww_mod4_C20120131);
%% Crest Factor  C20120131
CF1_C20120131=max1_C20120131/rms1_C20120131;
CF2_C20120131=max2_C20120131/rms2_C20120131;
CF3_C20120131=max3_C20120131/rms3_C20120131;
CF4_C20120131=max4_C20120131/rms4_C20120131;
CF_ort_C20120131=(CF1_C20120131+CF2_C20120131+CF3_C20120131+CF4_C20120131)/4;
 
CF_mod1_C20120131=max_mod1_C20120131/rms_mod1_C20120131;
CF_mod2_C20120131=max_mod2_C20120131/rms_mod2_C20120131;
CF_mod3_C20120131=max_mod3_C20120131/rms_mod3_C20120131;
CF_mod4_C20120131=max_mod4_C20120131/rms_mod4_C20120131;
CF_modort_C20120131=(CF_mod1_C20120131+CF_mod2_C20120131+CF_mod3_C20120131+CF_mod4_C20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120306=table(w_sm_C20120306);
%% 
ww1_C20120306=(w_s_C20120306.w_sm_C20120306{1,1});
ww2_C20120306=(w_s_C20120306.w_sm_C20120306{1,2});
ww3_C20120306=(w_s_C20120306.w_sm_C20120306{1,3});
ww4_C20120306=(w_s_C20120306.w_sm_C20120306{1,4});
%%
SI1_C20120306=geomean(ww1_C20120306)/mean(ww1_C20120306);
SI2_C20120306=geomean(ww2_C20120306)/mean(ww2_C20120306);
SI3_C20120306=geomean(ww3_C20120306)/mean(ww3_C20120306);
SI4_C20120306=geomean(ww4_C20120306)/mean(ww4_C20120306);
%% smoothness index squared modulus  C20120306
w_modu_C20120306=table(w_mod_C20120306);
%%
ww_mod1_C20120306=(w_modu_C20120306.w_mod_C20120306{1,1});
ww_mod2_C20120306=(w_modu_C20120306.w_mod_C20120306{1,2});
ww_mod3_C20120306=(w_modu_C20120306.w_mod_C20120306{1,3});
ww_mod4_C20120306=(w_modu_C20120306.w_mod_C20120306{1,4});
%%
SI_mod1_C20120306=geomean(ww_mod1_C20120306)/mean(ww_mod1_C20120306);
SI_mod2_C20120306=geomean(ww_mod2_C20120306)/mean(ww_mod2_C20120306);
SI_mod3_C20120306=geomean(ww_mod3_C20120306)/mean(ww_mod3_C20120306);
SI_mod4_C20120306=geomean(ww_mod4_C20120306)/mean(ww_mod4_C20120306);
%% smoothness index energy spectrum  C20120306
w_s_C20120306=table(w_spec_C20120306);
%%
ww_rat1_C20120306=abs(w_s_C20120306.w_spec_C20120306{1,1});
ww_rat2_C20120306=abs(w_s_C20120306.w_spec_C20120306{1,2});
ww_rat3_C20120306=abs(w_s_C20120306.w_spec_C20120306{1,3});
ww_rat4_C20120306=abs(w_s_C20120306.w_spec_C20120306{1,4});
%%
new1_C20120306=abs(ww1_C20120306.*ww_rat1_C20120306);
new2_C20120306=abs(ww2_C20120306.*ww_rat2_C20120306);
new3_C20120306=abs(ww3_C20120306.*ww_rat3_C20120306);
new4_C20120306=abs(ww4_C20120306.*ww_rat4_C20120306);
%%
SI_rat1_C20120306=geomean(new1_C20120306)/mean(new1_C20120306);
SI_rat2_C20120306=geomean(new2_C20120306)/mean(new2_C20120306);
SI_rat3_C20120306=geomean(new3_C20120306)/mean(new3_C20120306);
SI_rat4_C20120306=geomean(new4_C20120306)/mean(new4_C20120306);
%% Max  C20120306
max1_C20120306=max(ww1_C20120306);
max2_C20120306=max(ww2_C20120306);
max3_C20120306=max(ww3_C20120306);
max4_C20120306=max(ww4_C20120306);
 
max_mod1_C20120306=max(ww_mod1_C20120306);
max_mod2_C20120306=max(ww_mod2_C20120306);
max_mod3_C20120306=max(ww_mod3_C20120306);
max_mod4_C20120306=max(ww_mod4_C20120306);
%% RMS  C20120306
rms1_C20120306=rms(ww1_C20120306);
rms2_C20120306=rms(ww2_C20120306);
rms3_C20120306=rms(ww3_C20120306);
rms4_C20120306=rms(ww4_C20120306);
 
rms_mod1_C20120306=rms(ww_mod1_C20120306);
rms_mod2_C20120306=rms(ww_mod2_C20120306);
rms_mod3_C20120306=rms(ww_mod3_C20120306);
rms_mod4_C20120306=rms(ww_mod4_C20120306);
%% Crest Factor  C20120306
CF1_C20120306=max1_C20120306/rms1_C20120306;
CF2_C20120306=max2_C20120306/rms2_C20120306;
CF3_C20120306=max3_C20120306/rms3_C20120306;
CF4_C20120306=max4_C20120306/rms4_C20120306;
CF_ort_C20120306=(CF1_C20120306+CF2_C20120306+CF3_C20120306+CF4_C20120306)/4;
 
CF_mod1_C20120306=max_mod1_C20120306/rms_mod1_C20120306;
CF_mod2_C20120306=max_mod2_C20120306/rms_mod2_C20120306;
CF_mod3_C20120306=max_mod3_C20120306/rms_mod3_C20120306;
CF_mod4_C20120306=max_mod4_C20120306/rms_mod4_C20120306;
CF_modort_C20120306=(CF_mod1_C20120306+CF_mod2_C20120306+CF_mod3_C20120306+CF_mod4_C20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120518=table(w_sm_C20120518);
%% 
ww1_C20120518=(w_s_C20120518.w_sm_C20120518{1,1});
ww2_C20120518=(w_s_C20120518.w_sm_C20120518{1,2});
ww3_C20120518=(w_s_C20120518.w_sm_C20120518{1,3});
ww4_C20120518=(w_s_C20120518.w_sm_C20120518{1,4});
%%
SI1_C20120518=geomean(ww1_C20120518)/mean(ww1_C20120518);
SI2_C20120518=geomean(ww2_C20120518)/mean(ww2_C20120518);
SI3_C20120518=geomean(ww3_C20120518)/mean(ww3_C20120518);
SI4_C20120518=geomean(ww4_C20120518)/mean(ww4_C20120518);
%% smoothness index squared modulus  C20120518
w_modu_C20120518=table(w_mod_C20120518);
%%
ww_mod1_C20120518=(w_modu_C20120518.w_mod_C20120518{1,1});
ww_mod2_C20120518=(w_modu_C20120518.w_mod_C20120518{1,2});
ww_mod3_C20120518=(w_modu_C20120518.w_mod_C20120518{1,3});
ww_mod4_C20120518=(w_modu_C20120518.w_mod_C20120518{1,4});
%%
SI_mod1_C20120518=geomean(ww_mod1_C20120518)/mean(ww_mod1_C20120518);
SI_mod2_C20120518=geomean(ww_mod2_C20120518)/mean(ww_mod2_C20120518);
SI_mod3_C20120518=geomean(ww_mod3_C20120518)/mean(ww_mod3_C20120518);
SI_mod4_C20120518=geomean(ww_mod4_C20120518)/mean(ww_mod4_C20120518);
%% smoothness index energy spectrum  C20120518
w_s_C20120518=table(w_spec_C20120518);
%%
ww_rat1_C20120518=abs(w_s_C20120518.w_spec_C20120518{1,1});
ww_rat2_C20120518=abs(w_s_C20120518.w_spec_C20120518{1,2});
ww_rat3_C20120518=abs(w_s_C20120518.w_spec_C20120518{1,3});
ww_rat4_C20120518=abs(w_s_C20120518.w_spec_C20120518{1,4});
%%
new1_C20120518=abs(ww1_C20120518.*ww_rat1_C20120518);
new2_C20120518=abs(ww2_C20120518.*ww_rat2_C20120518);
new3_C20120518=abs(ww3_C20120518.*ww_rat3_C20120518);
new4_C20120518=abs(ww4_C20120518.*ww_rat4_C20120518);
%%
SI_rat1_C20120518=geomean(new1_C20120518)/mean(new1_C20120518);
SI_rat2_C20120518=geomean(new2_C20120518)/mean(new2_C20120518);
SI_rat3_C20120518=geomean(new3_C20120518)/mean(new3_C20120518);
SI_rat4_C20120518=geomean(new4_C20120518)/mean(new4_C20120518);
%% Max  C20120518
max1_C20120518=max(ww1_C20120518);
max2_C20120518=max(ww2_C20120518);
max3_C20120518=max(ww3_C20120518);
max4_C20120518=max(ww4_C20120518);
 
max_mod1_C20120518=max(ww_mod1_C20120518);
max_mod2_C20120518=max(ww_mod2_C20120518);
max_mod3_C20120518=max(ww_mod3_C20120518);
max_mod4_C20120518=max(ww_mod4_C20120518);
%% RMS  C20120518
rms1_C20120518=rms(ww1_C20120518);
rms2_C20120518=rms(ww2_C20120518);
rms3_C20120518=rms(ww3_C20120518);
rms4_C20120518=rms(ww4_C20120518);
 
rms_mod1_C20120518=rms(ww_mod1_C20120518);
rms_mod2_C20120518=rms(ww_mod2_C20120518);
rms_mod3_C20120518=rms(ww_mod3_C20120518);
rms_mod4_C20120518=rms(ww_mod4_C20120518);
%% Crest Factor  C20120518
CF1_C20120518=max1_C20120518/rms1_C20120518;
CF2_C20120518=max2_C20120518/rms2_C20120518;
CF3_C20120518=max3_C20120518/rms3_C20120518;
CF4_C20120518=max4_C20120518/rms4_C20120518;
CF_ort_C20120518=(CF1_C20120518+CF2_C20120518+CF3_C20120518+CF4_C20120518)/4;
 
CF_mod1_C20120518=max_mod1_C20120518/rms_mod1_C20120518;
CF_mod2_C20120518=max_mod2_C20120518/rms_mod2_C20120518;
CF_mod3_C20120518=max_mod3_C20120518/rms_mod3_C20120518;
CF_mod4_C20120518=max_mod4_C20120518/rms_mod4_C20120518;
CF_modort_C20120518=(CF_mod1_C20120518+CF_mod2_C20120518+CF_mod3_C20120518+CF_mod4_C20120518)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120530=table(w_sm_C20120530);
%% 
ww1_C20120530=(w_s_C20120530.w_sm_C20120530{1,1});
ww2_C20120530=(w_s_C20120530.w_sm_C20120530{1,2});
ww3_C20120530=(w_s_C20120530.w_sm_C20120530{1,3});
ww4_C20120530=(w_s_C20120530.w_sm_C20120530{1,4});
%%
SI1_C20120530=geomean(ww1_C20120530)/mean(ww1_C20120530);
SI2_C20120530=geomean(ww2_C20120530)/mean(ww2_C20120530);
SI3_C20120530=geomean(ww3_C20120530)/mean(ww3_C20120530);
SI4_C20120530=geomean(ww4_C20120530)/mean(ww4_C20120530);
%% smoothness index squared modulus  C20120530
w_modu_C20120530=table(w_mod_C20120530);
%%
ww_mod1_C20120530=(w_modu_C20120530.w_mod_C20120530{1,1});
ww_mod2_C20120530=(w_modu_C20120530.w_mod_C20120530{1,2});
ww_mod3_C20120530=(w_modu_C20120530.w_mod_C20120530{1,3});
ww_mod4_C20120530=(w_modu_C20120530.w_mod_C20120530{1,4});
%%
SI_mod1_C20120530=geomean(ww_mod1_C20120530)/mean(ww_mod1_C20120530);
SI_mod2_C20120530=geomean(ww_mod2_C20120530)/mean(ww_mod2_C20120530);
SI_mod3_C20120530=geomean(ww_mod3_C20120530)/mean(ww_mod3_C20120530);
SI_mod4_C20120530=geomean(ww_mod4_C20120530)/mean(ww_mod4_C20120530);
%% smoothness index energy spectrum  C20120530
w_s_C20120530=table(w_spec_C20120530);
%%
ww_rat1_C20120530=abs(w_s_C20120530.w_spec_C20120530{1,1});
ww_rat2_C20120530=abs(w_s_C20120530.w_spec_C20120530{1,2});
ww_rat3_C20120530=abs(w_s_C20120530.w_spec_C20120530{1,3});
ww_rat4_C20120530=abs(w_s_C20120530.w_spec_C20120530{1,4});
%%
new1_C20120530=abs(ww1_C20120530.*ww_rat1_C20120530);
new2_C20120530=abs(ww2_C20120530.*ww_rat2_C20120530);
new3_C20120530=abs(ww3_C20120530.*ww_rat3_C20120530);
new4_C20120530=abs(ww4_C20120530.*ww_rat4_C20120530);
%%
SI_rat1_C20120530=geomean(new1_C20120530)/mean(new1_C20120530);
SI_rat2_C20120530=geomean(new2_C20120530)/mean(new2_C20120530);
SI_rat3_C20120530=geomean(new3_C20120530)/mean(new3_C20120530);
SI_rat4_C20120530=geomean(new4_C20120530)/mean(new4_C20120530);
%% Max  C20120530
max1_C20120530=max(ww1_C20120530);
max2_C20120530=max(ww2_C20120530);
max3_C20120530=max(ww3_C20120530);
max4_C20120530=max(ww4_C20120530);
 
max_mod1_C20120530=max(ww_mod1_C20120530);
max_mod2_C20120530=max(ww_mod2_C20120530);
max_mod3_C20120530=max(ww_mod3_C20120530);
max_mod4_C20120530=max(ww_mod4_C20120530);
%% RMS  C20120530
rms1_C20120530=rms(ww1_C20120530);
rms2_C20120530=rms(ww2_C20120530);
rms3_C20120530=rms(ww3_C20120530);
rms4_C20120530=rms(ww4_C20120530);
 
rms_mod1_C20120530=rms(ww_mod1_C20120530);
rms_mod2_C20120530=rms(ww_mod2_C20120530);
rms_mod3_C20120530=rms(ww_mod3_C20120530);
rms_mod4_C20120530=rms(ww_mod4_C20120530);
%% Crest Factor  C20120530
CF1_C20120530=max1_C20120530/rms1_C20120530;
CF2_C20120530=max2_C20120530/rms2_C20120530;
CF3_C20120530=max3_C20120530/rms3_C20120530;
CF4_C20120530=max4_C20120530/rms4_C20120530;
CF_ort_C20120530=(CF1_C20120530+CF2_C20120530+CF3_C20120530+CF4_C20120530)/4;
 
CF_mod1_C20120530=max_mod1_C20120530/rms_mod1_C20120530;
CF_mod2_C20120530=max_mod2_C20120530/rms_mod2_C20120530;
CF_mod3_C20120530=max_mod3_C20120530/rms_mod3_C20120530;
CF_mod4_C20120530=max_mod4_C20120530/rms_mod4_C20120530;
CF_modort_C20120530=(CF_mod1_C20120530+CF_mod2_C20120530+CF_mod3_C20120530+CF_mod4_C20120530)/4;
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120621=table(w_sm_C20120621);
%% 
ww1_C20120621=(w_s_C20120621.w_sm_C20120621{1,1});
ww2_C20120621=(w_s_C20120621.w_sm_C20120621{1,2});
ww3_C20120621=(w_s_C20120621.w_sm_C20120621{1,3});
ww4_C20120621=(w_s_C20120621.w_sm_C20120621{1,4});
%%
SI1_C20120621=geomean(ww1_C20120621)/mean(ww1_C20120621);
SI2_C20120621=geomean(ww2_C20120621)/mean(ww2_C20120621);
SI3_C20120621=geomean(ww3_C20120621)/mean(ww3_C20120621);
SI4_C20120621=geomean(ww4_C20120621)/mean(ww4_C20120621);
%% smoothness index squared modulus  C20120621
w_modu_C20120621=table(w_mod_C20120621);
%%
ww_mod1_C20120621=(w_modu_C20120621.w_mod_C20120621{1,1});
ww_mod2_C20120621=(w_modu_C20120621.w_mod_C20120621{1,2});
ww_mod3_C20120621=(w_modu_C20120621.w_mod_C20120621{1,3});
ww_mod4_C20120621=(w_modu_C20120621.w_mod_C20120621{1,4});
%%
SI_mod1_C20120621=geomean(ww_mod1_C20120621)/mean(ww_mod1_C20120621);
SI_mod2_C20120621=geomean(ww_mod2_C20120621)/mean(ww_mod2_C20120621);
SI_mod3_C20120621=geomean(ww_mod3_C20120621)/mean(ww_mod3_C20120621);
SI_mod4_C20120621=geomean(ww_mod4_C20120621)/mean(ww_mod4_C20120621);
%% smoothness index energy spectrum  C20120621
w_s_C20120621=table(w_spec_C20120621);
%%
ww_rat1_C20120621=abs(w_s_C20120621.w_spec_C20120621{1,1});
ww_rat2_C20120621=abs(w_s_C20120621.w_spec_C20120621{1,2});
ww_rat3_C20120621=abs(w_s_C20120621.w_spec_C20120621{1,3});
ww_rat4_C20120621=abs(w_s_C20120621.w_spec_C20120621{1,4});
%%
new1_C20120621=abs(ww1_C20120621.*ww_rat1_C20120621);
new2_C20120621=abs(ww2_C20120621.*ww_rat2_C20120621);
new3_C20120621=abs(ww3_C20120621.*ww_rat3_C20120621);
new4_C20120621=abs(ww4_C20120621.*ww_rat4_C20120621);
%%
SI_rat1_C20120621=geomean(new1_C20120621)/mean(new1_C20120621);
SI_rat2_C20120621=geomean(new2_C20120621)/mean(new2_C20120621);
SI_rat3_C20120621=geomean(new3_C20120621)/mean(new3_C20120621);
SI_rat4_C20120621=geomean(new4_C20120621)/mean(new4_C20120621);
%% Max  C20120621
max1_C20120621=max(ww1_C20120621);
max2_C20120621=max(ww2_C20120621);
max3_C20120621=max(ww3_C20120621);
max4_C20120621=max(ww4_C20120621);
 
max_mod1_C20120621=max(ww_mod1_C20120621);
max_mod2_C20120621=max(ww_mod2_C20120621);
max_mod3_C20120621=max(ww_mod3_C20120621);
max_mod4_C20120621=max(ww_mod4_C20120621);
%% RMS  C20120621
rms1_C20120621=rms(ww1_C20120621);
rms2_C20120621=rms(ww2_C20120621);
rms3_C20120621=rms(ww3_C20120621);
rms4_C20120621=rms(ww4_C20120621);
 
rms_mod1_C20120621=rms(ww_mod1_C20120621);
rms_mod2_C20120621=rms(ww_mod2_C20120621);
rms_mod3_C20120621=rms(ww_mod3_C20120621);
rms_mod4_C20120621=rms(ww_mod4_C20120621);
%% Crest Factor  C20120621
CF1_C20120621=max1_C20120621/rms1_C20120621;
CF2_C20120621=max2_C20120621/rms2_C20120621;
CF3_C20120621=max3_C20120621/rms3_C20120621;
CF4_C20120621=max4_C20120621/rms4_C20120621;
CF_ort_C20120621=(CF1_C20120621+CF2_C20120621+CF3_C20120621+CF4_C20120621)/4;
 
CF_mod1_C20120621=max_mod1_C20120621/rms_mod1_C20120621;
CF_mod2_C20120621=max_mod2_C20120621/rms_mod2_C20120621;
CF_mod3_C20120621=max_mod3_C20120621/rms_mod3_C20120621;
CF_mod4_C20120621=max_mod4_C20120621/rms_mod4_C20120621;
CF_modort_C20120621=(CF_mod1_C20120621+CF_mod2_C20120621+CF_mod3_C20120621+CF_mod4_C20120621)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120726=table(w_sm_C20120726);
%% 
ww1_C20120726=(w_s_C20120726.w_sm_C20120726{1,1});
ww2_C20120726=(w_s_C20120726.w_sm_C20120726{1,2});
ww3_C20120726=(w_s_C20120726.w_sm_C20120726{1,3});
ww4_C20120726=(w_s_C20120726.w_sm_C20120726{1,4});
%%
SI1_C20120726=geomean(ww1_C20120726)/mean(ww1_C20120726);
SI2_C20120726=geomean(ww2_C20120726)/mean(ww2_C20120726);
SI3_C20120726=geomean(ww3_C20120726)/mean(ww3_C20120726);
SI4_C20120726=geomean(ww4_C20120726)/mean(ww4_C20120726);
%% smoothness index squared modulus  C20120726
w_modu_C20120726=table(w_mod_C20120726);
%%
ww_mod1_C20120726=(w_modu_C20120726.w_mod_C20120726{1,1});
ww_mod2_C20120726=(w_modu_C20120726.w_mod_C20120726{1,2});
ww_mod3_C20120726=(w_modu_C20120726.w_mod_C20120726{1,3});
ww_mod4_C20120726=(w_modu_C20120726.w_mod_C20120726{1,4});
%%
SI_mod1_C20120726=geomean(ww_mod1_C20120726)/mean(ww_mod1_C20120726);
SI_mod2_C20120726=geomean(ww_mod2_C20120726)/mean(ww_mod2_C20120726);
SI_mod3_C20120726=geomean(ww_mod3_C20120726)/mean(ww_mod3_C20120726);
SI_mod4_C20120726=geomean(ww_mod4_C20120726)/mean(ww_mod4_C20120726);
%% smoothness index energy spectrum  C20120726
w_s_C20120726=table(w_spec_C20120726);
%%
ww_rat1_C20120726=abs(w_s_C20120726.w_spec_C20120726{1,1});
ww_rat2_C20120726=abs(w_s_C20120726.w_spec_C20120726{1,2});
ww_rat3_C20120726=abs(w_s_C20120726.w_spec_C20120726{1,3});
ww_rat4_C20120726=abs(w_s_C20120726.w_spec_C20120726{1,4});
%%
new1_C20120726=abs(ww1_C20120726.*ww_rat1_C20120726);
new2_C20120726=abs(ww2_C20120726.*ww_rat2_C20120726);
new3_C20120726=abs(ww3_C20120726.*ww_rat3_C20120726);
new4_C20120726=abs(ww4_C20120726.*ww_rat4_C20120726);
%%
SI_rat1_C20120726=geomean(new1_C20120726)/mean(new1_C20120726);
SI_rat2_C20120726=geomean(new2_C20120726)/mean(new2_C20120726);
SI_rat3_C20120726=geomean(new3_C20120726)/mean(new3_C20120726);
SI_rat4_C20120726=geomean(new4_C20120726)/mean(new4_C20120726);
%% Max  C20120726
max1_C20120726=max(ww1_C20120726);
max2_C20120726=max(ww2_C20120726);
max3_C20120726=max(ww3_C20120726);
max4_C20120726=max(ww4_C20120726);
 
max_mod1_C20120726=max(ww_mod1_C20120726);
max_mod2_C20120726=max(ww_mod2_C20120726);
max_mod3_C20120726=max(ww_mod3_C20120726);
max_mod4_C20120726=max(ww_mod4_C20120726);
%% RMS  C20120726
rms1_C20120726=rms(ww1_C20120726);
rms2_C20120726=rms(ww2_C20120726);
rms3_C20120726=rms(ww3_C20120726);
rms4_C20120726=rms(ww4_C20120726);
 
rms_mod1_C20120726=rms(ww_mod1_C20120726);
rms_mod2_C20120726=rms(ww_mod2_C20120726);
rms_mod3_C20120726=rms(ww_mod3_C20120726);
rms_mod4_C20120726=rms(ww_mod4_C20120726);
%% Crest Factor  C20120726
CF1_C20120726=max1_C20120726/rms1_C20120726;
CF2_C20120726=max2_C20120726/rms2_C20120726;
CF3_C20120726=max3_C20120726/rms3_C20120726;
CF4_C20120726=max4_C20120726/rms4_C20120726;
CF_ort_C20120726=(CF1_C20120726+CF2_C20120726+CF3_C20120726+CF4_C20120726)/4;
 
CF_mod1_C20120726=max_mod1_C20120726/rms_mod1_C20120726;
CF_mod2_C20120726=max_mod2_C20120726/rms_mod2_C20120726;
CF_mod3_C20120726=max_mod3_C20120726/rms_mod3_C20120726;
CF_mod4_C20120726=max_mod4_C20120726/rms_mod4_C20120726;
CF_modort_C20120726=(CF_mod1_C20120726+CF_mod2_C20120726+CF_mod3_C20120726+CF_mod4_C20120726)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120731=table(w_sm_C20120731);
%% 
ww1_C20120731=(w_s_C20120731.w_sm_C20120731{1,1});
ww2_C20120731=(w_s_C20120731.w_sm_C20120731{1,2});
ww3_C20120731=(w_s_C20120731.w_sm_C20120731{1,3});
ww4_C20120731=(w_s_C20120731.w_sm_C20120731{1,4});
%%
SI1_C20120731=geomean(ww1_C20120731)/mean(ww1_C20120731);
SI2_C20120731=geomean(ww2_C20120731)/mean(ww2_C20120731);
SI3_C20120731=geomean(ww3_C20120731)/mean(ww3_C20120731);
SI4_C20120731=geomean(ww4_C20120731)/mean(ww4_C20120731);
%% smoothness index squared modulus  C20120731
w_modu_C20120731=table(w_mod_C20120731);
%%
ww_mod1_C20120731=(w_modu_C20120731.w_mod_C20120731{1,1});
ww_mod2_C20120731=(w_modu_C20120731.w_mod_C20120731{1,2});
ww_mod3_C20120731=(w_modu_C20120731.w_mod_C20120731{1,3});
ww_mod4_C20120731=(w_modu_C20120731.w_mod_C20120731{1,4});
%%
SI_mod1_C20120731=geomean(ww_mod1_C20120731)/mean(ww_mod1_C20120731);
SI_mod2_C20120731=geomean(ww_mod2_C20120731)/mean(ww_mod2_C20120731);
SI_mod3_C20120731=geomean(ww_mod3_C20120731)/mean(ww_mod3_C20120731);
SI_mod4_C20120731=geomean(ww_mod4_C20120731)/mean(ww_mod4_C20120731);
%% smoothness index energy spectrum  C20120731
w_s_C20120731=table(w_spec_C20120731);
%%
ww_rat1_C20120731=abs(w_s_C20120731.w_spec_C20120731{1,1});
ww_rat2_C20120731=abs(w_s_C20120731.w_spec_C20120731{1,2});
ww_rat3_C20120731=abs(w_s_C20120731.w_spec_C20120731{1,3});
ww_rat4_C20120731=abs(w_s_C20120731.w_spec_C20120731{1,4});
%%
new1_C20120731=abs(ww1_C20120731.*ww_rat1_C20120731);
new2_C20120731=abs(ww2_C20120731.*ww_rat2_C20120731);
new3_C20120731=abs(ww3_C20120731.*ww_rat3_C20120731);
new4_C20120731=abs(ww4_C20120731.*ww_rat4_C20120731);
%%
SI_rat1_C20120731=geomean(new1_C20120731)/mean(new1_C20120731);
SI_rat2_C20120731=geomean(new2_C20120731)/mean(new2_C20120731);
SI_rat3_C20120731=geomean(new3_C20120731)/mean(new3_C20120731);
SI_rat4_C20120731=geomean(new4_C20120731)/mean(new4_C20120731);
%% Max  C20120731
max1_C20120731=max(ww1_C20120731);
max2_C20120731=max(ww2_C20120731);
max3_C20120731=max(ww3_C20120731);
max4_C20120731=max(ww4_C20120731);
 
max_mod1_C20120731=max(ww_mod1_C20120731);
max_mod2_C20120731=max(ww_mod2_C20120731);
max_mod3_C20120731=max(ww_mod3_C20120731);
max_mod4_C20120731=max(ww_mod4_C20120731);
%% RMS  C20120731
rms1_C20120731=rms(ww1_C20120731);
rms2_C20120731=rms(ww2_C20120731);
rms3_C20120731=rms(ww3_C20120731);
rms4_C20120731=rms(ww4_C20120731);
 
rms_mod1_C20120731=rms(ww_mod1_C20120731);
rms_mod2_C20120731=rms(ww_mod2_C20120731);
rms_mod3_C20120731=rms(ww_mod3_C20120731);
rms_mod4_C20120731=rms(ww_mod4_C20120731);
%% Crest Factor  C20120731
CF1_C20120731=max1_C20120731/rms1_C20120731;
CF2_C20120731=max2_C20120731/rms2_C20120731;
CF3_C20120731=max3_C20120731/rms3_C20120731;
CF4_C20120731=max4_C20120731/rms4_C20120731;
CF_ort_C20120731=(CF1_C20120731+CF2_C20120731+CF3_C20120731+CF4_C20120731)/4;
 
CF_mod1_C20120731=max_mod1_C20120731/rms_mod1_C20120731;
CF_mod2_C20120731=max_mod2_C20120731/rms_mod2_C20120731;
CF_mod3_C20120731=max_mod3_C20120731/rms_mod3_C20120731;
CF_mod4_C20120731=max_mod4_C20120731/rms_mod4_C20120731;
CF_modort_C20120731=(CF_mod1_C20120731+CF_mod2_C20120731+CF_mod3_C20120731+CF_mod4_C20120731)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120924=table(w_sm_C20120924);
%% 
ww1_C20120924=(w_s_C20120924.w_sm_C20120924{1,1});
ww2_C20120924=(w_s_C20120924.w_sm_C20120924{1,2});
ww3_C20120924=(w_s_C20120924.w_sm_C20120924{1,3});
ww4_C20120924=(w_s_C20120924.w_sm_C20120924{1,4});
%%
SI1_C20120924=geomean(ww1_C20120924)/mean(ww1_C20120924);
SI2_C20120924=geomean(ww2_C20120924)/mean(ww2_C20120924);
SI3_C20120924=geomean(ww3_C20120924)/mean(ww3_C20120924);
SI4_C20120924=geomean(ww4_C20120924)/mean(ww4_C20120924);
%% smoothness index squared modulus  C20120924
w_modu_C20120924=table(w_mod_C20120924);
%%
ww_mod1_C20120924=(w_modu_C20120924.w_mod_C20120924{1,1});
ww_mod2_C20120924=(w_modu_C20120924.w_mod_C20120924{1,2});
ww_mod3_C20120924=(w_modu_C20120924.w_mod_C20120924{1,3});
ww_mod4_C20120924=(w_modu_C20120924.w_mod_C20120924{1,4});
%%
SI_mod1_C20120924=geomean(ww_mod1_C20120924)/mean(ww_mod1_C20120924);
SI_mod2_C20120924=geomean(ww_mod2_C20120924)/mean(ww_mod2_C20120924);
SI_mod3_C20120924=geomean(ww_mod3_C20120924)/mean(ww_mod3_C20120924);
SI_mod4_C20120924=geomean(ww_mod4_C20120924)/mean(ww_mod4_C20120924);
%% smoothness index energy spectrum  C20120924
w_s_C20120924=table(w_spec_C20120924);
%%
ww_rat1_C20120924=abs(w_s_C20120924.w_spec_C20120924{1,1});
ww_rat2_C20120924=abs(w_s_C20120924.w_spec_C20120924{1,2});
ww_rat3_C20120924=abs(w_s_C20120924.w_spec_C20120924{1,3});
ww_rat4_C20120924=abs(w_s_C20120924.w_spec_C20120924{1,4});
%%
new1_C20120924=abs(ww1_C20120924.*ww_rat1_C20120924);
new2_C20120924=abs(ww2_C20120924.*ww_rat2_C20120924);
new3_C20120924=abs(ww3_C20120924.*ww_rat3_C20120924);
new4_C20120924=abs(ww4_C20120924.*ww_rat4_C20120924);
%%
SI_rat1_C20120924=geomean(new1_C20120924)/mean(new1_C20120924);
SI_rat2_C20120924=geomean(new2_C20120924)/mean(new2_C20120924);
SI_rat3_C20120924=geomean(new3_C20120924)/mean(new3_C20120924);
SI_rat4_C20120924=geomean(new4_C20120924)/mean(new4_C20120924);
%% Max  C20120924
max1_C20120924=max(ww1_C20120924);
max2_C20120924=max(ww2_C20120924);
max3_C20120924=max(ww3_C20120924);
max4_C20120924=max(ww4_C20120924);
 
max_mod1_C20120924=max(ww_mod1_C20120924);
max_mod2_C20120924=max(ww_mod2_C20120924);
max_mod3_C20120924=max(ww_mod3_C20120924);
max_mod4_C20120924=max(ww_mod4_C20120924);
%% RMS  C20120924
rms1_C20120924=rms(ww1_C20120924);
rms2_C20120924=rms(ww2_C20120924);
rms3_C20120924=rms(ww3_C20120924);
rms4_C20120924=rms(ww4_C20120924);
 
rms_mod1_C20120924=rms(ww_mod1_C20120924);
rms_mod2_C20120924=rms(ww_mod2_C20120924);
rms_mod3_C20120924=rms(ww_mod3_C20120924);
rms_mod4_C20120924=rms(ww_mod4_C20120924);
%% Crest Factor  C20120924
CF1_C20120924=max1_C20120924/rms1_C20120924;
CF2_C20120924=max2_C20120924/rms2_C20120924;
CF3_C20120924=max3_C20120924/rms3_C20120924;
CF4_C20120924=max4_C20120924/rms4_C20120924;
CF_ort_C20120924=(CF1_C20120924+CF2_C20120924+CF3_C20120924+CF4_C20120924)/4;
 
CF_mod1_C20120924=max_mod1_C20120924/rms_mod1_C20120924;
CF_mod2_C20120924=max_mod2_C20120924/rms_mod2_C20120924;
CF_mod3_C20120924=max_mod3_C20120924/rms_mod3_C20120924;
CF_mod4_C20120924=max_mod4_C20120924/rms_mod4_C20120924;
CF_modort_C20120924=(CF_mod1_C20120924+CF_mod2_C20120924+CF_mod3_C20120924+CF_mod4_C20120924)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120926=table(w_sm_C20120926);
%% 
ww1_C20120926=(w_s_C20120926.w_sm_C20120926{1,1});
ww2_C20120926=(w_s_C20120926.w_sm_C20120926{1,2});
ww3_C20120926=(w_s_C20120926.w_sm_C20120926{1,3});
ww4_C20120926=(w_s_C20120926.w_sm_C20120926{1,4});
%%
SI1_C20120926=geomean(ww1_C20120926)/mean(ww1_C20120926);
SI2_C20120926=geomean(ww2_C20120926)/mean(ww2_C20120926);
SI3_C20120926=geomean(ww3_C20120926)/mean(ww3_C20120926);
SI4_C20120926=geomean(ww4_C20120926)/mean(ww4_C20120926);
%% smoothness index squared modulus  C20120926
w_modu_C20120926=table(w_mod_C20120926);
%%
ww_mod1_C20120926=(w_modu_C20120926.w_mod_C20120926{1,1});
ww_mod2_C20120926=(w_modu_C20120926.w_mod_C20120926{1,2});
ww_mod3_C20120926=(w_modu_C20120926.w_mod_C20120926{1,3});
ww_mod4_C20120926=(w_modu_C20120926.w_mod_C20120926{1,4});
%%
SI_mod1_C20120926=geomean(ww_mod1_C20120926)/mean(ww_mod1_C20120926);
SI_mod2_C20120926=geomean(ww_mod2_C20120926)/mean(ww_mod2_C20120926);
SI_mod3_C20120926=geomean(ww_mod3_C20120926)/mean(ww_mod3_C20120926);
SI_mod4_C20120926=geomean(ww_mod4_C20120926)/mean(ww_mod4_C20120926);
%% smoothness index energy spectrum  C20120926
w_s_C20120926=table(w_spec_C20120926);
%%
ww_rat1_C20120926=abs(w_s_C20120926.w_spec_C20120926{1,1});
ww_rat2_C20120926=abs(w_s_C20120926.w_spec_C20120926{1,2});
ww_rat3_C20120926=abs(w_s_C20120926.w_spec_C20120926{1,3});
ww_rat4_C20120926=abs(w_s_C20120926.w_spec_C20120926{1,4});
%%
new1_C20120926=abs(ww1_C20120926.*ww_rat1_C20120926);
new2_C20120926=abs(ww2_C20120926.*ww_rat2_C20120926);
new3_C20120926=abs(ww3_C20120926.*ww_rat3_C20120926);
new4_C20120926=abs(ww4_C20120926.*ww_rat4_C20120926);
%%
SI_rat1_C20120926=geomean(new1_C20120926)/mean(new1_C20120926);
SI_rat2_C20120926=geomean(new2_C20120926)/mean(new2_C20120926);
SI_rat3_C20120926=geomean(new3_C20120926)/mean(new3_C20120926);
SI_rat4_C20120926=geomean(new4_C20120926)/mean(new4_C20120926);
%% Max  C20120926
max1_C20120926=max(ww1_C20120926);
max2_C20120926=max(ww2_C20120926);
max3_C20120926=max(ww3_C20120926);
max4_C20120926=max(ww4_C20120926);
 
max_mod1_C20120926=max(ww_mod1_C20120926);
max_mod2_C20120926=max(ww_mod2_C20120926);
max_mod3_C20120926=max(ww_mod3_C20120926);
max_mod4_C20120926=max(ww_mod4_C20120926);
%% RMS  C20120926
rms1_C20120926=rms(ww1_C20120926);
rms2_C20120926=rms(ww2_C20120926);
rms3_C20120926=rms(ww3_C20120926);
rms4_C20120926=rms(ww4_C20120926);
 
rms_mod1_C20120926=rms(ww_mod1_C20120926);
rms_mod2_C20120926=rms(ww_mod2_C20120926);
rms_mod3_C20120926=rms(ww_mod3_C20120926);
rms_mod4_C20120926=rms(ww_mod4_C20120926);
%% Crest Factor  C20120926
CF1_C20120926=max1_C20120926/rms1_C20120926;
CF2_C20120926=max2_C20120926/rms2_C20120926;
CF3_C20120926=max3_C20120926/rms3_C20120926;
CF4_C20120926=max4_C20120926/rms4_C20120926;
CF_ort_C20120926=(CF1_C20120926+CF2_C20120926+CF3_C20120926+CF4_C20120926)/4;
 
CF_mod1_C20120926=max_mod1_C20120926/rms_mod1_C20120926;
CF_mod2_C20120926=max_mod2_C20120926/rms_mod2_C20120926;
CF_mod3_C20120926=max_mod3_C20120926/rms_mod3_C20120926;
CF_mod4_C20120926=max_mod4_C20120926/rms_mod4_C20120926;
CF_modort_C20120926=(CF_mod1_C20120926+CF_mod2_C20120926+CF_mod3_C20120926+CF_mod4_C20120926)/4;

%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130118=table(w_sm_C20130118);
%% 
ww1_C20130118=(w_s_C20130118.w_sm_C20130118{1,1});
ww2_C20130118=(w_s_C20130118.w_sm_C20130118{1,2});
ww3_C20130118=(w_s_C20130118.w_sm_C20130118{1,3});
ww4_C20130118=(w_s_C20130118.w_sm_C20130118{1,4});
%%
SI1_C20130118=geomean(ww1_C20130118)/mean(ww1_C20130118);
SI2_C20130118=geomean(ww2_C20130118)/mean(ww2_C20130118);
SI3_C20130118=geomean(ww3_C20130118)/mean(ww3_C20130118);
SI4_C20130118=geomean(ww4_C20130118)/mean(ww4_C20130118);
%% smoothness index squared modulus  C20130118
w_modu_C20130118=table(w_mod_C20130118);
%%
ww_mod1_C20130118=(w_modu_C20130118.w_mod_C20130118{1,1});
ww_mod2_C20130118=(w_modu_C20130118.w_mod_C20130118{1,2});
ww_mod3_C20130118=(w_modu_C20130118.w_mod_C20130118{1,3});
ww_mod4_C20130118=(w_modu_C20130118.w_mod_C20130118{1,4});
%%
SI_mod1_C20130118=geomean(ww_mod1_C20130118)/mean(ww_mod1_C20130118);
SI_mod2_C20130118=geomean(ww_mod2_C20130118)/mean(ww_mod2_C20130118);
SI_mod3_C20130118=geomean(ww_mod3_C20130118)/mean(ww_mod3_C20130118);
SI_mod4_C20130118=geomean(ww_mod4_C20130118)/mean(ww_mod4_C20130118);
%% smoothness index energy spectrum  C20130118
w_s_C20130118=table(w_spec_C20130118);
%%
ww_rat1_C20130118=abs(w_s_C20130118.w_spec_C20130118{1,1});
ww_rat2_C20130118=abs(w_s_C20130118.w_spec_C20130118{1,2});
ww_rat3_C20130118=abs(w_s_C20130118.w_spec_C20130118{1,3});
ww_rat4_C20130118=abs(w_s_C20130118.w_spec_C20130118{1,4});
%%
new1_C20130118=abs(ww1_C20130118.*ww_rat1_C20130118);
new2_C20130118=abs(ww2_C20130118.*ww_rat2_C20130118);
new3_C20130118=abs(ww3_C20130118.*ww_rat3_C20130118);
new4_C20130118=abs(ww4_C20130118.*ww_rat4_C20130118);
%%
SI_rat1_C20130118=geomean(new1_C20130118)/mean(new1_C20130118);
SI_rat2_C20130118=geomean(new2_C20130118)/mean(new2_C20130118);
SI_rat3_C20130118=geomean(new3_C20130118)/mean(new3_C20130118);
SI_rat4_C20130118=geomean(new4_C20130118)/mean(new4_C20130118);
%% Max  C20130118
max1_C20130118=max(ww1_C20130118);
max2_C20130118=max(ww2_C20130118);
max3_C20130118=max(ww3_C20130118);
max4_C20130118=max(ww4_C20130118);
 
max_mod1_C20130118=max(ww_mod1_C20130118);
max_mod2_C20130118=max(ww_mod2_C20130118);
max_mod3_C20130118=max(ww_mod3_C20130118);
max_mod4_C20130118=max(ww_mod4_C20130118);
%% RMS  C20130118
rms1_C20130118=rms(ww1_C20130118);
rms2_C20130118=rms(ww2_C20130118);
rms3_C20130118=rms(ww3_C20130118);
rms4_C20130118=rms(ww4_C20130118);
 
rms_mod1_C20130118=rms(ww_mod1_C20130118);
rms_mod2_C20130118=rms(ww_mod2_C20130118);
rms_mod3_C20130118=rms(ww_mod3_C20130118);
rms_mod4_C20130118=rms(ww_mod4_C20130118);
%% Crest Factor  C20130118
CF1_C20130118=max1_C20130118/rms1_C20130118;
CF2_C20130118=max2_C20130118/rms2_C20130118;
CF3_C20130118=max3_C20130118/rms3_C20130118;
CF4_C20130118=max4_C20130118/rms4_C20130118;
CF_ort_C20130118=(CF1_C20130118+CF2_C20130118+CF3_C20130118+CF4_C20130118)/4;
 
CF_mod1_C20130118=max_mod1_C20130118/rms_mod1_C20130118;
CF_mod2_C20130118=max_mod2_C20130118/rms_mod2_C20130118;
CF_mod3_C20130118=max_mod3_C20130118/rms_mod3_C20130118;
CF_mod4_C20130118=max_mod4_C20130118/rms_mod4_C20130118;
CF_modort_C20130118=(CF_mod1_C20130118+CF_mod2_C20130118+CF_mod3_C20130118+CF_mod4_C20130118)/4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130311=table(w_sm_C20130311);
%% 
ww1_C20130311=(w_s_C20130311.w_sm_C20130311{1,1});
ww2_C20130311=(w_s_C20130311.w_sm_C20130311{1,2});
ww3_C20130311=(w_s_C20130311.w_sm_C20130311{1,3});
ww4_C20130311=(w_s_C20130311.w_sm_C20130311{1,4});
%%
SI1_C20130311=geomean(ww1_C20130311)/mean(ww1_C20130311);
SI2_C20130311=geomean(ww2_C20130311)/mean(ww2_C20130311);
SI3_C20130311=geomean(ww3_C20130311)/mean(ww3_C20130311);
SI4_C20130311=geomean(ww4_C20130311)/mean(ww4_C20130311);
%% smoothness index squared modulus  C20130311
w_modu_C20130311=table(w_mod_C20130311);
%%
ww_mod1_C20130311=(w_modu_C20130311.w_mod_C20130311{1,1});
ww_mod2_C20130311=(w_modu_C20130311.w_mod_C20130311{1,2});
ww_mod3_C20130311=(w_modu_C20130311.w_mod_C20130311{1,3});
ww_mod4_C20130311=(w_modu_C20130311.w_mod_C20130311{1,4});
%%
SI_mod1_C20130311=geomean(ww_mod1_C20130311)/mean(ww_mod1_C20130311);
SI_mod2_C20130311=geomean(ww_mod2_C20130311)/mean(ww_mod2_C20130311);
SI_mod3_C20130311=geomean(ww_mod3_C20130311)/mean(ww_mod3_C20130311);
SI_mod4_C20130311=geomean(ww_mod4_C20130311)/mean(ww_mod4_C20130311);
%% smoothness index energy spectrum  C20130311
w_s_C20130311=table(w_spec_C20130311);
%%
ww_rat1_C20130311=abs(w_s_C20130311.w_spec_C20130311{1,1});
ww_rat2_C20130311=abs(w_s_C20130311.w_spec_C20130311{1,2});
ww_rat3_C20130311=abs(w_s_C20130311.w_spec_C20130311{1,3});
ww_rat4_C20130311=abs(w_s_C20130311.w_spec_C20130311{1,4});
%%
new1_C20130311=abs(ww1_C20130311.*ww_rat1_C20130311);
new2_C20130311=abs(ww2_C20130311.*ww_rat2_C20130311);
new3_C20130311=abs(ww3_C20130311.*ww_rat3_C20130311);
new4_C20130311=abs(ww4_C20130311.*ww_rat4_C20130311);
%%
SI_rat1_C20130311=geomean(new1_C20130311)/mean(new1_C20130311);
SI_rat2_C20130311=geomean(new2_C20130311)/mean(new2_C20130311);
SI_rat3_C20130311=geomean(new3_C20130311)/mean(new3_C20130311);
SI_rat4_C20130311=geomean(new4_C20130311)/mean(new4_C20130311);
%% Max  C20130311
max1_C20130311=max(ww1_C20130311);
max2_C20130311=max(ww2_C20130311);
max3_C20130311=max(ww3_C20130311);
max4_C20130311=max(ww4_C20130311);
 
max_mod1_C20130311=max(ww_mod1_C20130311);
max_mod2_C20130311=max(ww_mod2_C20130311);
max_mod3_C20130311=max(ww_mod3_C20130311);
max_mod4_C20130311=max(ww_mod4_C20130311);
%% RMS  C20130311
rms1_C20130311=rms(ww1_C20130311);
rms2_C20130311=rms(ww2_C20130311);
rms3_C20130311=rms(ww3_C20130311);
rms4_C20130311=rms(ww4_C20130311);
 
rms_mod1_C20130311=rms(ww_mod1_C20130311);
rms_mod2_C20130311=rms(ww_mod2_C20130311);
rms_mod3_C20130311=rms(ww_mod3_C20130311);
rms_mod4_C20130311=rms(ww_mod4_C20130311);
%% Crest Factor  C20130311
CF1_C20130311=max1_C20130311/rms1_C20130311;
CF2_C20130311=max2_C20130311/rms2_C20130311;
CF3_C20130311=max3_C20130311/rms3_C20130311;
CF4_C20130311=max4_C20130311/rms4_C20130311;
CF_ort_C20130311=(CF1_C20130311+CF2_C20130311+CF3_C20130311+CF4_C20130311)/4;
 
CF_mod1_C20130311=max_mod1_C20130311/rms_mod1_C20130311;
CF_mod2_C20130311=max_mod2_C20130311/rms_mod2_C20130311;
CF_mod3_C20130311=max_mod3_C20130311/rms_mod3_C20130311;
CF_mod4_C20130311=max_mod4_C20130311/rms_mod4_C20130311;
CF_modort_C20130311=(CF_mod1_C20130311+CF_mod2_C20130311+CF_mod3_C20130311+CF_mod4_C20130311)/4;

%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130612=table(w_sm_C20130612);
%% 
ww1_C20130612=(w_s_C20130612.w_sm_C20130612{1,1});
ww2_C20130612=(w_s_C20130612.w_sm_C20130612{1,2});
ww3_C20130612=(w_s_C20130612.w_sm_C20130612{1,3});
ww4_C20130612=(w_s_C20130612.w_sm_C20130612{1,4});
%%
SI1_C20130612=geomean(ww1_C20130612)/mean(ww1_C20130612);
SI2_C20130612=geomean(ww2_C20130612)/mean(ww2_C20130612);
SI3_C20130612=geomean(ww3_C20130612)/mean(ww3_C20130612);
SI4_C20130612=geomean(ww4_C20130612)/mean(ww4_C20130612);
%% smoothness index squared modulus  C20130612
w_modu_C20130612=table(w_mod_C20130612);
%%
ww_mod1_C20130612=(w_modu_C20130612.w_mod_C20130612{1,1});
ww_mod2_C20130612=(w_modu_C20130612.w_mod_C20130612{1,2});
ww_mod3_C20130612=(w_modu_C20130612.w_mod_C20130612{1,3});
ww_mod4_C20130612=(w_modu_C20130612.w_mod_C20130612{1,4});
%%
SI_mod1_C20130612=geomean(ww_mod1_C20130612)/mean(ww_mod1_C20130612);
SI_mod2_C20130612=geomean(ww_mod2_C20130612)/mean(ww_mod2_C20130612);
SI_mod3_C20130612=geomean(ww_mod3_C20130612)/mean(ww_mod3_C20130612);
SI_mod4_C20130612=geomean(ww_mod4_C20130612)/mean(ww_mod4_C20130612);
%% smoothness index energy spectrum  C20130612
w_s_C20130612=table(w_spec_C20130612);
%%
ww_rat1_C20130612=abs(w_s_C20130612.w_spec_C20130612{1,1});
ww_rat2_C20130612=abs(w_s_C20130612.w_spec_C20130612{1,2});
ww_rat3_C20130612=abs(w_s_C20130612.w_spec_C20130612{1,3});
ww_rat4_C20130612=abs(w_s_C20130612.w_spec_C20130612{1,4});
%%
new1_C20130612=abs(ww1_C20130612.*ww_rat1_C20130612);
new2_C20130612=abs(ww2_C20130612.*ww_rat2_C20130612);
new3_C20130612=abs(ww3_C20130612.*ww_rat3_C20130612);
new4_C20130612=abs(ww4_C20130612.*ww_rat4_C20130612);
%%
SI_rat1_C20130612=geomean(new1_C20130612)/mean(new1_C20130612);
SI_rat2_C20130612=geomean(new2_C20130612)/mean(new2_C20130612);
SI_rat3_C20130612=geomean(new3_C20130612)/mean(new3_C20130612);
SI_rat4_C20130612=geomean(new4_C20130612)/mean(new4_C20130612);
%% Max  C20130612
max1_C20130612=max(ww1_C20130612);
max2_C20130612=max(ww2_C20130612);
max3_C20130612=max(ww3_C20130612);
max4_C20130612=max(ww4_C20130612);
 
max_mod1_C20130612=max(ww_mod1_C20130612);
max_mod2_C20130612=max(ww_mod2_C20130612);
max_mod3_C20130612=max(ww_mod3_C20130612);
max_mod4_C20130612=max(ww_mod4_C20130612);
%% RMS  C20130612
rms1_C20130612=rms(ww1_C20130612);
rms2_C20130612=rms(ww2_C20130612);
rms3_C20130612=rms(ww3_C20130612);
rms4_C20130612=rms(ww4_C20130612);
 
rms_mod1_C20130612=rms(ww_mod1_C20130612);
rms_mod2_C20130612=rms(ww_mod2_C20130612);
rms_mod3_C20130612=rms(ww_mod3_C20130612);
rms_mod4_C20130612=rms(ww_mod4_C20130612);
%% Crest Factor  C20130612
CF1_C20130612=max1_C20130612/rms1_C20130612;
CF2_C20130612=max2_C20130612/rms2_C20130612;
CF3_C20130612=max3_C20130612/rms3_C20130612;
CF4_C20130612=max4_C20130612/rms4_C20130612;
CF_ort_C20130612=(CF1_C20130612+CF2_C20130612+CF3_C20130612+CF4_C20130612)/4;
 
CF_mod1_C20130612=max_mod1_C20130612/rms_mod1_C20130612;
CF_mod2_C20130612=max_mod2_C20130612/rms_mod2_C20130612;
CF_mod3_C20130612=max_mod3_C20130612/rms_mod3_C20130612;
CF_mod4_C20130612=max_mod4_C20130612/rms_mod4_C20130612;
CF_modort_C20130612=(CF_mod1_C20130612+CF_mod2_C20130612+CF_mod3_C20130612+CF_mod4_C20130612)/4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Pulverizer D
f_read_D20110614 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20110614_B.txt');
f_read_D20110914 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20110914_B.txt');
f_read_D20111213 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20111213_B.txt');
f_read_D20111228 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20111228_B.txt');
f_read_D20120105 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120105_B.txt');
f_read_D20120118 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120118_B.txt');
f_read_D20120131 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120131_B.txt');
f_read_D20120306 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120306_B.txt');
f_read_D20120518 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120518_B.txt');
f_read_D20120621 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120621_B.txt');
f_read_D20120731 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120731_B.txt');
f_read_D20120924 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120924_B.txt');
f_read_D20120926 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20120926_B.txt');
f_read_D20130118 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130118_B.txt');
f_read_D20130311 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130311_B.txt');
f_read_D20130612 = load('C:\Users\user\Desktop\data\train\training_D\Acc\D_Acc_Body_CASE_1_20130612_B.txt');

f_D20110614=transpose(f_read_D20110614);
f_D20110914=transpose(f_read_D20110914);
f_D20111213=transpose(f_read_D20111213);
f_D20111228=transpose(f_read_D20111228);
f_D20120105=transpose(f_read_D20120105);
f_D20120118=transpose(f_read_D20120118);
f_D20120131=transpose(f_read_D20120131);
f_D20120306=transpose(f_read_D20120306);
f_D20120518=transpose(f_read_D20120518);
f_D20120621=transpose(f_read_D20120621);
f_D20120731=transpose(f_read_D20120731);
f_D20120924=transpose(f_read_D20120924);
f_D20120926=transpose(f_read_D20120926);
f_D20130118=transpose(f_read_D20130118);
f_D20130311=transpose(f_read_D20130311);
f_D20130612=transpose(f_read_D20130612);

%% analysis failure 1
[w_D20110614,w_mod_D20110614,w_sm_D20110614,w_spec_D20110614] = analysisforind(f_D20110614, J, alpha, tau);
[w_D20110914,w_mod_D20110914,w_sm_D20110914,w_spec_D20110914] = analysisforind(f_D20110914, J, alpha, tau);
[w_D20111213,w_mod_D20111213,w_sm_D20111213,w_spec_D20111213] = analysisforind(f_D20111213, J, alpha, tau);
[w_D20111228,w_mod_D20111228,w_sm_D20111228,w_spec_D20111228] = analysisforind(f_D20111228, J, alpha, tau);
[w_D20120105,w_mod_D20120105,w_sm_D20120105,w_spec_D20120105] = analysisforind(f_D20120105, J, alpha, tau);
[w_D20120118,w_mod_D20120118,w_sm_D20120118,w_spec_D20120118] = analysisforind(f_D20120118, J, alpha, tau);
[w_D20120131,w_mod_D20120131,w_sm_D20120131,w_spec_D20120131] = analysisforind(f_D20120131, J, alpha, tau);
[w_D20120306,w_mod_D20120306,w_sm_D20120306,w_spec_D20120306] = analysisforind(f_D20120306, J, alpha, tau);
[w_D20120518,w_mod_D20120518,w_sm_D20120518,w_spec_D20120518] = analysisforind(f_D20120518, J, alpha, tau);
[w_D20120621,w_mod_D20120621,w_sm_D20120621,w_spec_D20120621] = analysisforind(f_D20120621, J, alpha, tau);
[w_D20120731,w_mod_D20120731,w_sm_D20120731,w_spec_D20120731] = analysisforind(f_D20120731, J, alpha, tau);
[w_D20120924,w_mod_D20120924,w_sm_D20120924,w_spec_D20120924] = analysisforind(f_D20120924, J, alpha, tau);
[w_D20120926,w_mod_D20120926,w_sm_D20120926,w_spec_D20120926] = analysisforind(f_D20120926, J, alpha, tau);
[w_D20130118,w_mod_D20130118,w_sm_D20130118,w_spec_D20130118] = analysisforind(f_D20130118, J, alpha, tau);
[w_D20130311,w_mod_D20130311,w_sm_D20130311,w_spec_D20130311] = analysisforind(f_D20130311, J, alpha, tau);
[w_D20130612,w_mod_D20130612,w_sm_D20130612,w_spec_D20130612] = analysisforind(f_D20130612, J, alpha, tau);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20110614
w_s_D20110614=table(w_sm_D20110614);
%% 
ww1_D20110614=(w_s_D20110614.w_sm_D20110614{1,1});
ww2_D20110614=(w_s_D20110614.w_sm_D20110614{1,2});
ww3_D20110614=(w_s_D20110614.w_sm_D20110614{1,3});
ww4_D20110614=(w_s_D20110614.w_sm_D20110614{1,4});
%%
SI1_D20110614=geomean(ww1_D20110614)/mean(ww1_D20110614);
SI2_D20110614=geomean(ww2_D20110614)/mean(ww2_D20110614);
SI3_D20110614=geomean(ww3_D20110614)/mean(ww3_D20110614);
SI4_D20110614=geomean(ww4_D20110614)/mean(ww4_D20110614);
%% smoothness index squared modulus  D20110614
w_modu_D20110614=table(w_mod_D20110614);
%%
ww_mod1_D20110614=(w_modu_D20110614.w_mod_D20110614{1,1});
ww_mod2_D20110614=(w_modu_D20110614.w_mod_D20110614{1,2});
ww_mod3_D20110614=(w_modu_D20110614.w_mod_D20110614{1,3});
ww_mod4_D20110614=(w_modu_D20110614.w_mod_D20110614{1,4});
%%
SI_mod1_D20110614=geomean(ww_mod1_D20110614)/mean(ww_mod1_D20110614);
SI_mod2_D20110614=geomean(ww_mod2_D20110614)/mean(ww_mod2_D20110614);
SI_mod3_D20110614=geomean(ww_mod3_D20110614)/mean(ww_mod3_D20110614);
SI_mod4_D20110614=geomean(ww_mod4_D20110614)/mean(ww_mod4_D20110614);
%% smoothness index energy spectrum  D20110614
w_s_D20110614=table(w_spec_D20110614);
%%
ww_rat1_D20110614=abs(w_s_D20110614.w_spec_D20110614{1,1});
ww_rat2_D20110614=abs(w_s_D20110614.w_spec_D20110614{1,2});
ww_rat3_D20110614=abs(w_s_D20110614.w_spec_D20110614{1,3});
ww_rat4_D20110614=abs(w_s_D20110614.w_spec_D20110614{1,4});
%%
new1_D20110614=abs(ww1_D20110614.*ww_rat1_D20110614);
new2_D20110614=abs(ww2_D20110614.*ww_rat2_D20110614);
new3_D20110614=abs(ww3_D20110614.*ww_rat3_D20110614);
new4_D20110614=abs(ww4_D20110614.*ww_rat4_D20110614);
%%
SI_rat1_D20110614=geomean(new1_D20110614)/mean(new1_D20110614);
SI_rat2_D20110614=geomean(new2_D20110614)/mean(new2_D20110614);
SI_rat3_D20110614=geomean(new3_D20110614)/mean(new3_D20110614);
SI_rat4_D20110614=geomean(new4_D20110614)/mean(new4_D20110614);
%% Max  D20110614
max1_D20110614=max(ww1_D20110614);
max2_D20110614=max(ww2_D20110614);
max3_D20110614=max(ww3_D20110614);
max4_D20110614=max(ww4_D20110614);
 
max_mod1_D20110614=max(ww_mod1_D20110614);
max_mod2_D20110614=max(ww_mod2_D20110614);
max_mod3_D20110614=max(ww_mod3_D20110614);
max_mod4_D20110614=max(ww_mod4_D20110614);
%% RMS  D20110614
rms1_D20110614=rms(ww1_D20110614);
rms2_D20110614=rms(ww2_D20110614);
rms3_D20110614=rms(ww3_D20110614);
rms4_D20110614=rms(ww4_D20110614);
 
rms_mod1_D20110614=rms(ww_mod1_D20110614);
rms_mod2_D20110614=rms(ww_mod2_D20110614);
rms_mod3_D20110614=rms(ww_mod3_D20110614);
rms_mod4_D20110614=rms(ww_mod4_D20110614);
%% Crest Factor  D20110614
CF1_D20110614=max1_D20110614/rms1_D20110614;
CF2_D20110614=max2_D20110614/rms2_D20110614;
CF3_D20110614=max3_D20110614/rms3_D20110614;
CF4_D20110614=max4_D20110614/rms4_D20110614;
CF_ort_D20110614=(CF1_D20110614+CF2_D20110614+CF3_D20110614+CF4_D20110614)/4;
 
CF_mod1_D20110614=max_mod1_D20110614/rms_mod1_D20110614;
CF_mod2_D20110614=max_mod2_D20110614/rms_mod2_D20110614;
CF_mod3_D20110614=max_mod3_D20110614/rms_mod3_D20110614;
CF_mod4_D20110614=max_mod4_D20110614/rms_mod4_D20110614;
CF_modort_D20110614=(CF_mod1_D20110614+CF_mod2_D20110614+CF_mod3_D20110614+CF_mod4_D20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20110914
w_s_D20110914=table(w_sm_D20110914);
%% 
ww1_D20110914=(w_s_D20110914.w_sm_D20110914{1,1});
ww2_D20110914=(w_s_D20110914.w_sm_D20110914{1,2});
ww3_D20110914=(w_s_D20110914.w_sm_D20110914{1,3});
ww4_D20110914=(w_s_D20110914.w_sm_D20110914{1,4});
%%
SI1_D20110914=geomean(ww1_D20110914)/mean(ww1_D20110914);
SI2_D20110914=geomean(ww2_D20110914)/mean(ww2_D20110914);
SI3_D20110914=geomean(ww3_D20110914)/mean(ww3_D20110914);
SI4_D20110914=geomean(ww4_D20110914)/mean(ww4_D20110914);
%% smoothness index squared modulus  D20110914
w_modu_D20110914=table(w_mod_D20110914);
%%
ww_mod1_D20110914=(w_modu_D20110914.w_mod_D20110914{1,1});
ww_mod2_D20110914=(w_modu_D20110914.w_mod_D20110914{1,2});
ww_mod3_D20110914=(w_modu_D20110914.w_mod_D20110914{1,3});
ww_mod4_D20110914=(w_modu_D20110914.w_mod_D20110914{1,4});
%%
SI_mod1_D20110914=geomean(ww_mod1_D20110914)/mean(ww_mod1_D20110914);
SI_mod2_D20110914=geomean(ww_mod2_D20110914)/mean(ww_mod2_D20110914);
SI_mod3_D20110914=geomean(ww_mod3_D20110914)/mean(ww_mod3_D20110914);
SI_mod4_D20110914=geomean(ww_mod4_D20110914)/mean(ww_mod4_D20110914);
%% smoothness index energy spectrum  D20110914
w_s_D20110914=table(w_spec_D20110914);
%%
ww_rat1_D20110914=abs(w_s_D20110914.w_spec_D20110914{1,1});
ww_rat2_D20110914=abs(w_s_D20110914.w_spec_D20110914{1,2});
ww_rat3_D20110914=abs(w_s_D20110914.w_spec_D20110914{1,3});
ww_rat4_D20110914=abs(w_s_D20110914.w_spec_D20110914{1,4});
%%
new1_D20110914=abs(ww1_D20110914.*ww_rat1_D20110914);
new2_D20110914=abs(ww2_D20110914.*ww_rat2_D20110914);
new3_D20110914=abs(ww3_D20110914.*ww_rat3_D20110914);
new4_D20110914=abs(ww4_D20110914.*ww_rat4_D20110914);
%%
SI_rat1_D20110914=geomean(new1_D20110914)/mean(new1_D20110914);
SI_rat2_D20110914=geomean(new2_D20110914)/mean(new2_D20110914);
SI_rat3_D20110914=geomean(new3_D20110914)/mean(new3_D20110914);
SI_rat4_D20110914=geomean(new4_D20110914)/mean(new4_D20110914);
%% Max  D20110914
max1_D20110914=max(ww1_D20110914);
max2_D20110914=max(ww2_D20110914);
max3_D20110914=max(ww3_D20110914);
max4_D20110914=max(ww4_D20110914);
 
max_mod1_D20110914=max(ww_mod1_D20110914);
max_mod2_D20110914=max(ww_mod2_D20110914);
max_mod3_D20110914=max(ww_mod3_D20110914);
max_mod4_D20110914=max(ww_mod4_D20110914);
%% RMS  D20110914
rms1_D20110914=rms(ww1_D20110914);
rms2_D20110914=rms(ww2_D20110914);
rms3_D20110914=rms(ww3_D20110914);
rms4_D20110914=rms(ww4_D20110914);
 
rms_mod1_D20110914=rms(ww_mod1_D20110914);
rms_mod2_D20110914=rms(ww_mod2_D20110914);
rms_mod3_D20110914=rms(ww_mod3_D20110914);
rms_mod4_D20110914=rms(ww_mod4_D20110914);
%% Crest Factor  D20110914
CF1_D20110914=max1_D20110914/rms1_D20110914;
CF2_D20110914=max2_D20110914/rms2_D20110914;
CF3_D20110914=max3_D20110914/rms3_D20110914;
CF4_D20110914=max4_D20110914/rms4_D20110914;
CF_ort_D20110914=(CF1_D20110914+CF2_D20110914+CF3_D20110914+CF4_D20110914)/4;
 
CF_mod1_D20110914=max_mod1_D20110914/rms_mod1_D20110914;
CF_mod2_D20110914=max_mod2_D20110914/rms_mod2_D20110914;
CF_mod3_D20110914=max_mod3_D20110914/rms_mod3_D20110914;
CF_mod4_D20110914=max_mod4_D20110914/rms_mod4_D20110914;
CF_modort_D20110914=(CF_mod1_D20110914+CF_mod2_D20110914+CF_mod3_D20110914+CF_mod4_D20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20111213
w_s_D20111213=table(w_sm_D20111213);
%% 
ww1_D20111213=(w_s_D20111213.w_sm_D20111213{1,1});
ww2_D20111213=(w_s_D20111213.w_sm_D20111213{1,2});
ww3_D20111213=(w_s_D20111213.w_sm_D20111213{1,3});
ww4_D20111213=(w_s_D20111213.w_sm_D20111213{1,4});
%%
SI1_D20111213=geomean(ww1_D20111213)/mean(ww1_D20111213);
SI2_D20111213=geomean(ww2_D20111213)/mean(ww2_D20111213);
SI3_D20111213=geomean(ww3_D20111213)/mean(ww3_D20111213);
SI4_D20111213=geomean(ww4_D20111213)/mean(ww4_D20111213);
%% smoothness index squared modulus  D20111213
w_modu_D20111213=table(w_mod_D20111213);
%%
ww_mod1_D20111213=(w_modu_D20111213.w_mod_D20111213{1,1});
ww_mod2_D20111213=(w_modu_D20111213.w_mod_D20111213{1,2});
ww_mod3_D20111213=(w_modu_D20111213.w_mod_D20111213{1,3});
ww_mod4_D20111213=(w_modu_D20111213.w_mod_D20111213{1,4});
%%
SI_mod1_D20111213=geomean(ww_mod1_D20111213)/mean(ww_mod1_D20111213);
SI_mod2_D20111213=geomean(ww_mod2_D20111213)/mean(ww_mod2_D20111213);
SI_mod3_D20111213=geomean(ww_mod3_D20111213)/mean(ww_mod3_D20111213);
SI_mod4_D20111213=geomean(ww_mod4_D20111213)/mean(ww_mod4_D20111213);
%% smoothness index energy spectrum  D20111213
w_s_D20111213=table(w_spec_D20111213);
%%
ww_rat1_D20111213=abs(w_s_D20111213.w_spec_D20111213{1,1});
ww_rat2_D20111213=abs(w_s_D20111213.w_spec_D20111213{1,2});
ww_rat3_D20111213=abs(w_s_D20111213.w_spec_D20111213{1,3});
ww_rat4_D20111213=abs(w_s_D20111213.w_spec_D20111213{1,4});
%%
new1_D20111213=abs(ww1_D20111213.*ww_rat1_D20111213);
new2_D20111213=abs(ww2_D20111213.*ww_rat2_D20111213);
new3_D20111213=abs(ww3_D20111213.*ww_rat3_D20111213);
new4_D20111213=abs(ww4_D20111213.*ww_rat4_D20111213);
%%
SI_rat1_D20111213=geomean(new1_D20111213)/mean(new1_D20111213);
SI_rat2_D20111213=geomean(new2_D20111213)/mean(new2_D20111213);
SI_rat3_D20111213=geomean(new3_D20111213)/mean(new3_D20111213);
SI_rat4_D20111213=geomean(new4_D20111213)/mean(new4_D20111213);
%% Max  D20111213
max1_D20111213=max(ww1_D20111213);
max2_D20111213=max(ww2_D20111213);
max3_D20111213=max(ww3_D20111213);
max4_D20111213=max(ww4_D20111213);
 
max_mod1_D20111213=max(ww_mod1_D20111213);
max_mod2_D20111213=max(ww_mod2_D20111213);
max_mod3_D20111213=max(ww_mod3_D20111213);
max_mod4_D20111213=max(ww_mod4_D20111213);
%% RMS  D20111213
rms1_D20111213=rms(ww1_D20111213);
rms2_D20111213=rms(ww2_D20111213);
rms3_D20111213=rms(ww3_D20111213);
rms4_D20111213=rms(ww4_D20111213);
 
rms_mod1_D20111213=rms(ww_mod1_D20111213);
rms_mod2_D20111213=rms(ww_mod2_D20111213);
rms_mod3_D20111213=rms(ww_mod3_D20111213);
rms_mod4_D20111213=rms(ww_mod4_D20111213);
%% Crest Factor  D20111213
CF1_D20111213=max1_D20111213/rms1_D20111213;
CF2_D20111213=max2_D20111213/rms2_D20111213;
CF3_D20111213=max3_D20111213/rms3_D20111213;
CF4_D20111213=max4_D20111213/rms4_D20111213;
CF_ort_D20111213=(CF1_D20111213+CF2_D20111213+CF3_D20111213+CF4_D20111213)/4;
 
CF_mod1_D20111213=max_mod1_D20111213/rms_mod1_D20111213;
CF_mod2_D20111213=max_mod2_D20111213/rms_mod2_D20111213;
CF_mod3_D20111213=max_mod3_D20111213/rms_mod3_D20111213;
CF_mod4_D20111213=max_mod4_D20111213/rms_mod4_D20111213;
CF_modort_D20111213=(CF_mod1_D20111213+CF_mod2_D20111213+CF_mod3_D20111213+CF_mod4_D20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20111228
w_s_D20111228=table(w_sm_D20111228);
%% 
ww1_D20111228=(w_s_D20111228.w_sm_D20111228{1,1});
ww2_D20111228=(w_s_D20111228.w_sm_D20111228{1,2});
ww3_D20111228=(w_s_D20111228.w_sm_D20111228{1,3});
ww4_D20111228=(w_s_D20111228.w_sm_D20111228{1,4});
%%
SI1_D20111228=geomean(ww1_D20111228)/mean(ww1_D20111228);
SI2_D20111228=geomean(ww2_D20111228)/mean(ww2_D20111228);
SI3_D20111228=geomean(ww3_D20111228)/mean(ww3_D20111228);
SI4_D20111228=geomean(ww4_D20111228)/mean(ww4_D20111228);
%% smoothness index squared modulus  D20111228
w_modu_D20111228=table(w_mod_D20111228);
%%
ww_mod1_D20111228=(w_modu_D20111228.w_mod_D20111228{1,1});
ww_mod2_D20111228=(w_modu_D20111228.w_mod_D20111228{1,2});
ww_mod3_D20111228=(w_modu_D20111228.w_mod_D20111228{1,3});
ww_mod4_D20111228=(w_modu_D20111228.w_mod_D20111228{1,4});
%%
SI_mod1_D20111228=geomean(ww_mod1_D20111228)/mean(ww_mod1_D20111228);
SI_mod2_D20111228=geomean(ww_mod2_D20111228)/mean(ww_mod2_D20111228);
SI_mod3_D20111228=geomean(ww_mod3_D20111228)/mean(ww_mod3_D20111228);
SI_mod4_D20111228=geomean(ww_mod4_D20111228)/mean(ww_mod4_D20111228);
%% smoothness index energy spectrum  D20111228
w_s_D20111228=table(w_spec_D20111228);
%%
ww_rat1_D20111228=abs(w_s_D20111228.w_spec_D20111228{1,1});
ww_rat2_D20111228=abs(w_s_D20111228.w_spec_D20111228{1,2});
ww_rat3_D20111228=abs(w_s_D20111228.w_spec_D20111228{1,3});
ww_rat4_D20111228=abs(w_s_D20111228.w_spec_D20111228{1,4});
%%
new1_D20111228=abs(ww1_D20111228.*ww_rat1_D20111228);
new2_D20111228=abs(ww2_D20111228.*ww_rat2_D20111228);
new3_D20111228=abs(ww3_D20111228.*ww_rat3_D20111228);
new4_D20111228=abs(ww4_D20111228.*ww_rat4_D20111228);
%%
SI_rat1_D20111228=geomean(new1_D20111228)/mean(new1_D20111228);
SI_rat2_D20111228=geomean(new2_D20111228)/mean(new2_D20111228);
SI_rat3_D20111228=geomean(new3_D20111228)/mean(new3_D20111228);
SI_rat4_D20111228=geomean(new4_D20111228)/mean(new4_D20111228);
%% Max  D20111228
max1_D20111228=max(ww1_D20111228);
max2_D20111228=max(ww2_D20111228);
max3_D20111228=max(ww3_D20111228);
max4_D20111228=max(ww4_D20111228);
 
max_mod1_D20111228=max(ww_mod1_D20111228);
max_mod2_D20111228=max(ww_mod2_D20111228);
max_mod3_D20111228=max(ww_mod3_D20111228);
max_mod4_D20111228=max(ww_mod4_D20111228);
%% RMS  D20111228
rms1_D20111228=rms(ww1_D20111228);
rms2_D20111228=rms(ww2_D20111228);
rms3_D20111228=rms(ww3_D20111228);
rms4_D20111228=rms(ww4_D20111228);
 
rms_mod1_D20111228=rms(ww_mod1_D20111228);
rms_mod2_D20111228=rms(ww_mod2_D20111228);
rms_mod3_D20111228=rms(ww_mod3_D20111228);
rms_mod4_D20111228=rms(ww_mod4_D20111228);
%% Crest Factor  D20111228
CF1_D20111228=max1_D20111228/rms1_D20111228;
CF2_D20111228=max2_D20111228/rms2_D20111228;
CF3_D20111228=max3_D20111228/rms3_D20111228;
CF4_D20111228=max4_D20111228/rms4_D20111228;
CF_ort_D20111228=(CF1_D20111228+CF2_D20111228+CF3_D20111228+CF4_D20111228)/4;
 
CF_mod1_D20111228=max_mod1_D20111228/rms_mod1_D20111228;
CF_mod2_D20111228=max_mod2_D20111228/rms_mod2_D20111228;
CF_mod3_D20111228=max_mod3_D20111228/rms_mod3_D20111228;
CF_mod4_D20111228=max_mod4_D20111228/rms_mod4_D20111228;
CF_modort_D20111228=(CF_mod1_D20111228+CF_mod2_D20111228+CF_mod3_D20111228+CF_mod4_D20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120105
w_s_D20120105=table(w_sm_D20120105);
%% 
ww1_D20120105=(w_s_D20120105.w_sm_D20120105{1,1});
ww2_D20120105=(w_s_D20120105.w_sm_D20120105{1,2});
ww3_D20120105=(w_s_D20120105.w_sm_D20120105{1,3});
ww4_D20120105=(w_s_D20120105.w_sm_D20120105{1,4});
%%
SI1_D20120105=geomean(ww1_D20120105)/mean(ww1_D20120105);
SI2_D20120105=geomean(ww2_D20120105)/mean(ww2_D20120105);
SI3_D20120105=geomean(ww3_D20120105)/mean(ww3_D20120105);
SI4_D20120105=geomean(ww4_D20120105)/mean(ww4_D20120105);
%% smoothness index squared modulus  D20120105
w_modu_D20120105=table(w_mod_D20120105);
%%
ww_mod1_D20120105=(w_modu_D20120105.w_mod_D20120105{1,1});
ww_mod2_D20120105=(w_modu_D20120105.w_mod_D20120105{1,2});
ww_mod3_D20120105=(w_modu_D20120105.w_mod_D20120105{1,3});
ww_mod4_D20120105=(w_modu_D20120105.w_mod_D20120105{1,4});
%%
SI_mod1_D20120105=geomean(ww_mod1_D20120105)/mean(ww_mod1_D20120105);
SI_mod2_D20120105=geomean(ww_mod2_D20120105)/mean(ww_mod2_D20120105);
SI_mod3_D20120105=geomean(ww_mod3_D20120105)/mean(ww_mod3_D20120105);
SI_mod4_D20120105=geomean(ww_mod4_D20120105)/mean(ww_mod4_D20120105);
%% smoothness index energy spectrum  D20120105
w_s_D20120105=table(w_spec_D20120105);
%%
ww_rat1_D20120105=abs(w_s_D20120105.w_spec_D20120105{1,1});
ww_rat2_D20120105=abs(w_s_D20120105.w_spec_D20120105{1,2});
ww_rat3_D20120105=abs(w_s_D20120105.w_spec_D20120105{1,3});
ww_rat4_D20120105=abs(w_s_D20120105.w_spec_D20120105{1,4});
%%
new1_D20120105=abs(ww1_D20120105.*ww_rat1_D20120105);
new2_D20120105=abs(ww2_D20120105.*ww_rat2_D20120105);
new3_D20120105=abs(ww3_D20120105.*ww_rat3_D20120105);
new4_D20120105=abs(ww4_D20120105.*ww_rat4_D20120105);
%%
SI_rat1_D20120105=geomean(new1_D20120105)/mean(new1_D20120105);
SI_rat2_D20120105=geomean(new2_D20120105)/mean(new2_D20120105);
SI_rat3_D20120105=geomean(new3_D20120105)/mean(new3_D20120105);
SI_rat4_D20120105=geomean(new4_D20120105)/mean(new4_D20120105);
%% Max  D20120105
max1_D20120105=max(ww1_D20120105);
max2_D20120105=max(ww2_D20120105);
max3_D20120105=max(ww3_D20120105);
max4_D20120105=max(ww4_D20120105);
 
max_mod1_D20120105=max(ww_mod1_D20120105);
max_mod2_D20120105=max(ww_mod2_D20120105);
max_mod3_D20120105=max(ww_mod3_D20120105);
max_mod4_D20120105=max(ww_mod4_D20120105);
%% RMS  D20120105
rms1_D20120105=rms(ww1_D20120105);
rms2_D20120105=rms(ww2_D20120105);
rms3_D20120105=rms(ww3_D20120105);
rms4_D20120105=rms(ww4_D20120105);
 
rms_mod1_D20120105=rms(ww_mod1_D20120105);
rms_mod2_D20120105=rms(ww_mod2_D20120105);
rms_mod3_D20120105=rms(ww_mod3_D20120105);
rms_mod4_D20120105=rms(ww_mod4_D20120105);
%% Crest Factor  D20120105
CF1_D20120105=max1_D20120105/rms1_D20120105;
CF2_D20120105=max2_D20120105/rms2_D20120105;
CF3_D20120105=max3_D20120105/rms3_D20120105;
CF4_D20120105=max4_D20120105/rms4_D20120105;
CF_ort_D20120105=(CF1_D20120105+CF2_D20120105+CF3_D20120105+CF4_D20120105)/4;
 
CF_mod1_D20120105=max_mod1_D20120105/rms_mod1_D20120105;
CF_mod2_D20120105=max_mod2_D20120105/rms_mod2_D20120105;
CF_mod3_D20120105=max_mod3_D20120105/rms_mod3_D20120105;
CF_mod4_D20120105=max_mod4_D20120105/rms_mod4_D20120105;
CF_modort_D20120105=(CF_mod1_D20120105+CF_mod2_D20120105+CF_mod3_D20120105+CF_mod4_D20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120118
w_s_D20120118=table(w_sm_D20120118);
%% 
ww1_D20120118=(w_s_D20120118.w_sm_D20120118{1,1});
ww2_D20120118=(w_s_D20120118.w_sm_D20120118{1,2});
ww3_D20120118=(w_s_D20120118.w_sm_D20120118{1,3});
ww4_D20120118=(w_s_D20120118.w_sm_D20120118{1,4});
%%
SI1_D20120118=geomean(ww1_D20120118)/mean(ww1_D20120118);
SI2_D20120118=geomean(ww2_D20120118)/mean(ww2_D20120118);
SI3_D20120118=geomean(ww3_D20120118)/mean(ww3_D20120118);
SI4_D20120118=geomean(ww4_D20120118)/mean(ww4_D20120118);
%% smoothness index squared modulus  D20120118
w_modu_D20120118=table(w_mod_D20120118);
%%
ww_mod1_D20120118=(w_modu_D20120118.w_mod_D20120118{1,1});
ww_mod2_D20120118=(w_modu_D20120118.w_mod_D20120118{1,2});
ww_mod3_D20120118=(w_modu_D20120118.w_mod_D20120118{1,3});
ww_mod4_D20120118=(w_modu_D20120118.w_mod_D20120118{1,4});
%%
SI_mod1_D20120118=geomean(ww_mod1_D20120118)/mean(ww_mod1_D20120118);
SI_mod2_D20120118=geomean(ww_mod2_D20120118)/mean(ww_mod2_D20120118);
SI_mod3_D20120118=geomean(ww_mod3_D20120118)/mean(ww_mod3_D20120118);
SI_mod4_D20120118=geomean(ww_mod4_D20120118)/mean(ww_mod4_D20120118);
%% smoothness index energy spectrum  D20120118
w_s_D20120118=table(w_spec_D20120118);
%%
ww_rat1_D20120118=abs(w_s_D20120118.w_spec_D20120118{1,1});
ww_rat2_D20120118=abs(w_s_D20120118.w_spec_D20120118{1,2});
ww_rat3_D20120118=abs(w_s_D20120118.w_spec_D20120118{1,3});
ww_rat4_D20120118=abs(w_s_D20120118.w_spec_D20120118{1,4});
%%
new1_D20120118=abs(ww1_D20120118.*ww_rat1_D20120118);
new2_D20120118=abs(ww2_D20120118.*ww_rat2_D20120118);
new3_D20120118=abs(ww3_D20120118.*ww_rat3_D20120118);
new4_D20120118=abs(ww4_D20120118.*ww_rat4_D20120118);
%%
SI_rat1_D20120118=geomean(new1_D20120118)/mean(new1_D20120118);
SI_rat2_D20120118=geomean(new2_D20120118)/mean(new2_D20120118);
SI_rat3_D20120118=geomean(new3_D20120118)/mean(new3_D20120118);
SI_rat4_D20120118=geomean(new4_D20120118)/mean(new4_D20120118);
%% Max  D20120118
max1_D20120118=max(ww1_D20120118);
max2_D20120118=max(ww2_D20120118);
max3_D20120118=max(ww3_D20120118);
max4_D20120118=max(ww4_D20120118);
 
max_mod1_D20120118=max(ww_mod1_D20120118);
max_mod2_D20120118=max(ww_mod2_D20120118);
max_mod3_D20120118=max(ww_mod3_D20120118);
max_mod4_D20120118=max(ww_mod4_D20120118);
%% RMS  D20120118
rms1_D20120118=rms(ww1_D20120118);
rms2_D20120118=rms(ww2_D20120118);
rms3_D20120118=rms(ww3_D20120118);
rms4_D20120118=rms(ww4_D20120118);
 
rms_mod1_D20120118=rms(ww_mod1_D20120118);
rms_mod2_D20120118=rms(ww_mod2_D20120118);
rms_mod3_D20120118=rms(ww_mod3_D20120118);
rms_mod4_D20120118=rms(ww_mod4_D20120118);
%% Crest Factor  D20120118
CF1_D20120118=max1_D20120118/rms1_D20120118;
CF2_D20120118=max2_D20120118/rms2_D20120118;
CF3_D20120118=max3_D20120118/rms3_D20120118;
CF4_D20120118=max4_D20120118/rms4_D20120118;
CF_ort_D20120118=(CF1_D20120118+CF2_D20120118+CF3_D20120118+CF4_D20120118)/4;
 
CF_mod1_D20120118=max_mod1_D20120118/rms_mod1_D20120118;
CF_mod2_D20120118=max_mod2_D20120118/rms_mod2_D20120118;
CF_mod3_D20120118=max_mod3_D20120118/rms_mod3_D20120118;
CF_mod4_D20120118=max_mod4_D20120118/rms_mod4_D20120118;
CF_modort_D20120118=(CF_mod1_D20120118+CF_mod2_D20120118+CF_mod3_D20120118+CF_mod4_D20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120131
w_s_D20120131=table(w_sm_D20120131);
%% 
ww1_D20120131=(w_s_D20120131.w_sm_D20120131{1,1});
ww2_D20120131=(w_s_D20120131.w_sm_D20120131{1,2});
ww3_D20120131=(w_s_D20120131.w_sm_D20120131{1,3});
ww4_D20120131=(w_s_D20120131.w_sm_D20120131{1,4});
%%
SI1_D20120131=geomean(ww1_D20120131)/mean(ww1_D20120131);
SI2_D20120131=geomean(ww2_D20120131)/mean(ww2_D20120131);
SI3_D20120131=geomean(ww3_D20120131)/mean(ww3_D20120131);
SI4_D20120131=geomean(ww4_D20120131)/mean(ww4_D20120131);
%% smoothness index squared modulus  D20120131
w_modu_D20120131=table(w_mod_D20120131);
%%
ww_mod1_D20120131=(w_modu_D20120131.w_mod_D20120131{1,1});
ww_mod2_D20120131=(w_modu_D20120131.w_mod_D20120131{1,2});
ww_mod3_D20120131=(w_modu_D20120131.w_mod_D20120131{1,3});
ww_mod4_D20120131=(w_modu_D20120131.w_mod_D20120131{1,4});
%%
SI_mod1_D20120131=geomean(ww_mod1_D20120131)/mean(ww_mod1_D20120131);
SI_mod2_D20120131=geomean(ww_mod2_D20120131)/mean(ww_mod2_D20120131);
SI_mod3_D20120131=geomean(ww_mod3_D20120131)/mean(ww_mod3_D20120131);
SI_mod4_D20120131=geomean(ww_mod4_D20120131)/mean(ww_mod4_D20120131);
%% smoothness index energy spectrum  D20120131
w_s_D20120131=table(w_spec_D20120131);
%%
ww_rat1_D20120131=abs(w_s_D20120131.w_spec_D20120131{1,1});
ww_rat2_D20120131=abs(w_s_D20120131.w_spec_D20120131{1,2});
ww_rat3_D20120131=abs(w_s_D20120131.w_spec_D20120131{1,3});
ww_rat4_D20120131=abs(w_s_D20120131.w_spec_D20120131{1,4});
%%
new1_D20120131=abs(ww1_D20120131.*ww_rat1_D20120131);
new2_D20120131=abs(ww2_D20120131.*ww_rat2_D20120131);
new3_D20120131=abs(ww3_D20120131.*ww_rat3_D20120131);
new4_D20120131=abs(ww4_D20120131.*ww_rat4_D20120131);
%%
SI_rat1_D20120131=geomean(new1_D20120131)/mean(new1_D20120131);
SI_rat2_D20120131=geomean(new2_D20120131)/mean(new2_D20120131);
SI_rat3_D20120131=geomean(new3_D20120131)/mean(new3_D20120131);
SI_rat4_D20120131=geomean(new4_D20120131)/mean(new4_D20120131);
%% Max  D20120131
max1_D20120131=max(ww1_D20120131);
max2_D20120131=max(ww2_D20120131);
max3_D20120131=max(ww3_D20120131);
max4_D20120131=max(ww4_D20120131);
 
max_mod1_D20120131=max(ww_mod1_D20120131);
max_mod2_D20120131=max(ww_mod2_D20120131);
max_mod3_D20120131=max(ww_mod3_D20120131);
max_mod4_D20120131=max(ww_mod4_D20120131);
%% RMS  D20120131
rms1_D20120131=rms(ww1_D20120131);
rms2_D20120131=rms(ww2_D20120131);
rms3_D20120131=rms(ww3_D20120131);
rms4_D20120131=rms(ww4_D20120131);
 
rms_mod1_D20120131=rms(ww_mod1_D20120131);
rms_mod2_D20120131=rms(ww_mod2_D20120131);
rms_mod3_D20120131=rms(ww_mod3_D20120131);
rms_mod4_D20120131=rms(ww_mod4_D20120131);
%% Crest Factor  D20120131
CF1_D20120131=max1_D20120131/rms1_D20120131;
CF2_D20120131=max2_D20120131/rms2_D20120131;
CF3_D20120131=max3_D20120131/rms3_D20120131;
CF4_D20120131=max4_D20120131/rms4_D20120131;
CF_ort_D20120131=(CF1_D20120131+CF2_D20120131+CF3_D20120131+CF4_D20120131)/4;
 
CF_mod1_D20120131=max_mod1_D20120131/rms_mod1_D20120131;
CF_mod2_D20120131=max_mod2_D20120131/rms_mod2_D20120131;
CF_mod3_D20120131=max_mod3_D20120131/rms_mod3_D20120131;
CF_mod4_D20120131=max_mod4_D20120131/rms_mod4_D20120131;
CF_modort_D20120131=(CF_mod1_D20120131+CF_mod2_D20120131+CF_mod3_D20120131+CF_mod4_D20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120306
w_s_D20120306=table(w_sm_D20120306);
%% 
ww1_D20120306=(w_s_D20120306.w_sm_D20120306{1,1});
ww2_D20120306=(w_s_D20120306.w_sm_D20120306{1,2});
ww3_D20120306=(w_s_D20120306.w_sm_D20120306{1,3});
ww4_D20120306=(w_s_D20120306.w_sm_D20120306{1,4});
%%
SI1_D20120306=geomean(ww1_D20120306)/mean(ww1_D20120306);
SI2_D20120306=geomean(ww2_D20120306)/mean(ww2_D20120306);
SI3_D20120306=geomean(ww3_D20120306)/mean(ww3_D20120306);
SI4_D20120306=geomean(ww4_D20120306)/mean(ww4_D20120306);
%% smoothness index squared modulus  D20120306
w_modu_D20120306=table(w_mod_D20120306);
%%
ww_mod1_D20120306=(w_modu_D20120306.w_mod_D20120306{1,1});
ww_mod2_D20120306=(w_modu_D20120306.w_mod_D20120306{1,2});
ww_mod3_D20120306=(w_modu_D20120306.w_mod_D20120306{1,3});
ww_mod4_D20120306=(w_modu_D20120306.w_mod_D20120306{1,4});
%%
SI_mod1_D20120306=geomean(ww_mod1_D20120306)/mean(ww_mod1_D20120306);
SI_mod2_D20120306=geomean(ww_mod2_D20120306)/mean(ww_mod2_D20120306);
SI_mod3_D20120306=geomean(ww_mod3_D20120306)/mean(ww_mod3_D20120306);
SI_mod4_D20120306=geomean(ww_mod4_D20120306)/mean(ww_mod4_D20120306);
%% smoothness index energy spectrum  D20120306
w_s_D20120306=table(w_spec_D20120306);
%%
ww_rat1_D20120306=abs(w_s_D20120306.w_spec_D20120306{1,1});
ww_rat2_D20120306=abs(w_s_D20120306.w_spec_D20120306{1,2});
ww_rat3_D20120306=abs(w_s_D20120306.w_spec_D20120306{1,3});
ww_rat4_D20120306=abs(w_s_D20120306.w_spec_D20120306{1,4});
%%
new1_D20120306=abs(ww1_D20120306.*ww_rat1_D20120306);
new2_D20120306=abs(ww2_D20120306.*ww_rat2_D20120306);
new3_D20120306=abs(ww3_D20120306.*ww_rat3_D20120306);
new4_D20120306=abs(ww4_D20120306.*ww_rat4_D20120306);
%%
SI_rat1_D20120306=geomean(new1_D20120306)/mean(new1_D20120306);
SI_rat2_D20120306=geomean(new2_D20120306)/mean(new2_D20120306);
SI_rat3_D20120306=geomean(new3_D20120306)/mean(new3_D20120306);
SI_rat4_D20120306=geomean(new4_D20120306)/mean(new4_D20120306);
%% Max  D20120306
max1_D20120306=max(ww1_D20120306);
max2_D20120306=max(ww2_D20120306);
max3_D20120306=max(ww3_D20120306);
max4_D20120306=max(ww4_D20120306);
 
max_mod1_D20120306=max(ww_mod1_D20120306);
max_mod2_D20120306=max(ww_mod2_D20120306);
max_mod3_D20120306=max(ww_mod3_D20120306);
max_mod4_D20120306=max(ww_mod4_D20120306);
%% RMS  D20120306
rms1_D20120306=rms(ww1_D20120306);
rms2_D20120306=rms(ww2_D20120306);
rms3_D20120306=rms(ww3_D20120306);
rms4_D20120306=rms(ww4_D20120306);
 
rms_mod1_D20120306=rms(ww_mod1_D20120306);
rms_mod2_D20120306=rms(ww_mod2_D20120306);
rms_mod3_D20120306=rms(ww_mod3_D20120306);
rms_mod4_D20120306=rms(ww_mod4_D20120306);
%% Crest Factor  D20120306
CF1_D20120306=max1_D20120306/rms1_D20120306;
CF2_D20120306=max2_D20120306/rms2_D20120306;
CF3_D20120306=max3_D20120306/rms3_D20120306;
CF4_D20120306=max4_D20120306/rms4_D20120306;
CF_ort_D20120306=(CF1_D20120306+CF2_D20120306+CF3_D20120306+CF4_D20120306)/4;
 
CF_mod1_D20120306=max_mod1_D20120306/rms_mod1_D20120306;
CF_mod2_D20120306=max_mod2_D20120306/rms_mod2_D20120306;
CF_mod3_D20120306=max_mod3_D20120306/rms_mod3_D20120306;
CF_mod4_D20120306=max_mod4_D20120306/rms_mod4_D20120306;
CF_modort_D20120306=(CF_mod1_D20120306+CF_mod2_D20120306+CF_mod3_D20120306+CF_mod4_D20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120518
w_s_D20120518=table(w_sm_D20120518);
%% 
ww1_D20120518=(w_s_D20120518.w_sm_D20120518{1,1});
ww2_D20120518=(w_s_D20120518.w_sm_D20120518{1,2});
ww3_D20120518=(w_s_D20120518.w_sm_D20120518{1,3});
ww4_D20120518=(w_s_D20120518.w_sm_D20120518{1,4});
%%
SI1_D20120518=geomean(ww1_D20120518)/mean(ww1_D20120518);
SI2_D20120518=geomean(ww2_D20120518)/mean(ww2_D20120518);
SI3_D20120518=geomean(ww3_D20120518)/mean(ww3_D20120518);
SI4_D20120518=geomean(ww4_D20120518)/mean(ww4_D20120518);
%% smoothness index squared modulus  D20120518
w_modu_D20120518=table(w_mod_D20120518);
%%
ww_mod1_D20120518=(w_modu_D20120518.w_mod_D20120518{1,1});
ww_mod2_D20120518=(w_modu_D20120518.w_mod_D20120518{1,2});
ww_mod3_D20120518=(w_modu_D20120518.w_mod_D20120518{1,3});
ww_mod4_D20120518=(w_modu_D20120518.w_mod_D20120518{1,4});
%%
SI_mod1_D20120518=geomean(ww_mod1_D20120518)/mean(ww_mod1_D20120518);
SI_mod2_D20120518=geomean(ww_mod2_D20120518)/mean(ww_mod2_D20120518);
SI_mod3_D20120518=geomean(ww_mod3_D20120518)/mean(ww_mod3_D20120518);
SI_mod4_D20120518=geomean(ww_mod4_D20120518)/mean(ww_mod4_D20120518);
%% smoothness index energy spectrum  D20120518
w_s_D20120518=table(w_spec_D20120518);
%%
ww_rat1_D20120518=abs(w_s_D20120518.w_spec_D20120518{1,1});
ww_rat2_D20120518=abs(w_s_D20120518.w_spec_D20120518{1,2});
ww_rat3_D20120518=abs(w_s_D20120518.w_spec_D20120518{1,3});
ww_rat4_D20120518=abs(w_s_D20120518.w_spec_D20120518{1,4});
%%
new1_D20120518=abs(ww1_D20120518.*ww_rat1_D20120518);
new2_D20120518=abs(ww2_D20120518.*ww_rat2_D20120518);
new3_D20120518=abs(ww3_D20120518.*ww_rat3_D20120518);
new4_D20120518=abs(ww4_D20120518.*ww_rat4_D20120518);
%%
SI_rat1_D20120518=geomean(new1_D20120518)/mean(new1_D20120518);
SI_rat2_D20120518=geomean(new2_D20120518)/mean(new2_D20120518);
SI_rat3_D20120518=geomean(new3_D20120518)/mean(new3_D20120518);
SI_rat4_D20120518=geomean(new4_D20120518)/mean(new4_D20120518);
%% Max  D20120518
max1_D20120518=max(ww1_D20120518);
max2_D20120518=max(ww2_D20120518);
max3_D20120518=max(ww3_D20120518);
max4_D20120518=max(ww4_D20120518);
 
max_mod1_D20120518=max(ww_mod1_D20120518);
max_mod2_D20120518=max(ww_mod2_D20120518);
max_mod3_D20120518=max(ww_mod3_D20120518);
max_mod4_D20120518=max(ww_mod4_D20120518);
%% RMS  D20120518
rms1_D20120518=rms(ww1_D20120518);
rms2_D20120518=rms(ww2_D20120518);
rms3_D20120518=rms(ww3_D20120518);
rms4_D20120518=rms(ww4_D20120518);
 
rms_mod1_D20120518=rms(ww_mod1_D20120518);
rms_mod2_D20120518=rms(ww_mod2_D20120518);
rms_mod3_D20120518=rms(ww_mod3_D20120518);
rms_mod4_D20120518=rms(ww_mod4_D20120518);
%% Crest Factor  D20120518
CF1_D20120518=max1_D20120518/rms1_D20120518;
CF2_D20120518=max2_D20120518/rms2_D20120518;
CF3_D20120518=max3_D20120518/rms3_D20120518;
CF4_D20120518=max4_D20120518/rms4_D20120518;
CF_ort_D20120518=(CF1_D20120518+CF2_D20120518+CF3_D20120518+CF4_D20120518)/4;
 
CF_mod1_D20120518=max_mod1_D20120518/rms_mod1_D20120518;
CF_mod2_D20120518=max_mod2_D20120518/rms_mod2_D20120518;
CF_mod3_D20120518=max_mod3_D20120518/rms_mod3_D20120518;
CF_mod4_D20120518=max_mod4_D20120518/rms_mod4_D20120518;
CF_modort_D20120518=(CF_mod1_D20120518+CF_mod2_D20120518+CF_mod3_D20120518+CF_mod4_D20120518)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120621
w_s_D20120621=table(w_sm_D20120621);
%% 
ww1_D20120621=(w_s_D20120621.w_sm_D20120621{1,1});
ww2_D20120621=(w_s_D20120621.w_sm_D20120621{1,2});
ww3_D20120621=(w_s_D20120621.w_sm_D20120621{1,3});
ww4_D20120621=(w_s_D20120621.w_sm_D20120621{1,4});
%%
SI1_D20120621=geomean(ww1_D20120621)/mean(ww1_D20120621);
SI2_D20120621=geomean(ww2_D20120621)/mean(ww2_D20120621);
SI3_D20120621=geomean(ww3_D20120621)/mean(ww3_D20120621);
SI4_D20120621=geomean(ww4_D20120621)/mean(ww4_D20120621);
%% smoothness index squared modulus  D20120621
w_modu_D20120621=table(w_mod_D20120621);
%%
ww_mod1_D20120621=(w_modu_D20120621.w_mod_D20120621{1,1});
ww_mod2_D20120621=(w_modu_D20120621.w_mod_D20120621{1,2});
ww_mod3_D20120621=(w_modu_D20120621.w_mod_D20120621{1,3});
ww_mod4_D20120621=(w_modu_D20120621.w_mod_D20120621{1,4});
%%
SI_mod1_D20120621=geomean(ww_mod1_D20120621)/mean(ww_mod1_D20120621);
SI_mod2_D20120621=geomean(ww_mod2_D20120621)/mean(ww_mod2_D20120621);
SI_mod3_D20120621=geomean(ww_mod3_D20120621)/mean(ww_mod3_D20120621);
SI_mod4_D20120621=geomean(ww_mod4_D20120621)/mean(ww_mod4_D20120621);
%% smoothness index energy spectrum  D20120621
w_s_D20120621=table(w_spec_D20120621);
%%
ww_rat1_D20120621=abs(w_s_D20120621.w_spec_D20120621{1,1});
ww_rat2_D20120621=abs(w_s_D20120621.w_spec_D20120621{1,2});
ww_rat3_D20120621=abs(w_s_D20120621.w_spec_D20120621{1,3});
ww_rat4_D20120621=abs(w_s_D20120621.w_spec_D20120621{1,4});
%%
new1_D20120621=abs(ww1_D20120621.*ww_rat1_D20120621);
new2_D20120621=abs(ww2_D20120621.*ww_rat2_D20120621);
new3_D20120621=abs(ww3_D20120621.*ww_rat3_D20120621);
new4_D20120621=abs(ww4_D20120621.*ww_rat4_D20120621);
%%
SI_rat1_D20120621=geomean(new1_D20120621)/mean(new1_D20120621);
SI_rat2_D20120621=geomean(new2_D20120621)/mean(new2_D20120621);
SI_rat3_D20120621=geomean(new3_D20120621)/mean(new3_D20120621);
SI_rat4_D20120621=geomean(new4_D20120621)/mean(new4_D20120621);
%% Max  D20120621
max1_D20120621=max(ww1_D20120621);
max2_D20120621=max(ww2_D20120621);
max3_D20120621=max(ww3_D20120621);
max4_D20120621=max(ww4_D20120621);
 
max_mod1_D20120621=max(ww_mod1_D20120621);
max_mod2_D20120621=max(ww_mod2_D20120621);
max_mod3_D20120621=max(ww_mod3_D20120621);
max_mod4_D20120621=max(ww_mod4_D20120621);
%% RMS  D20120621
rms1_D20120621=rms(ww1_D20120621);
rms2_D20120621=rms(ww2_D20120621);
rms3_D20120621=rms(ww3_D20120621);
rms4_D20120621=rms(ww4_D20120621);
 
rms_mod1_D20120621=rms(ww_mod1_D20120621);
rms_mod2_D20120621=rms(ww_mod2_D20120621);
rms_mod3_D20120621=rms(ww_mod3_D20120621);
rms_mod4_D20120621=rms(ww_mod4_D20120621);
%% Crest Factor  D20120621
CF1_D20120621=max1_D20120621/rms1_D20120621;
CF2_D20120621=max2_D20120621/rms2_D20120621;
CF3_D20120621=max3_D20120621/rms3_D20120621;
CF4_D20120621=max4_D20120621/rms4_D20120621;
CF_ort_D20120621=(CF1_D20120621+CF2_D20120621+CF3_D20120621+CF4_D20120621)/4;
 
CF_mod1_D20120621=max_mod1_D20120621/rms_mod1_D20120621;
CF_mod2_D20120621=max_mod2_D20120621/rms_mod2_D20120621;
CF_mod3_D20120621=max_mod3_D20120621/rms_mod3_D20120621;
CF_mod4_D20120621=max_mod4_D20120621/rms_mod4_D20120621;
CF_modort_D20120621=(CF_mod1_D20120621+CF_mod2_D20120621+CF_mod3_D20120621+CF_mod4_D20120621)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120731
w_s_D20120731=table(w_sm_D20120731);
%% 
ww1_D20120731=(w_s_D20120731.w_sm_D20120731{1,1});
ww2_D20120731=(w_s_D20120731.w_sm_D20120731{1,2});
ww3_D20120731=(w_s_D20120731.w_sm_D20120731{1,3});
ww4_D20120731=(w_s_D20120731.w_sm_D20120731{1,4});
%%
SI1_D20120731=geomean(ww1_D20120731)/mean(ww1_D20120731);
SI2_D20120731=geomean(ww2_D20120731)/mean(ww2_D20120731);
SI3_D20120731=geomean(ww3_D20120731)/mean(ww3_D20120731);
SI4_D20120731=geomean(ww4_D20120731)/mean(ww4_D20120731);
%% smoothness index squared modulus  D20120731
w_modu_D20120731=table(w_mod_D20120731);
%%
ww_mod1_D20120731=(w_modu_D20120731.w_mod_D20120731{1,1});
ww_mod2_D20120731=(w_modu_D20120731.w_mod_D20120731{1,2});
ww_mod3_D20120731=(w_modu_D20120731.w_mod_D20120731{1,3});
ww_mod4_D20120731=(w_modu_D20120731.w_mod_D20120731{1,4});
%%
SI_mod1_D20120731=geomean(ww_mod1_D20120731)/mean(ww_mod1_D20120731);
SI_mod2_D20120731=geomean(ww_mod2_D20120731)/mean(ww_mod2_D20120731);
SI_mod3_D20120731=geomean(ww_mod3_D20120731)/mean(ww_mod3_D20120731);
SI_mod4_D20120731=geomean(ww_mod4_D20120731)/mean(ww_mod4_D20120731);
%% smoothness index energy spectrum  D20120731
w_s_D20120731=table(w_spec_D20120731);
%%
ww_rat1_D20120731=abs(w_s_D20120731.w_spec_D20120731{1,1});
ww_rat2_D20120731=abs(w_s_D20120731.w_spec_D20120731{1,2});
ww_rat3_D20120731=abs(w_s_D20120731.w_spec_D20120731{1,3});
ww_rat4_D20120731=abs(w_s_D20120731.w_spec_D20120731{1,4});
%%
new1_D20120731=abs(ww1_D20120731.*ww_rat1_D20120731);
new2_D20120731=abs(ww2_D20120731.*ww_rat2_D20120731);
new3_D20120731=abs(ww3_D20120731.*ww_rat3_D20120731);
new4_D20120731=abs(ww4_D20120731.*ww_rat4_D20120731);
%%
SI_rat1_D20120731=geomean(new1_D20120731)/mean(new1_D20120731);
SI_rat2_D20120731=geomean(new2_D20120731)/mean(new2_D20120731);
SI_rat3_D20120731=geomean(new3_D20120731)/mean(new3_D20120731);
SI_rat4_D20120731=geomean(new4_D20120731)/mean(new4_D20120731);
%% Max  D20120731
max1_D20120731=max(ww1_D20120731);
max2_D20120731=max(ww2_D20120731);
max3_D20120731=max(ww3_D20120731);
max4_D20120731=max(ww4_D20120731);
 
max_mod1_D20120731=max(ww_mod1_D20120731);
max_mod2_D20120731=max(ww_mod2_D20120731);
max_mod3_D20120731=max(ww_mod3_D20120731);
max_mod4_D20120731=max(ww_mod4_D20120731);
%% RMS  D20120731
rms1_D20120731=rms(ww1_D20120731);
rms2_D20120731=rms(ww2_D20120731);
rms3_D20120731=rms(ww3_D20120731);
rms4_D20120731=rms(ww4_D20120731);
 
rms_mod1_D20120731=rms(ww_mod1_D20120731);
rms_mod2_D20120731=rms(ww_mod2_D20120731);
rms_mod3_D20120731=rms(ww_mod3_D20120731);
rms_mod4_D20120731=rms(ww_mod4_D20120731);
%% Crest Factor  D20120731
CF1_D20120731=max1_D20120731/rms1_D20120731;
CF2_D20120731=max2_D20120731/rms2_D20120731;
CF3_D20120731=max3_D20120731/rms3_D20120731;
CF4_D20120731=max4_D20120731/rms4_D20120731;
CF_ort_D20120731=(CF1_D20120731+CF2_D20120731+CF3_D20120731+CF4_D20120731)/4;
 
CF_mod1_D20120731=max_mod1_D20120731/rms_mod1_D20120731;
CF_mod2_D20120731=max_mod2_D20120731/rms_mod2_D20120731;
CF_mod3_D20120731=max_mod3_D20120731/rms_mod3_D20120731;
CF_mod4_D20120731=max_mod4_D20120731/rms_mod4_D20120731;
CF_modort_D20120731=(CF_mod1_D20120731+CF_mod2_D20120731+CF_mod3_D20120731+CF_mod4_D20120731)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120924
w_s_D20120924=table(w_sm_D20120924);
%% 
ww1_D20120924=(w_s_D20120924.w_sm_D20120924{1,1});
ww2_D20120924=(w_s_D20120924.w_sm_D20120924{1,2});
ww3_D20120924=(w_s_D20120924.w_sm_D20120924{1,3});
ww4_D20120924=(w_s_D20120924.w_sm_D20120924{1,4});
%%
SI1_D20120924=geomean(ww1_D20120924)/mean(ww1_D20120924);
SI2_D20120924=geomean(ww2_D20120924)/mean(ww2_D20120924);
SI3_D20120924=geomean(ww3_D20120924)/mean(ww3_D20120924);
SI4_D20120924=geomean(ww4_D20120924)/mean(ww4_D20120924);
%% smoothness index squared modulus  D20120924
w_modu_D20120924=table(w_mod_D20120924);
%%
ww_mod1_D20120924=(w_modu_D20120924.w_mod_D20120924{1,1});
ww_mod2_D20120924=(w_modu_D20120924.w_mod_D20120924{1,2});
ww_mod3_D20120924=(w_modu_D20120924.w_mod_D20120924{1,3});
ww_mod4_D20120924=(w_modu_D20120924.w_mod_D20120924{1,4});
%%
SI_mod1_D20120924=geomean(ww_mod1_D20120924)/mean(ww_mod1_D20120924);
SI_mod2_D20120924=geomean(ww_mod2_D20120924)/mean(ww_mod2_D20120924);
SI_mod3_D20120924=geomean(ww_mod3_D20120924)/mean(ww_mod3_D20120924);
SI_mod4_D20120924=geomean(ww_mod4_D20120924)/mean(ww_mod4_D20120924);
%% smoothness index energy spectrum  D20120924
w_s_D20120924=table(w_spec_D20120924);
%%
ww_rat1_D20120924=abs(w_s_D20120924.w_spec_D20120924{1,1});
ww_rat2_D20120924=abs(w_s_D20120924.w_spec_D20120924{1,2});
ww_rat3_D20120924=abs(w_s_D20120924.w_spec_D20120924{1,3});
ww_rat4_D20120924=abs(w_s_D20120924.w_spec_D20120924{1,4});
%%
new1_D20120924=abs(ww1_D20120924.*ww_rat1_D20120924);
new2_D20120924=abs(ww2_D20120924.*ww_rat2_D20120924);
new3_D20120924=abs(ww3_D20120924.*ww_rat3_D20120924);
new4_D20120924=abs(ww4_D20120924.*ww_rat4_D20120924);
%%
SI_rat1_D20120924=geomean(new1_D20120924)/mean(new1_D20120924);
SI_rat2_D20120924=geomean(new2_D20120924)/mean(new2_D20120924);
SI_rat3_D20120924=geomean(new3_D20120924)/mean(new3_D20120924);
SI_rat4_D20120924=geomean(new4_D20120924)/mean(new4_D20120924);
%% Max  D20120924
max1_D20120924=max(ww1_D20120924);
max2_D20120924=max(ww2_D20120924);
max3_D20120924=max(ww3_D20120924);
max4_D20120924=max(ww4_D20120924);
 
max_mod1_D20120924=max(ww_mod1_D20120924);
max_mod2_D20120924=max(ww_mod2_D20120924);
max_mod3_D20120924=max(ww_mod3_D20120924);
max_mod4_D20120924=max(ww_mod4_D20120924);
%% RMS  D20120924
rms1_D20120924=rms(ww1_D20120924);
rms2_D20120924=rms(ww2_D20120924);
rms3_D20120924=rms(ww3_D20120924);
rms4_D20120924=rms(ww4_D20120924);
 
rms_mod1_D20120924=rms(ww_mod1_D20120924);
rms_mod2_D20120924=rms(ww_mod2_D20120924);
rms_mod3_D20120924=rms(ww_mod3_D20120924);
rms_mod4_D20120924=rms(ww_mod4_D20120924);
%% Crest Factor  D20120924
CF1_D20120924=max1_D20120924/rms1_D20120924;
CF2_D20120924=max2_D20120924/rms2_D20120924;
CF3_D20120924=max3_D20120924/rms3_D20120924;
CF4_D20120924=max4_D20120924/rms4_D20120924;
CF_ort_D20120924=(CF1_D20120924+CF2_D20120924+CF3_D20120924+CF4_D20120924)/4;
 
CF_mod1_D20120924=max_mod1_D20120924/rms_mod1_D20120924;
CF_mod2_D20120924=max_mod2_D20120924/rms_mod2_D20120924;
CF_mod3_D20120924=max_mod3_D20120924/rms_mod3_D20120924;
CF_mod4_D20120924=max_mod4_D20120924/rms_mod4_D20120924;
CF_modort_D20120924=(CF_mod1_D20120924+CF_mod2_D20120924+CF_mod3_D20120924+CF_mod4_D20120924)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20120926
w_s_D20120926=table(w_sm_D20120926);
%% 
ww1_D20120926=(w_s_D20120926.w_sm_D20120926{1,1});
ww2_D20120926=(w_s_D20120926.w_sm_D20120926{1,2});
ww3_D20120926=(w_s_D20120926.w_sm_D20120926{1,3});
ww4_D20120926=(w_s_D20120926.w_sm_D20120926{1,4});
%%
SI1_D20120926=geomean(ww1_D20120926)/mean(ww1_D20120926);
SI2_D20120926=geomean(ww2_D20120926)/mean(ww2_D20120926);
SI3_D20120926=geomean(ww3_D20120926)/mean(ww3_D20120926);
SI4_D20120926=geomean(ww4_D20120926)/mean(ww4_D20120926);
%% smoothness index squared modulus  D20120926
w_modu_D20120926=table(w_mod_D20120926);
%%
ww_mod1_D20120926=(w_modu_D20120926.w_mod_D20120926{1,1});
ww_mod2_D20120926=(w_modu_D20120926.w_mod_D20120926{1,2});
ww_mod3_D20120926=(w_modu_D20120926.w_mod_D20120926{1,3});
ww_mod4_D20120926=(w_modu_D20120926.w_mod_D20120926{1,4});
%%
SI_mod1_D20120926=geomean(ww_mod1_D20120926)/mean(ww_mod1_D20120926);
SI_mod2_D20120926=geomean(ww_mod2_D20120926)/mean(ww_mod2_D20120926);
SI_mod3_D20120926=geomean(ww_mod3_D20120926)/mean(ww_mod3_D20120926);
SI_mod4_D20120926=geomean(ww_mod4_D20120926)/mean(ww_mod4_D20120926);
%% smoothness index energy spectrum  D20120926
w_s_D20120926=table(w_spec_D20120926);
%%
ww_rat1_D20120926=abs(w_s_D20120926.w_spec_D20120926{1,1});
ww_rat2_D20120926=abs(w_s_D20120926.w_spec_D20120926{1,2});
ww_rat3_D20120926=abs(w_s_D20120926.w_spec_D20120926{1,3});
ww_rat4_D20120926=abs(w_s_D20120926.w_spec_D20120926{1,4});
%%
new1_D20120926=abs(ww1_D20120926.*ww_rat1_D20120926);
new2_D20120926=abs(ww2_D20120926.*ww_rat2_D20120926);
new3_D20120926=abs(ww3_D20120926.*ww_rat3_D20120926);
new4_D20120926=abs(ww4_D20120926.*ww_rat4_D20120926);
%%
SI_rat1_D20120926=geomean(new1_D20120926)/mean(new1_D20120926);
SI_rat2_D20120926=geomean(new2_D20120926)/mean(new2_D20120926);
SI_rat3_D20120926=geomean(new3_D20120926)/mean(new3_D20120926);
SI_rat4_D20120926=geomean(new4_D20120926)/mean(new4_D20120926);
%% Max  D20120926
max1_D20120926=max(ww1_D20120926);
max2_D20120926=max(ww2_D20120926);
max3_D20120926=max(ww3_D20120926);
max4_D20120926=max(ww4_D20120926);
 
max_mod1_D20120926=max(ww_mod1_D20120926);
max_mod2_D20120926=max(ww_mod2_D20120926);
max_mod3_D20120926=max(ww_mod3_D20120926);
max_mod4_D20120926=max(ww_mod4_D20120926);
%% RMS  D20120926
rms1_D20120926=rms(ww1_D20120926);
rms2_D20120926=rms(ww2_D20120926);
rms3_D20120926=rms(ww3_D20120926);
rms4_D20120926=rms(ww4_D20120926);
 
rms_mod1_D20120926=rms(ww_mod1_D20120926);
rms_mod2_D20120926=rms(ww_mod2_D20120926);
rms_mod3_D20120926=rms(ww_mod3_D20120926);
rms_mod4_D20120926=rms(ww_mod4_D20120926);
%% Crest Factor  D20120926
CF1_D20120926=max1_D20120926/rms1_D20120926;
CF2_D20120926=max2_D20120926/rms2_D20120926;
CF3_D20120926=max3_D20120926/rms3_D20120926;
CF4_D20120926=max4_D20120926/rms4_D20120926;
CF_ort_D20120926=(CF1_D20120926+CF2_D20120926+CF3_D20120926+CF4_D20120926)/4;
 
CF_mod1_D20120926=max_mod1_D20120926/rms_mod1_D20120926;
CF_mod2_D20120926=max_mod2_D20120926/rms_mod2_D20120926;
CF_mod3_D20120926=max_mod3_D20120926/rms_mod3_D20120926;
CF_mod4_D20120926=max_mod4_D20120926/rms_mod4_D20120926;
CF_modort_D20120926=(CF_mod1_D20120926+CF_mod2_D20120926+CF_mod3_D20120926+CF_mod4_D20120926)/4;
 
%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20130118
w_s_D20130118=table(w_sm_D20130118);
%% 
ww1_D20130118=(w_s_D20130118.w_sm_D20130118{1,1});
ww2_D20130118=(w_s_D20130118.w_sm_D20130118{1,2});
ww3_D20130118=(w_s_D20130118.w_sm_D20130118{1,3});
ww4_D20130118=(w_s_D20130118.w_sm_D20130118{1,4});
%%
SI1_D20130118=geomean(ww1_D20130118)/mean(ww1_D20130118);
SI2_D20130118=geomean(ww2_D20130118)/mean(ww2_D20130118);
SI3_D20130118=geomean(ww3_D20130118)/mean(ww3_D20130118);
SI4_D20130118=geomean(ww4_D20130118)/mean(ww4_D20130118);
%% smoothness index squared modulus  D20130118
w_modu_D20130118=table(w_mod_D20130118);
%%
ww_mod1_D20130118=(w_modu_D20130118.w_mod_D20130118{1,1});
ww_mod2_D20130118=(w_modu_D20130118.w_mod_D20130118{1,2});
ww_mod3_D20130118=(w_modu_D20130118.w_mod_D20130118{1,3});
ww_mod4_D20130118=(w_modu_D20130118.w_mod_D20130118{1,4});
%%
SI_mod1_D20130118=geomean(ww_mod1_D20130118)/mean(ww_mod1_D20130118);
SI_mod2_D20130118=geomean(ww_mod2_D20130118)/mean(ww_mod2_D20130118);
SI_mod3_D20130118=geomean(ww_mod3_D20130118)/mean(ww_mod3_D20130118);
SI_mod4_D20130118=geomean(ww_mod4_D20130118)/mean(ww_mod4_D20130118);
%% smoothness index energy spectrum  D20130118
w_s_D20130118=table(w_spec_D20130118);
%%
ww_rat1_D20130118=abs(w_s_D20130118.w_spec_D20130118{1,1});
ww_rat2_D20130118=abs(w_s_D20130118.w_spec_D20130118{1,2});
ww_rat3_D20130118=abs(w_s_D20130118.w_spec_D20130118{1,3});
ww_rat4_D20130118=abs(w_s_D20130118.w_spec_D20130118{1,4});
%%
new1_D20130118=abs(ww1_D20130118.*ww_rat1_D20130118);
new2_D20130118=abs(ww2_D20130118.*ww_rat2_D20130118);
new3_D20130118=abs(ww3_D20130118.*ww_rat3_D20130118);
new4_D20130118=abs(ww4_D20130118.*ww_rat4_D20130118);
%%
SI_rat1_D20130118=geomean(new1_D20130118)/mean(new1_D20130118);
SI_rat2_D20130118=geomean(new2_D20130118)/mean(new2_D20130118);
SI_rat3_D20130118=geomean(new3_D20130118)/mean(new3_D20130118);
SI_rat4_D20130118=geomean(new4_D20130118)/mean(new4_D20130118);
%% Max  D20130118
max1_D20130118=max(ww1_D20130118);
max2_D20130118=max(ww2_D20130118);
max3_D20130118=max(ww3_D20130118);
max4_D20130118=max(ww4_D20130118);
 
max_mod1_D20130118=max(ww_mod1_D20130118);
max_mod2_D20130118=max(ww_mod2_D20130118);
max_mod3_D20130118=max(ww_mod3_D20130118);
max_mod4_D20130118=max(ww_mod4_D20130118);
%% RMS  D20130118
rms1_D20130118=rms(ww1_D20130118);
rms2_D20130118=rms(ww2_D20130118);
rms3_D20130118=rms(ww3_D20130118);
rms4_D20130118=rms(ww4_D20130118);
 
rms_mod1_D20130118=rms(ww_mod1_D20130118);
rms_mod2_D20130118=rms(ww_mod2_D20130118);
rms_mod3_D20130118=rms(ww_mod3_D20130118);
rms_mod4_D20130118=rms(ww_mod4_D20130118);
%% Crest Factor  D20130118
CF1_D20130118=max1_D20130118/rms1_D20130118;
CF2_D20130118=max2_D20130118/rms2_D20130118;
CF3_D20130118=max3_D20130118/rms3_D20130118;
CF4_D20130118=max4_D20130118/rms4_D20130118;
CF_ort_D20130118=(CF1_D20130118+CF2_D20130118+CF3_D20130118+CF4_D20130118)/4;
 
CF_mod1_D20130118=max_mod1_D20130118/rms_mod1_D20130118;
CF_mod2_D20130118=max_mod2_D20130118/rms_mod2_D20130118;
CF_mod3_D20130118=max_mod3_D20130118/rms_mod3_D20130118;
CF_mod4_D20130118=max_mod4_D20130118/rms_mod4_D20130118;
CF_modort_D20130118=(CF_mod1_D20130118+CF_mod2_D20130118+CF_mod3_D20130118+CF_mod4_D20130118)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20130311
w_s_D20130311=table(w_sm_D20130311);
%% 
ww1_D20130311=(w_s_D20130311.w_sm_D20130311{1,1});
ww2_D20130311=(w_s_D20130311.w_sm_D20130311{1,2});
ww3_D20130311=(w_s_D20130311.w_sm_D20130311{1,3});
ww4_D20130311=(w_s_D20130311.w_sm_D20130311{1,4});
%%
SI1_D20130311=geomean(ww1_D20130311)/mean(ww1_D20130311);
SI2_D20130311=geomean(ww2_D20130311)/mean(ww2_D20130311);
SI3_D20130311=geomean(ww3_D20130311)/mean(ww3_D20130311);
SI4_D20130311=geomean(ww4_D20130311)/mean(ww4_D20130311);
%% smoothness index squared modulus  D20130311
w_modu_D20130311=table(w_mod_D20130311);
%%
ww_mod1_D20130311=(w_modu_D20130311.w_mod_D20130311{1,1});
ww_mod2_D20130311=(w_modu_D20130311.w_mod_D20130311{1,2});
ww_mod3_D20130311=(w_modu_D20130311.w_mod_D20130311{1,3});
ww_mod4_D20130311=(w_modu_D20130311.w_mod_D20130311{1,4});
%%
SI_mod1_D20130311=geomean(ww_mod1_D20130311)/mean(ww_mod1_D20130311);
SI_mod2_D20130311=geomean(ww_mod2_D20130311)/mean(ww_mod2_D20130311);
SI_mod3_D20130311=geomean(ww_mod3_D20130311)/mean(ww_mod3_D20130311);
SI_mod4_D20130311=geomean(ww_mod4_D20130311)/mean(ww_mod4_D20130311);
%% smoothness index energy spectrum  D20130311
w_s_D20130311=table(w_spec_D20130311);
%%
ww_rat1_D20130311=abs(w_s_D20130311.w_spec_D20130311{1,1});
ww_rat2_D20130311=abs(w_s_D20130311.w_spec_D20130311{1,2});
ww_rat3_D20130311=abs(w_s_D20130311.w_spec_D20130311{1,3});
ww_rat4_D20130311=abs(w_s_D20130311.w_spec_D20130311{1,4});
%%
new1_D20130311=abs(ww1_D20130311.*ww_rat1_D20130311);
new2_D20130311=abs(ww2_D20130311.*ww_rat2_D20130311);
new3_D20130311=abs(ww3_D20130311.*ww_rat3_D20130311);
new4_D20130311=abs(ww4_D20130311.*ww_rat4_D20130311);
%%
SI_rat1_D20130311=geomean(new1_D20130311)/mean(new1_D20130311);
SI_rat2_D20130311=geomean(new2_D20130311)/mean(new2_D20130311);
SI_rat3_D20130311=geomean(new3_D20130311)/mean(new3_D20130311);
SI_rat4_D20130311=geomean(new4_D20130311)/mean(new4_D20130311);
%% Max  D20130311
max1_D20130311=max(ww1_D20130311);
max2_D20130311=max(ww2_D20130311);
max3_D20130311=max(ww3_D20130311);
max4_D20130311=max(ww4_D20130311);
 
max_mod1_D20130311=max(ww_mod1_D20130311);
max_mod2_D20130311=max(ww_mod2_D20130311);
max_mod3_D20130311=max(ww_mod3_D20130311);
max_mod4_D20130311=max(ww_mod4_D20130311);
%% RMS  D20130311
rms1_D20130311=rms(ww1_D20130311);
rms2_D20130311=rms(ww2_D20130311);
rms3_D20130311=rms(ww3_D20130311);
rms4_D20130311=rms(ww4_D20130311);
 
rms_mod1_D20130311=rms(ww_mod1_D20130311);
rms_mod2_D20130311=rms(ww_mod2_D20130311);
rms_mod3_D20130311=rms(ww_mod3_D20130311);
rms_mod4_D20130311=rms(ww_mod4_D20130311);
%% Crest Factor  D20130311
CF1_D20130311=max1_D20130311/rms1_D20130311;
CF2_D20130311=max2_D20130311/rms2_D20130311;
CF3_D20130311=max3_D20130311/rms3_D20130311;
CF4_D20130311=max4_D20130311/rms4_D20130311;
CF_ort_D20130311=(CF1_D20130311+CF2_D20130311+CF3_D20130311+CF4_D20130311)/4;
 
CF_mod1_D20130311=max_mod1_D20130311/rms_mod1_D20130311;
CF_mod2_D20130311=max_mod2_D20130311/rms_mod2_D20130311;
CF_mod3_D20130311=max_mod3_D20130311/rms_mod3_D20130311;
CF_mod4_D20130311=max_mod4_D20130311/rms_mod4_D20130311;
CF_modort_D20130311=(CF_mod1_D20130311+CF_mod2_D20130311+CF_mod3_D20130311+CF_mod4_D20130311)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  D20130612
w_s_D20130612=table(w_sm_D20130612);
%% 
ww1_D20130612=(w_s_D20130612.w_sm_D20130612{1,1});
ww2_D20130612=(w_s_D20130612.w_sm_D20130612{1,2});
ww3_D20130612=(w_s_D20130612.w_sm_D20130612{1,3});
ww4_D20130612=(w_s_D20130612.w_sm_D20130612{1,4});
%%
SI1_D20130612=geomean(ww1_D20130612)/mean(ww1_D20130612);
SI2_D20130612=geomean(ww2_D20130612)/mean(ww2_D20130612);
SI3_D20130612=geomean(ww3_D20130612)/mean(ww3_D20130612);
SI4_D20130612=geomean(ww4_D20130612)/mean(ww4_D20130612);
%% smoothness index squared modulus  D20130612
w_modu_D20130612=table(w_mod_D20130612);
%%
ww_mod1_D20130612=(w_modu_D20130612.w_mod_D20130612{1,1});
ww_mod2_D20130612=(w_modu_D20130612.w_mod_D20130612{1,2});
ww_mod3_D20130612=(w_modu_D20130612.w_mod_D20130612{1,3});
ww_mod4_D20130612=(w_modu_D20130612.w_mod_D20130612{1,4});
%%
SI_mod1_D20130612=geomean(ww_mod1_D20130612)/mean(ww_mod1_D20130612);
SI_mod2_D20130612=geomean(ww_mod2_D20130612)/mean(ww_mod2_D20130612);
SI_mod3_D20130612=geomean(ww_mod3_D20130612)/mean(ww_mod3_D20130612);
SI_mod4_D20130612=geomean(ww_mod4_D20130612)/mean(ww_mod4_D20130612);
%% smoothness index energy spectrum  D20130612
w_s_D20130612=table(w_spec_D20130612);
%%
ww_rat1_D20130612=abs(w_s_D20130612.w_spec_D20130612{1,1});
ww_rat2_D20130612=abs(w_s_D20130612.w_spec_D20130612{1,2});
ww_rat3_D20130612=abs(w_s_D20130612.w_spec_D20130612{1,3});
ww_rat4_D20130612=abs(w_s_D20130612.w_spec_D20130612{1,4});
%%
new1_D20130612=abs(ww1_D20130612.*ww_rat1_D20130612);
new2_D20130612=abs(ww2_D20130612.*ww_rat2_D20130612);
new3_D20130612=abs(ww3_D20130612.*ww_rat3_D20130612);
new4_D20130612=abs(ww4_D20130612.*ww_rat4_D20130612);
%%
SI_rat1_D20130612=geomean(new1_D20130612)/mean(new1_D20130612);
SI_rat2_D20130612=geomean(new2_D20130612)/mean(new2_D20130612);
SI_rat3_D20130612=geomean(new3_D20130612)/mean(new3_D20130612);
SI_rat4_D20130612=geomean(new4_D20130612)/mean(new4_D20130612);
%% Max  D20130612
max1_D20130612=max(ww1_D20130612);
max2_D20130612=max(ww2_D20130612);
max3_D20130612=max(ww3_D20130612);
max4_D20130612=max(ww4_D20130612);
 
max_mod1_D20130612=max(ww_mod1_D20130612);
max_mod2_D20130612=max(ww_mod2_D20130612);
max_mod3_D20130612=max(ww_mod3_D20130612);
max_mod4_D20130612=max(ww_mod4_D20130612);
%% RMS  D20130612
rms1_D20130612=rms(ww1_D20130612);
rms2_D20130612=rms(ww2_D20130612);
rms3_D20130612=rms(ww3_D20130612);
rms4_D20130612=rms(ww4_D20130612);
 
rms_mod1_D20130612=rms(ww_mod1_D20130612);
rms_mod2_D20130612=rms(ww_mod2_D20130612);
rms_mod3_D20130612=rms(ww_mod3_D20130612);
rms_mod4_D20130612=rms(ww_mod4_D20130612);
%% Crest Factor  D20130612
CF1_D20130612=max1_D20130612/rms1_D20130612;
CF2_D20130612=max2_D20130612/rms2_D20130612;
CF3_D20130612=max3_D20130612/rms3_D20130612;
CF4_D20130612=max4_D20130612/rms4_D20130612;
CF_ort_D20130612=(CF1_D20130612+CF2_D20130612+CF3_D20130612+CF4_D20130612)/4;
 
CF_mod1_D20130612=max_mod1_D20130612/rms_mod1_D20130612;
CF_mod2_D20130612=max_mod2_D20130612/rms_mod2_D20130612;
CF_mod3_D20130612=max_mod3_D20130612/rms_mod3_D20130612;
CF_mod4_D20130612=max_mod4_D20130612/rms_mod4_D20130612;
CF_modort_D20130612=(CF_mod1_D20130612+CF_mod2_D20130612+CF_mod3_D20130612+CF_mod4_D20130612)/4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pulverizer F
f_read_F20110614 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110614_B.txt');
f_read_F20110914 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110914_B.txt');
f_read_F20111213 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111213_B.txt');
f_read_F20111228 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111228_B.txt');
f_read_F20120105 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120105_B.txt');
f_read_F20120118 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120118_B.txt');
f_read_F20120131 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120131_B.txt');
f_read_F20120306 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120306_B.txt');
f_read_F20120518 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120518_B.txt');
f_read_F20120621 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120621_B.txt');
f_read_F20120731 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120731_B.txt');
f_read_F20120924 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120924_B.txt');
f_read_F20120926 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120926_B.txt');
f_read_F20130118 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130118_B.txt');
f_read_F20130311 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130311_B.txt');
f_read_F20130612 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130612_B.txt');
 
f_F20110614=transpose(f_read_F20110614);
f_F20110914=transpose(f_read_F20110914);
f_F20111213=transpose(f_read_F20111213);
f_F20111228=transpose(f_read_F20111228);
f_F20120105=transpose(f_read_F20120105);
f_F20120118=transpose(f_read_F20120118);
f_F20120131=transpose(f_read_F20120131);
f_F20120306=transpose(f_read_F20120306);
f_F20120518=transpose(f_read_F20120518);
f_F20120621=transpose(f_read_F20120621);
f_F20120731=transpose(f_read_F20120731);
f_F20120924=transpose(f_read_F20120924);
f_F20120926=transpose(f_read_F20120926);
f_F20130118=transpose(f_read_F20130118);
f_F20130311=transpose(f_read_F20130311);
f_F20130612=transpose(f_read_F20130612);
 
%% analysis failure 1
[w_F20110614,w_mod_F20110614,w_sm_F20110614,w_spec_F20110614] = analysisforind(f_F20110614, J, alpha, tau);
[w_F20110914,w_mod_F20110914,w_sm_F20110914,w_spec_F20110914] = analysisforind(f_F20110914, J, alpha, tau);
[w_F20111213,w_mod_F20111213,w_sm_F20111213,w_spec_F20111213] = analysisforind(f_F20111213, J, alpha, tau);
[w_F20111228,w_mod_F20111228,w_sm_F20111228,w_spec_F20111228] = analysisforind(f_F20111228, J, alpha, tau);
[w_F20120105,w_mod_F20120105,w_sm_F20120105,w_spec_F20120105] = analysisforind(f_F20120105, J, alpha, tau);
[w_F20120118,w_mod_F20120118,w_sm_F20120118,w_spec_F20120118] = analysisforind(f_F20120118, J, alpha, tau);
[w_F20120131,w_mod_F20120131,w_sm_F20120131,w_spec_F20120131] = analysisforind(f_F20120131, J, alpha, tau);
[w_F20120306,w_mod_F20120306,w_sm_F20120306,w_spec_F20120306] = analysisforind(f_F20120306, J, alpha, tau);
[w_F20120518,w_mod_F20120518,w_sm_F20120518,w_spec_F20120518] = analysisforind(f_F20120518, J, alpha, tau);
[w_F20120621,w_mod_F20120621,w_sm_F20120621,w_spec_F20120621] = analysisforind(f_F20120621, J, alpha, tau);
[w_F20120731,w_mod_F20120731,w_sm_F20120731,w_spec_F20120731] = analysisforind(f_F20120731, J, alpha, tau);
[w_F20120924,w_mod_F20120924,w_sm_F20120924,w_spec_F20120924] = analysisforind(f_F20120924, J, alpha, tau);
[w_F20120926,w_mod_F20120926,w_sm_F20120926,w_spec_F20120926] = analysisforind(f_F20120926, J, alpha, tau);
[w_F20130118,w_mod_F20130118,w_sm_F20130118,w_spec_F20130118] = analysisforind(f_F20130118, J, alpha, tau);
[w_F20130311,w_mod_F20130311,w_sm_F20130311,w_spec_F20130311] = analysisforind(f_F20130311, J, alpha, tau);
[w_F20130612,w_mod_F20130612,w_sm_F20130612,w_spec_F20130612] = analysisforind(f_F20130612, J, alpha, tau);
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20110614
w_s_F20110614=table(w_sm_F20110614);
%% 
ww1_F20110614=(w_s_F20110614.w_sm_F20110614{1,1});
ww2_F20110614=(w_s_F20110614.w_sm_F20110614{1,2});
ww3_F20110614=(w_s_F20110614.w_sm_F20110614{1,3});
ww4_F20110614=(w_s_F20110614.w_sm_F20110614{1,4});
%%
SI1_F20110614=geomean(ww1_F20110614)/mean(ww1_F20110614);
SI2_F20110614=geomean(ww2_F20110614)/mean(ww2_F20110614);
SI3_F20110614=geomean(ww3_F20110614)/mean(ww3_F20110614);
SI4_F20110614=geomean(ww4_F20110614)/mean(ww4_F20110614);
%% smoothness index squared modulus  F20110614
w_modu_F20110614=table(w_mod_F20110614);
%%
ww_mod1_F20110614=(w_modu_F20110614.w_mod_F20110614{1,1});
ww_mod2_F20110614=(w_modu_F20110614.w_mod_F20110614{1,2});
ww_mod3_F20110614=(w_modu_F20110614.w_mod_F20110614{1,3});
ww_mod4_F20110614=(w_modu_F20110614.w_mod_F20110614{1,4});
%%
SI_mod1_F20110614=geomean(ww_mod1_F20110614)/mean(ww_mod1_F20110614);
SI_mod2_F20110614=geomean(ww_mod2_F20110614)/mean(ww_mod2_F20110614);
SI_mod3_F20110614=geomean(ww_mod3_F20110614)/mean(ww_mod3_F20110614);
SI_mod4_F20110614=geomean(ww_mod4_F20110614)/mean(ww_mod4_F20110614);
%% smoothness index energy spectrum  F20110614
w_s_F20110614=table(w_spec_F20110614);
%%
ww_rat1_F20110614=abs(w_s_F20110614.w_spec_F20110614{1,1});
ww_rat2_F20110614=abs(w_s_F20110614.w_spec_F20110614{1,2});
ww_rat3_F20110614=abs(w_s_F20110614.w_spec_F20110614{1,3});
ww_rat4_F20110614=abs(w_s_F20110614.w_spec_F20110614{1,4});
%%
new1_F20110614=abs(ww1_F20110614.*ww_rat1_F20110614);
new2_F20110614=abs(ww2_F20110614.*ww_rat2_F20110614);
new3_F20110614=abs(ww3_F20110614.*ww_rat3_F20110614);
new4_F20110614=abs(ww4_F20110614.*ww_rat4_F20110614);
%%
SI_rat1_F20110614=geomean(new1_F20110614)/mean(new1_F20110614);
SI_rat2_F20110614=geomean(new2_F20110614)/mean(new2_F20110614);
SI_rat3_F20110614=geomean(new3_F20110614)/mean(new3_F20110614);
SI_rat4_F20110614=geomean(new4_F20110614)/mean(new4_F20110614);
%% Max  F20110614
max1_F20110614=max(ww1_F20110614);
max2_F20110614=max(ww2_F20110614);
max3_F20110614=max(ww3_F20110614);
max4_F20110614=max(ww4_F20110614);
 
max_mod1_F20110614=max(ww_mod1_F20110614);
max_mod2_F20110614=max(ww_mod2_F20110614);
max_mod3_F20110614=max(ww_mod3_F20110614);
max_mod4_F20110614=max(ww_mod4_F20110614);
%% RMS  F20110614
rms1_F20110614=rms(ww1_F20110614);
rms2_F20110614=rms(ww2_F20110614);
rms3_F20110614=rms(ww3_F20110614);
rms4_F20110614=rms(ww4_F20110614);
 
rms_mod1_F20110614=rms(ww_mod1_F20110614);
rms_mod2_F20110614=rms(ww_mod2_F20110614);
rms_mod3_F20110614=rms(ww_mod3_F20110614);
rms_mod4_F20110614=rms(ww_mod4_F20110614);
%% Crest Factor  F20110614
CF1_F20110614=max1_F20110614/rms1_F20110614;
CF2_F20110614=max2_F20110614/rms2_F20110614;
CF3_F20110614=max3_F20110614/rms3_F20110614;
CF4_F20110614=max4_F20110614/rms4_F20110614;
CF_ort_F20110614=(CF1_F20110614+CF2_F20110614+CF3_F20110614+CF4_F20110614)/4;
 
CF_mod1_F20110614=max_mod1_F20110614/rms_mod1_F20110614;
CF_mod2_F20110614=max_mod2_F20110614/rms_mod2_F20110614;
CF_mod3_F20110614=max_mod3_F20110614/rms_mod3_F20110614;
CF_mod4_F20110614=max_mod4_F20110614/rms_mod4_F20110614;
CF_modort_F20110614=(CF_mod1_F20110614+CF_mod2_F20110614+CF_mod3_F20110614+CF_mod4_F20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20110914
w_s_F20110914=table(w_sm_F20110914);
%% 
ww1_F20110914=(w_s_F20110914.w_sm_F20110914{1,1});
ww2_F20110914=(w_s_F20110914.w_sm_F20110914{1,2});
ww3_F20110914=(w_s_F20110914.w_sm_F20110914{1,3});
ww4_F20110914=(w_s_F20110914.w_sm_F20110914{1,4});
%%
SI1_F20110914=geomean(ww1_F20110914)/mean(ww1_F20110914);
SI2_F20110914=geomean(ww2_F20110914)/mean(ww2_F20110914);
SI3_F20110914=geomean(ww3_F20110914)/mean(ww3_F20110914);
SI4_F20110914=geomean(ww4_F20110914)/mean(ww4_F20110914);
%% smoothness index squared modulus  F20110914
w_modu_F20110914=table(w_mod_F20110914);
%%
ww_mod1_F20110914=(w_modu_F20110914.w_mod_F20110914{1,1});
ww_mod2_F20110914=(w_modu_F20110914.w_mod_F20110914{1,2});
ww_mod3_F20110914=(w_modu_F20110914.w_mod_F20110914{1,3});
ww_mod4_F20110914=(w_modu_F20110914.w_mod_F20110914{1,4});
%%
SI_mod1_F20110914=geomean(ww_mod1_F20110914)/mean(ww_mod1_F20110914);
SI_mod2_F20110914=geomean(ww_mod2_F20110914)/mean(ww_mod2_F20110914);
SI_mod3_F20110914=geomean(ww_mod3_F20110914)/mean(ww_mod3_F20110914);
SI_mod4_F20110914=geomean(ww_mod4_F20110914)/mean(ww_mod4_F20110914);
%% smoothness index energy spectrum  F20110914
w_s_F20110914=table(w_spec_F20110914);
%%
ww_rat1_F20110914=abs(w_s_F20110914.w_spec_F20110914{1,1});
ww_rat2_F20110914=abs(w_s_F20110914.w_spec_F20110914{1,2});
ww_rat3_F20110914=abs(w_s_F20110914.w_spec_F20110914{1,3});
ww_rat4_F20110914=abs(w_s_F20110914.w_spec_F20110914{1,4});
%%
new1_F20110914=abs(ww1_F20110914.*ww_rat1_F20110914);
new2_F20110914=abs(ww2_F20110914.*ww_rat2_F20110914);
new3_F20110914=abs(ww3_F20110914.*ww_rat3_F20110914);
new4_F20110914=abs(ww4_F20110914.*ww_rat4_F20110914);
%%
SI_rat1_F20110914=geomean(new1_F20110914)/mean(new1_F20110914);
SI_rat2_F20110914=geomean(new2_F20110914)/mean(new2_F20110914);
SI_rat3_F20110914=geomean(new3_F20110914)/mean(new3_F20110914);
SI_rat4_F20110914=geomean(new4_F20110914)/mean(new4_F20110914);
%% Max  F20110914
max1_F20110914=max(ww1_F20110914);
max2_F20110914=max(ww2_F20110914);
max3_F20110914=max(ww3_F20110914);
max4_F20110914=max(ww4_F20110914);
 
max_mod1_F20110914=max(ww_mod1_F20110914);
max_mod2_F20110914=max(ww_mod2_F20110914);
max_mod3_F20110914=max(ww_mod3_F20110914);
max_mod4_F20110914=max(ww_mod4_F20110914);
%% RMS  F20110914
rms1_F20110914=rms(ww1_F20110914);
rms2_F20110914=rms(ww2_F20110914);
rms3_F20110914=rms(ww3_F20110914);
rms4_F20110914=rms(ww4_F20110914);
 
rms_mod1_F20110914=rms(ww_mod1_F20110914);
rms_mod2_F20110914=rms(ww_mod2_F20110914);
rms_mod3_F20110914=rms(ww_mod3_F20110914);
rms_mod4_F20110914=rms(ww_mod4_F20110914);
%% Crest Factor  F20110914
CF1_F20110914=max1_F20110914/rms1_F20110914;
CF2_F20110914=max2_F20110914/rms2_F20110914;
CF3_F20110914=max3_F20110914/rms3_F20110914;
CF4_F20110914=max4_F20110914/rms4_F20110914;
CF_ort_F20110914=(CF1_F20110914+CF2_F20110914+CF3_F20110914+CF4_F20110914)/4;
 
CF_mod1_F20110914=max_mod1_F20110914/rms_mod1_F20110914;
CF_mod2_F20110914=max_mod2_F20110914/rms_mod2_F20110914;
CF_mod3_F20110914=max_mod3_F20110914/rms_mod3_F20110914;
CF_mod4_F20110914=max_mod4_F20110914/rms_mod4_F20110914;
CF_modort_F20110914=(CF_mod1_F20110914+CF_mod2_F20110914+CF_mod3_F20110914+CF_mod4_F20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20111213
w_s_F20111213=table(w_sm_F20111213);
%% 
ww1_F20111213=(w_s_F20111213.w_sm_F20111213{1,1});
ww2_F20111213=(w_s_F20111213.w_sm_F20111213{1,2});
ww3_F20111213=(w_s_F20111213.w_sm_F20111213{1,3});
ww4_F20111213=(w_s_F20111213.w_sm_F20111213{1,4});
%%
SI1_F20111213=geomean(ww1_F20111213)/mean(ww1_F20111213);
SI2_F20111213=geomean(ww2_F20111213)/mean(ww2_F20111213);
SI3_F20111213=geomean(ww3_F20111213)/mean(ww3_F20111213);
SI4_F20111213=geomean(ww4_F20111213)/mean(ww4_F20111213);
%% smoothness index squared modulus  F20111213
w_modu_F20111213=table(w_mod_F20111213);
%%
ww_mod1_F20111213=(w_modu_F20111213.w_mod_F20111213{1,1});
ww_mod2_F20111213=(w_modu_F20111213.w_mod_F20111213{1,2});
ww_mod3_F20111213=(w_modu_F20111213.w_mod_F20111213{1,3});
ww_mod4_F20111213=(w_modu_F20111213.w_mod_F20111213{1,4});
%%
SI_mod1_F20111213=geomean(ww_mod1_F20111213)/mean(ww_mod1_F20111213);
SI_mod2_F20111213=geomean(ww_mod2_F20111213)/mean(ww_mod2_F20111213);
SI_mod3_F20111213=geomean(ww_mod3_F20111213)/mean(ww_mod3_F20111213);
SI_mod4_F20111213=geomean(ww_mod4_F20111213)/mean(ww_mod4_F20111213);
%% smoothness index energy spectrum  F20111213
w_s_F20111213=table(w_spec_F20111213);
%%
ww_rat1_F20111213=abs(w_s_F20111213.w_spec_F20111213{1,1});
ww_rat2_F20111213=abs(w_s_F20111213.w_spec_F20111213{1,2});
ww_rat3_F20111213=abs(w_s_F20111213.w_spec_F20111213{1,3});
ww_rat4_F20111213=abs(w_s_F20111213.w_spec_F20111213{1,4});
%%
new1_F20111213=abs(ww1_F20111213.*ww_rat1_F20111213);
new2_F20111213=abs(ww2_F20111213.*ww_rat2_F20111213);
new3_F20111213=abs(ww3_F20111213.*ww_rat3_F20111213);
new4_F20111213=abs(ww4_F20111213.*ww_rat4_F20111213);
%%
SI_rat1_F20111213=geomean(new1_F20111213)/mean(new1_F20111213);
SI_rat2_F20111213=geomean(new2_F20111213)/mean(new2_F20111213);
SI_rat3_F20111213=geomean(new3_F20111213)/mean(new3_F20111213);
SI_rat4_F20111213=geomean(new4_F20111213)/mean(new4_F20111213);
%% Max  F20111213
max1_F20111213=max(ww1_F20111213);
max2_F20111213=max(ww2_F20111213);
max3_F20111213=max(ww3_F20111213);
max4_F20111213=max(ww4_F20111213);
 
max_mod1_F20111213=max(ww_mod1_F20111213);
max_mod2_F20111213=max(ww_mod2_F20111213);
max_mod3_F20111213=max(ww_mod3_F20111213);
max_mod4_F20111213=max(ww_mod4_F20111213);
%% RMS  F20111213
rms1_F20111213=rms(ww1_F20111213);
rms2_F20111213=rms(ww2_F20111213);
rms3_F20111213=rms(ww3_F20111213);
rms4_F20111213=rms(ww4_F20111213);
 
rms_mod1_F20111213=rms(ww_mod1_F20111213);
rms_mod2_F20111213=rms(ww_mod2_F20111213);
rms_mod3_F20111213=rms(ww_mod3_F20111213);
rms_mod4_F20111213=rms(ww_mod4_F20111213);
%% Crest Factor  F20111213
CF1_F20111213=max1_F20111213/rms1_F20111213;
CF2_F20111213=max2_F20111213/rms2_F20111213;
CF3_F20111213=max3_F20111213/rms3_F20111213;
CF4_F20111213=max4_F20111213/rms4_F20111213;
CF_ort_F20111213=(CF1_F20111213+CF2_F20111213+CF3_F20111213+CF4_F20111213)/4;
 
CF_mod1_F20111213=max_mod1_F20111213/rms_mod1_F20111213;
CF_mod2_F20111213=max_mod2_F20111213/rms_mod2_F20111213;
CF_mod3_F20111213=max_mod3_F20111213/rms_mod3_F20111213;
CF_mod4_F20111213=max_mod4_F20111213/rms_mod4_F20111213;
CF_modort_F20111213=(CF_mod1_F20111213+CF_mod2_F20111213+CF_mod3_F20111213+CF_mod4_F20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20111228
w_s_F20111228=table(w_sm_F20111228);
%% 
ww1_F20111228=(w_s_F20111228.w_sm_F20111228{1,1});
ww2_F20111228=(w_s_F20111228.w_sm_F20111228{1,2});
ww3_F20111228=(w_s_F20111228.w_sm_F20111228{1,3});
ww4_F20111228=(w_s_F20111228.w_sm_F20111228{1,4});
%%
SI1_F20111228=geomean(ww1_F20111228)/mean(ww1_F20111228);
SI2_F20111228=geomean(ww2_F20111228)/mean(ww2_F20111228);
SI3_F20111228=geomean(ww3_F20111228)/mean(ww3_F20111228);
SI4_F20111228=geomean(ww4_F20111228)/mean(ww4_F20111228);
%% smoothness index squared modulus  F20111228
w_modu_F20111228=table(w_mod_F20111228);
%%
ww_mod1_F20111228=(w_modu_F20111228.w_mod_F20111228{1,1});
ww_mod2_F20111228=(w_modu_F20111228.w_mod_F20111228{1,2});
ww_mod3_F20111228=(w_modu_F20111228.w_mod_F20111228{1,3});
ww_mod4_F20111228=(w_modu_F20111228.w_mod_F20111228{1,4});
%%
SI_mod1_F20111228=geomean(ww_mod1_F20111228)/mean(ww_mod1_F20111228);
SI_mod2_F20111228=geomean(ww_mod2_F20111228)/mean(ww_mod2_F20111228);
SI_mod3_F20111228=geomean(ww_mod3_F20111228)/mean(ww_mod3_F20111228);
SI_mod4_F20111228=geomean(ww_mod4_F20111228)/mean(ww_mod4_F20111228);
%% smoothness index energy spectrum  F20111228
w_s_F20111228=table(w_spec_F20111228);
%%
ww_rat1_F20111228=abs(w_s_F20111228.w_spec_F20111228{1,1});
ww_rat2_F20111228=abs(w_s_F20111228.w_spec_F20111228{1,2});
ww_rat3_F20111228=abs(w_s_F20111228.w_spec_F20111228{1,3});
ww_rat4_F20111228=abs(w_s_F20111228.w_spec_F20111228{1,4});
%%
new1_F20111228=abs(ww1_F20111228.*ww_rat1_F20111228);
new2_F20111228=abs(ww2_F20111228.*ww_rat2_F20111228);
new3_F20111228=abs(ww3_F20111228.*ww_rat3_F20111228);
new4_F20111228=abs(ww4_F20111228.*ww_rat4_F20111228);
%%
SI_rat1_F20111228=geomean(new1_F20111228)/mean(new1_F20111228);
SI_rat2_F20111228=geomean(new2_F20111228)/mean(new2_F20111228);
SI_rat3_F20111228=geomean(new3_F20111228)/mean(new3_F20111228);
SI_rat4_F20111228=geomean(new4_F20111228)/mean(new4_F20111228);
%% Max  F20111228
max1_F20111228=max(ww1_F20111228);
max2_F20111228=max(ww2_F20111228);
max3_F20111228=max(ww3_F20111228);
max4_F20111228=max(ww4_F20111228);
 
max_mod1_F20111228=max(ww_mod1_F20111228);
max_mod2_F20111228=max(ww_mod2_F20111228);
max_mod3_F20111228=max(ww_mod3_F20111228);
max_mod4_F20111228=max(ww_mod4_F20111228);
%% RMS  F20111228
rms1_F20111228=rms(ww1_F20111228);
rms2_F20111228=rms(ww2_F20111228);
rms3_F20111228=rms(ww3_F20111228);
rms4_F20111228=rms(ww4_F20111228);
 
rms_mod1_F20111228=rms(ww_mod1_F20111228);
rms_mod2_F20111228=rms(ww_mod2_F20111228);
rms_mod3_F20111228=rms(ww_mod3_F20111228);
rms_mod4_F20111228=rms(ww_mod4_F20111228);
%% Crest Factor  F20111228
CF1_F20111228=max1_F20111228/rms1_F20111228;
CF2_F20111228=max2_F20111228/rms2_F20111228;
CF3_F20111228=max3_F20111228/rms3_F20111228;
CF4_F20111228=max4_F20111228/rms4_F20111228;
CF_ort_F20111228=(CF1_F20111228+CF2_F20111228+CF3_F20111228+CF4_F20111228)/4;
 
CF_mod1_F20111228=max_mod1_F20111228/rms_mod1_F20111228;
CF_mod2_F20111228=max_mod2_F20111228/rms_mod2_F20111228;
CF_mod3_F20111228=max_mod3_F20111228/rms_mod3_F20111228;
CF_mod4_F20111228=max_mod4_F20111228/rms_mod4_F20111228;
CF_modort_F20111228=(CF_mod1_F20111228+CF_mod2_F20111228+CF_mod3_F20111228+CF_mod4_F20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120105
w_s_F20120105=table(w_sm_F20120105);
%% 
ww1_F20120105=(w_s_F20120105.w_sm_F20120105{1,1});
ww2_F20120105=(w_s_F20120105.w_sm_F20120105{1,2});
ww3_F20120105=(w_s_F20120105.w_sm_F20120105{1,3});
ww4_F20120105=(w_s_F20120105.w_sm_F20120105{1,4});
%%
SI1_F20120105=geomean(ww1_F20120105)/mean(ww1_F20120105);
SI2_F20120105=geomean(ww2_F20120105)/mean(ww2_F20120105);
SI3_F20120105=geomean(ww3_F20120105)/mean(ww3_F20120105);
SI4_F20120105=geomean(ww4_F20120105)/mean(ww4_F20120105);
%% smoothness index squared modulus  F20120105
w_modu_F20120105=table(w_mod_F20120105);
%%
ww_mod1_F20120105=(w_modu_F20120105.w_mod_F20120105{1,1});
ww_mod2_F20120105=(w_modu_F20120105.w_mod_F20120105{1,2});
ww_mod3_F20120105=(w_modu_F20120105.w_mod_F20120105{1,3});
ww_mod4_F20120105=(w_modu_F20120105.w_mod_F20120105{1,4});
%%
SI_mod1_F20120105=geomean(ww_mod1_F20120105)/mean(ww_mod1_F20120105);
SI_mod2_F20120105=geomean(ww_mod2_F20120105)/mean(ww_mod2_F20120105);
SI_mod3_F20120105=geomean(ww_mod3_F20120105)/mean(ww_mod3_F20120105);
SI_mod4_F20120105=geomean(ww_mod4_F20120105)/mean(ww_mod4_F20120105);
%% smoothness index energy spectrum  F20120105
w_s_F20120105=table(w_spec_F20120105);
%%
ww_rat1_F20120105=abs(w_s_F20120105.w_spec_F20120105{1,1});
ww_rat2_F20120105=abs(w_s_F20120105.w_spec_F20120105{1,2});
ww_rat3_F20120105=abs(w_s_F20120105.w_spec_F20120105{1,3});
ww_rat4_F20120105=abs(w_s_F20120105.w_spec_F20120105{1,4});
%%
new1_F20120105=abs(ww1_F20120105.*ww_rat1_F20120105);
new2_F20120105=abs(ww2_F20120105.*ww_rat2_F20120105);
new3_F20120105=abs(ww3_F20120105.*ww_rat3_F20120105);
new4_F20120105=abs(ww4_F20120105.*ww_rat4_F20120105);
%%
SI_rat1_F20120105=geomean(new1_F20120105)/mean(new1_F20120105);
SI_rat2_F20120105=geomean(new2_F20120105)/mean(new2_F20120105);
SI_rat3_F20120105=geomean(new3_F20120105)/mean(new3_F20120105);
SI_rat4_F20120105=geomean(new4_F20120105)/mean(new4_F20120105);
%% Max  F20120105
max1_F20120105=max(ww1_F20120105);
max2_F20120105=max(ww2_F20120105);
max3_F20120105=max(ww3_F20120105);
max4_F20120105=max(ww4_F20120105);
 
max_mod1_F20120105=max(ww_mod1_F20120105);
max_mod2_F20120105=max(ww_mod2_F20120105);
max_mod3_F20120105=max(ww_mod3_F20120105);
max_mod4_F20120105=max(ww_mod4_F20120105);
%% RMS  F20120105
rms1_F20120105=rms(ww1_F20120105);
rms2_F20120105=rms(ww2_F20120105);
rms3_F20120105=rms(ww3_F20120105);
rms4_F20120105=rms(ww4_F20120105);
 
rms_mod1_F20120105=rms(ww_mod1_F20120105);
rms_mod2_F20120105=rms(ww_mod2_F20120105);
rms_mod3_F20120105=rms(ww_mod3_F20120105);
rms_mod4_F20120105=rms(ww_mod4_F20120105);
%% Crest Factor  F20120105
CF1_F20120105=max1_F20120105/rms1_F20120105;
CF2_F20120105=max2_F20120105/rms2_F20120105;
CF3_F20120105=max3_F20120105/rms3_F20120105;
CF4_F20120105=max4_F20120105/rms4_F20120105;
CF_ort_F20120105=(CF1_F20120105+CF2_F20120105+CF3_F20120105+CF4_F20120105)/4;
 
CF_mod1_F20120105=max_mod1_F20120105/rms_mod1_F20120105;
CF_mod2_F20120105=max_mod2_F20120105/rms_mod2_F20120105;
CF_mod3_F20120105=max_mod3_F20120105/rms_mod3_F20120105;
CF_mod4_F20120105=max_mod4_F20120105/rms_mod4_F20120105;
CF_modort_F20120105=(CF_mod1_F20120105+CF_mod2_F20120105+CF_mod3_F20120105+CF_mod4_F20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120118
w_s_F20120118=table(w_sm_F20120118);
%% 
ww1_F20120118=(w_s_F20120118.w_sm_F20120118{1,1});
ww2_F20120118=(w_s_F20120118.w_sm_F20120118{1,2});
ww3_F20120118=(w_s_F20120118.w_sm_F20120118{1,3});
ww4_F20120118=(w_s_F20120118.w_sm_F20120118{1,4});
%%
SI1_F20120118=geomean(ww1_F20120118)/mean(ww1_F20120118);
SI2_F20120118=geomean(ww2_F20120118)/mean(ww2_F20120118);
SI3_F20120118=geomean(ww3_F20120118)/mean(ww3_F20120118);
SI4_F20120118=geomean(ww4_F20120118)/mean(ww4_F20120118);
%% smoothness index squared modulus  F20120118
w_modu_F20120118=table(w_mod_F20120118);
%%
ww_mod1_F20120118=(w_modu_F20120118.w_mod_F20120118{1,1});
ww_mod2_F20120118=(w_modu_F20120118.w_mod_F20120118{1,2});
ww_mod3_F20120118=(w_modu_F20120118.w_mod_F20120118{1,3});
ww_mod4_F20120118=(w_modu_F20120118.w_mod_F20120118{1,4});
%%
SI_mod1_F20120118=geomean(ww_mod1_F20120118)/mean(ww_mod1_F20120118);
SI_mod2_F20120118=geomean(ww_mod2_F20120118)/mean(ww_mod2_F20120118);
SI_mod3_F20120118=geomean(ww_mod3_F20120118)/mean(ww_mod3_F20120118);
SI_mod4_F20120118=geomean(ww_mod4_F20120118)/mean(ww_mod4_F20120118);
%% smoothness index energy spectrum  F20120118
w_s_F20120118=table(w_spec_F20120118);
%%
ww_rat1_F20120118=abs(w_s_F20120118.w_spec_F20120118{1,1});
ww_rat2_F20120118=abs(w_s_F20120118.w_spec_F20120118{1,2});
ww_rat3_F20120118=abs(w_s_F20120118.w_spec_F20120118{1,3});
ww_rat4_F20120118=abs(w_s_F20120118.w_spec_F20120118{1,4});
%%
new1_F20120118=abs(ww1_F20120118.*ww_rat1_F20120118);
new2_F20120118=abs(ww2_F20120118.*ww_rat2_F20120118);
new3_F20120118=abs(ww3_F20120118.*ww_rat3_F20120118);
new4_F20120118=abs(ww4_F20120118.*ww_rat4_F20120118);
%%
SI_rat1_F20120118=geomean(new1_F20120118)/mean(new1_F20120118);
SI_rat2_F20120118=geomean(new2_F20120118)/mean(new2_F20120118);
SI_rat3_F20120118=geomean(new3_F20120118)/mean(new3_F20120118);
SI_rat4_F20120118=geomean(new4_F20120118)/mean(new4_F20120118);
%% Max  F20120118
max1_F20120118=max(ww1_F20120118);
max2_F20120118=max(ww2_F20120118);
max3_F20120118=max(ww3_F20120118);
max4_F20120118=max(ww4_F20120118);
 
max_mod1_F20120118=max(ww_mod1_F20120118);
max_mod2_F20120118=max(ww_mod2_F20120118);
max_mod3_F20120118=max(ww_mod3_F20120118);
max_mod4_F20120118=max(ww_mod4_F20120118);
%% RMS  F20120118
rms1_F20120118=rms(ww1_F20120118);
rms2_F20120118=rms(ww2_F20120118);
rms3_F20120118=rms(ww3_F20120118);
rms4_F20120118=rms(ww4_F20120118);
 
rms_mod1_F20120118=rms(ww_mod1_F20120118);
rms_mod2_F20120118=rms(ww_mod2_F20120118);
rms_mod3_F20120118=rms(ww_mod3_F20120118);
rms_mod4_F20120118=rms(ww_mod4_F20120118);
%% Crest Factor  F20120118
CF1_F20120118=max1_F20120118/rms1_F20120118;
CF2_F20120118=max2_F20120118/rms2_F20120118;
CF3_F20120118=max3_F20120118/rms3_F20120118;
CF4_F20120118=max4_F20120118/rms4_F20120118;
CF_ort_F20120118=(CF1_F20120118+CF2_F20120118+CF3_F20120118+CF4_F20120118)/4;
 
CF_mod1_F20120118=max_mod1_F20120118/rms_mod1_F20120118;
CF_mod2_F20120118=max_mod2_F20120118/rms_mod2_F20120118;
CF_mod3_F20120118=max_mod3_F20120118/rms_mod3_F20120118;
CF_mod4_F20120118=max_mod4_F20120118/rms_mod4_F20120118;
CF_modort_F20120118=(CF_mod1_F20120118+CF_mod2_F20120118+CF_mod3_F20120118+CF_mod4_F20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120131
w_s_F20120131=table(w_sm_F20120131);
%% 
ww1_F20120131=(w_s_F20120131.w_sm_F20120131{1,1});
ww2_F20120131=(w_s_F20120131.w_sm_F20120131{1,2});
ww3_F20120131=(w_s_F20120131.w_sm_F20120131{1,3});
ww4_F20120131=(w_s_F20120131.w_sm_F20120131{1,4});
%%
SI1_F20120131=geomean(ww1_F20120131)/mean(ww1_F20120131);
SI2_F20120131=geomean(ww2_F20120131)/mean(ww2_F20120131);
SI3_F20120131=geomean(ww3_F20120131)/mean(ww3_F20120131);
SI4_F20120131=geomean(ww4_F20120131)/mean(ww4_F20120131);
%% smoothness index squared modulus  F20120131
w_modu_F20120131=table(w_mod_F20120131);
%%
ww_mod1_F20120131=(w_modu_F20120131.w_mod_F20120131{1,1});
ww_mod2_F20120131=(w_modu_F20120131.w_mod_F20120131{1,2});
ww_mod3_F20120131=(w_modu_F20120131.w_mod_F20120131{1,3});
ww_mod4_F20120131=(w_modu_F20120131.w_mod_F20120131{1,4});
%%
SI_mod1_F20120131=geomean(ww_mod1_F20120131)/mean(ww_mod1_F20120131);
SI_mod2_F20120131=geomean(ww_mod2_F20120131)/mean(ww_mod2_F20120131);
SI_mod3_F20120131=geomean(ww_mod3_F20120131)/mean(ww_mod3_F20120131);
SI_mod4_F20120131=geomean(ww_mod4_F20120131)/mean(ww_mod4_F20120131);
%% smoothness index energy spectrum  F20120131
w_s_F20120131=table(w_spec_F20120131);
%%
ww_rat1_F20120131=abs(w_s_F20120131.w_spec_F20120131{1,1});
ww_rat2_F20120131=abs(w_s_F20120131.w_spec_F20120131{1,2});
ww_rat3_F20120131=abs(w_s_F20120131.w_spec_F20120131{1,3});
ww_rat4_F20120131=abs(w_s_F20120131.w_spec_F20120131{1,4});
%%
new1_F20120131=abs(ww1_F20120131.*ww_rat1_F20120131);
new2_F20120131=abs(ww2_F20120131.*ww_rat2_F20120131);
new3_F20120131=abs(ww3_F20120131.*ww_rat3_F20120131);
new4_F20120131=abs(ww4_F20120131.*ww_rat4_F20120131);
%%
SI_rat1_F20120131=geomean(new1_F20120131)/mean(new1_F20120131);
SI_rat2_F20120131=geomean(new2_F20120131)/mean(new2_F20120131);
SI_rat3_F20120131=geomean(new3_F20120131)/mean(new3_F20120131);
SI_rat4_F20120131=geomean(new4_F20120131)/mean(new4_F20120131);
%% Max  F20120131
max1_F20120131=max(ww1_F20120131);
max2_F20120131=max(ww2_F20120131);
max3_F20120131=max(ww3_F20120131);
max4_F20120131=max(ww4_F20120131);
 
max_mod1_F20120131=max(ww_mod1_F20120131);
max_mod2_F20120131=max(ww_mod2_F20120131);
max_mod3_F20120131=max(ww_mod3_F20120131);
max_mod4_F20120131=max(ww_mod4_F20120131);
%% RMS  F20120131
rms1_F20120131=rms(ww1_F20120131);
rms2_F20120131=rms(ww2_F20120131);
rms3_F20120131=rms(ww3_F20120131);
rms4_F20120131=rms(ww4_F20120131);
 
rms_mod1_F20120131=rms(ww_mod1_F20120131);
rms_mod2_F20120131=rms(ww_mod2_F20120131);
rms_mod3_F20120131=rms(ww_mod3_F20120131);
rms_mod4_F20120131=rms(ww_mod4_F20120131);
%% Crest Factor  F20120131
CF1_F20120131=max1_F20120131/rms1_F20120131;
CF2_F20120131=max2_F20120131/rms2_F20120131;
CF3_F20120131=max3_F20120131/rms3_F20120131;
CF4_F20120131=max4_F20120131/rms4_F20120131;
CF_ort_F20120131=(CF1_F20120131+CF2_F20120131+CF3_F20120131+CF4_F20120131)/4;
 
CF_mod1_F20120131=max_mod1_F20120131/rms_mod1_F20120131;
CF_mod2_F20120131=max_mod2_F20120131/rms_mod2_F20120131;
CF_mod3_F20120131=max_mod3_F20120131/rms_mod3_F20120131;
CF_mod4_F20120131=max_mod4_F20120131/rms_mod4_F20120131;
CF_modort_F20120131=(CF_mod1_F20120131+CF_mod2_F20120131+CF_mod3_F20120131+CF_mod4_F20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120306
w_s_F20120306=table(w_sm_F20120306);
%% 
ww1_F20120306=(w_s_F20120306.w_sm_F20120306{1,1});
ww2_F20120306=(w_s_F20120306.w_sm_F20120306{1,2});
ww3_F20120306=(w_s_F20120306.w_sm_F20120306{1,3});
ww4_F20120306=(w_s_F20120306.w_sm_F20120306{1,4});
%%
SI1_F20120306=geomean(ww1_F20120306)/mean(ww1_F20120306);
SI2_F20120306=geomean(ww2_F20120306)/mean(ww2_F20120306);
SI3_F20120306=geomean(ww3_F20120306)/mean(ww3_F20120306);
SI4_F20120306=geomean(ww4_F20120306)/mean(ww4_F20120306);
%% smoothness index squared modulus  F20120306
w_modu_F20120306=table(w_mod_F20120306);
%%
ww_mod1_F20120306=(w_modu_F20120306.w_mod_F20120306{1,1});
ww_mod2_F20120306=(w_modu_F20120306.w_mod_F20120306{1,2});
ww_mod3_F20120306=(w_modu_F20120306.w_mod_F20120306{1,3});
ww_mod4_F20120306=(w_modu_F20120306.w_mod_F20120306{1,4});
%%
SI_mod1_F20120306=geomean(ww_mod1_F20120306)/mean(ww_mod1_F20120306);
SI_mod2_F20120306=geomean(ww_mod2_F20120306)/mean(ww_mod2_F20120306);
SI_mod3_F20120306=geomean(ww_mod3_F20120306)/mean(ww_mod3_F20120306);
SI_mod4_F20120306=geomean(ww_mod4_F20120306)/mean(ww_mod4_F20120306);
%% smoothness index energy spectrum  F20120306
w_s_F20120306=table(w_spec_F20120306);
%%
ww_rat1_F20120306=abs(w_s_F20120306.w_spec_F20120306{1,1});
ww_rat2_F20120306=abs(w_s_F20120306.w_spec_F20120306{1,2});
ww_rat3_F20120306=abs(w_s_F20120306.w_spec_F20120306{1,3});
ww_rat4_F20120306=abs(w_s_F20120306.w_spec_F20120306{1,4});
%%
new1_F20120306=abs(ww1_F20120306.*ww_rat1_F20120306);
new2_F20120306=abs(ww2_F20120306.*ww_rat2_F20120306);
new3_F20120306=abs(ww3_F20120306.*ww_rat3_F20120306);
new4_F20120306=abs(ww4_F20120306.*ww_rat4_F20120306);
%%
SI_rat1_F20120306=geomean(new1_F20120306)/mean(new1_F20120306);
SI_rat2_F20120306=geomean(new2_F20120306)/mean(new2_F20120306);
SI_rat3_F20120306=geomean(new3_F20120306)/mean(new3_F20120306);
SI_rat4_F20120306=geomean(new4_F20120306)/mean(new4_F20120306);
%% Max  F20120306
max1_F20120306=max(ww1_F20120306);
max2_F20120306=max(ww2_F20120306);
max3_F20120306=max(ww3_F20120306);
max4_F20120306=max(ww4_F20120306);
 
max_mod1_F20120306=max(ww_mod1_F20120306);
max_mod2_F20120306=max(ww_mod2_F20120306);
max_mod3_F20120306=max(ww_mod3_F20120306);
max_mod4_F20120306=max(ww_mod4_F20120306);
%% RMS  F20120306
rms1_F20120306=rms(ww1_F20120306);
rms2_F20120306=rms(ww2_F20120306);
rms3_F20120306=rms(ww3_F20120306);
rms4_F20120306=rms(ww4_F20120306);
 
rms_mod1_F20120306=rms(ww_mod1_F20120306);
rms_mod2_F20120306=rms(ww_mod2_F20120306);
rms_mod3_F20120306=rms(ww_mod3_F20120306);
rms_mod4_F20120306=rms(ww_mod4_F20120306);
%% Crest Factor  F20120306
CF1_F20120306=max1_F20120306/rms1_F20120306;
CF2_F20120306=max2_F20120306/rms2_F20120306;
CF3_F20120306=max3_F20120306/rms3_F20120306;
CF4_F20120306=max4_F20120306/rms4_F20120306;
CF_ort_F20120306=(CF1_F20120306+CF2_F20120306+CF3_F20120306+CF4_F20120306)/4;
 
CF_mod1_F20120306=max_mod1_F20120306/rms_mod1_F20120306;
CF_mod2_F20120306=max_mod2_F20120306/rms_mod2_F20120306;
CF_mod3_F20120306=max_mod3_F20120306/rms_mod3_F20120306;
CF_mod4_F20120306=max_mod4_F20120306/rms_mod4_F20120306;
CF_modort_F20120306=(CF_mod1_F20120306+CF_mod2_F20120306+CF_mod3_F20120306+CF_mod4_F20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120518
w_s_F20120518=table(w_sm_F20120518);
%% 
ww1_F20120518=(w_s_F20120518.w_sm_F20120518{1,1});
ww2_F20120518=(w_s_F20120518.w_sm_F20120518{1,2});
ww3_F20120518=(w_s_F20120518.w_sm_F20120518{1,3});
ww4_F20120518=(w_s_F20120518.w_sm_F20120518{1,4});
%%
SI1_F20120518=geomean(ww1_F20120518)/mean(ww1_F20120518);
SI2_F20120518=geomean(ww2_F20120518)/mean(ww2_F20120518);
SI3_F20120518=geomean(ww3_F20120518)/mean(ww3_F20120518);
SI4_F20120518=geomean(ww4_F20120518)/mean(ww4_F20120518);
%% smoothness index squared modulus  F20120518
w_modu_F20120518=table(w_mod_F20120518);
%%
ww_mod1_F20120518=(w_modu_F20120518.w_mod_F20120518{1,1});
ww_mod2_F20120518=(w_modu_F20120518.w_mod_F20120518{1,2});
ww_mod3_F20120518=(w_modu_F20120518.w_mod_F20120518{1,3});
ww_mod4_F20120518=(w_modu_F20120518.w_mod_F20120518{1,4});
%%
SI_mod1_F20120518=geomean(ww_mod1_F20120518)/mean(ww_mod1_F20120518);
SI_mod2_F20120518=geomean(ww_mod2_F20120518)/mean(ww_mod2_F20120518);
SI_mod3_F20120518=geomean(ww_mod3_F20120518)/mean(ww_mod3_F20120518);
SI_mod4_F20120518=geomean(ww_mod4_F20120518)/mean(ww_mod4_F20120518);
%% smoothness index energy spectrum  F20120518
w_s_F20120518=table(w_spec_F20120518);
%%
ww_rat1_F20120518=abs(w_s_F20120518.w_spec_F20120518{1,1});
ww_rat2_F20120518=abs(w_s_F20120518.w_spec_F20120518{1,2});
ww_rat3_F20120518=abs(w_s_F20120518.w_spec_F20120518{1,3});
ww_rat4_F20120518=abs(w_s_F20120518.w_spec_F20120518{1,4});
%%
new1_F20120518=abs(ww1_F20120518.*ww_rat1_F20120518);
new2_F20120518=abs(ww2_F20120518.*ww_rat2_F20120518);
new3_F20120518=abs(ww3_F20120518.*ww_rat3_F20120518);
new4_F20120518=abs(ww4_F20120518.*ww_rat4_F20120518);
%%
SI_rat1_F20120518=geomean(new1_F20120518)/mean(new1_F20120518);
SI_rat2_F20120518=geomean(new2_F20120518)/mean(new2_F20120518);
SI_rat3_F20120518=geomean(new3_F20120518)/mean(new3_F20120518);
SI_rat4_F20120518=geomean(new4_F20120518)/mean(new4_F20120518);
%% Max  F20120518
max1_F20120518=max(ww1_F20120518);
max2_F20120518=max(ww2_F20120518);
max3_F20120518=max(ww3_F20120518);
max4_F20120518=max(ww4_F20120518);
 
max_mod1_F20120518=max(ww_mod1_F20120518);
max_mod2_F20120518=max(ww_mod2_F20120518);
max_mod3_F20120518=max(ww_mod3_F20120518);
max_mod4_F20120518=max(ww_mod4_F20120518);
%% RMS  F20120518
rms1_F20120518=rms(ww1_F20120518);
rms2_F20120518=rms(ww2_F20120518);
rms3_F20120518=rms(ww3_F20120518);
rms4_F20120518=rms(ww4_F20120518);
 
rms_mod1_F20120518=rms(ww_mod1_F20120518);
rms_mod2_F20120518=rms(ww_mod2_F20120518);
rms_mod3_F20120518=rms(ww_mod3_F20120518);
rms_mod4_F20120518=rms(ww_mod4_F20120518);
%% Crest Factor  F20120518
CF1_F20120518=max1_F20120518/rms1_F20120518;
CF2_F20120518=max2_F20120518/rms2_F20120518;
CF3_F20120518=max3_F20120518/rms3_F20120518;
CF4_F20120518=max4_F20120518/rms4_F20120518;
CF_ort_F20120518=(CF1_F20120518+CF2_F20120518+CF3_F20120518+CF4_F20120518)/4;
 
CF_mod1_F20120518=max_mod1_F20120518/rms_mod1_F20120518;
CF_mod2_F20120518=max_mod2_F20120518/rms_mod2_F20120518;
CF_mod3_F20120518=max_mod3_F20120518/rms_mod3_F20120518;
CF_mod4_F20120518=max_mod4_F20120518/rms_mod4_F20120518;
CF_modort_F20120518=(CF_mod1_F20120518+CF_mod2_F20120518+CF_mod3_F20120518+CF_mod4_F20120518)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120621
w_s_F20120621=table(w_sm_F20120621);
%% 
ww1_F20120621=(w_s_F20120621.w_sm_F20120621{1,1});
ww2_F20120621=(w_s_F20120621.w_sm_F20120621{1,2});
ww3_F20120621=(w_s_F20120621.w_sm_F20120621{1,3});
ww4_F20120621=(w_s_F20120621.w_sm_F20120621{1,4});
%%
SI1_F20120621=geomean(ww1_F20120621)/mean(ww1_F20120621);
SI2_F20120621=geomean(ww2_F20120621)/mean(ww2_F20120621);
SI3_F20120621=geomean(ww3_F20120621)/mean(ww3_F20120621);
SI4_F20120621=geomean(ww4_F20120621)/mean(ww4_F20120621);
%% smoothness index squared modulus  F20120621
w_modu_F20120621=table(w_mod_F20120621);
%%
ww_mod1_F20120621=(w_modu_F20120621.w_mod_F20120621{1,1});
ww_mod2_F20120621=(w_modu_F20120621.w_mod_F20120621{1,2});
ww_mod3_F20120621=(w_modu_F20120621.w_mod_F20120621{1,3});
ww_mod4_F20120621=(w_modu_F20120621.w_mod_F20120621{1,4});
%%
SI_mod1_F20120621=geomean(ww_mod1_F20120621)/mean(ww_mod1_F20120621);
SI_mod2_F20120621=geomean(ww_mod2_F20120621)/mean(ww_mod2_F20120621);
SI_mod3_F20120621=geomean(ww_mod3_F20120621)/mean(ww_mod3_F20120621);
SI_mod4_F20120621=geomean(ww_mod4_F20120621)/mean(ww_mod4_F20120621);
%% smoothness index energy spectrum  F20120621
w_s_F20120621=table(w_spec_F20120621);
%%
ww_rat1_F20120621=abs(w_s_F20120621.w_spec_F20120621{1,1});
ww_rat2_F20120621=abs(w_s_F20120621.w_spec_F20120621{1,2});
ww_rat3_F20120621=abs(w_s_F20120621.w_spec_F20120621{1,3});
ww_rat4_F20120621=abs(w_s_F20120621.w_spec_F20120621{1,4});
%%
new1_F20120621=abs(ww1_F20120621.*ww_rat1_F20120621);
new2_F20120621=abs(ww2_F20120621.*ww_rat2_F20120621);
new3_F20120621=abs(ww3_F20120621.*ww_rat3_F20120621);
new4_F20120621=abs(ww4_F20120621.*ww_rat4_F20120621);
%%
SI_rat1_F20120621=geomean(new1_F20120621)/mean(new1_F20120621);
SI_rat2_F20120621=geomean(new2_F20120621)/mean(new2_F20120621);
SI_rat3_F20120621=geomean(new3_F20120621)/mean(new3_F20120621);
SI_rat4_F20120621=geomean(new4_F20120621)/mean(new4_F20120621);
%% Max  F20120621
max1_F20120621=max(ww1_F20120621);
max2_F20120621=max(ww2_F20120621);
max3_F20120621=max(ww3_F20120621);
max4_F20120621=max(ww4_F20120621);
 
max_mod1_F20120621=max(ww_mod1_F20120621);
max_mod2_F20120621=max(ww_mod2_F20120621);
max_mod3_F20120621=max(ww_mod3_F20120621);
max_mod4_F20120621=max(ww_mod4_F20120621);
%% RMS  F20120621
rms1_F20120621=rms(ww1_F20120621);
rms2_F20120621=rms(ww2_F20120621);
rms3_F20120621=rms(ww3_F20120621);
rms4_F20120621=rms(ww4_F20120621);
 
rms_mod1_F20120621=rms(ww_mod1_F20120621);
rms_mod2_F20120621=rms(ww_mod2_F20120621);
rms_mod3_F20120621=rms(ww_mod3_F20120621);
rms_mod4_F20120621=rms(ww_mod4_F20120621);
%% Crest Factor  F20120621
CF1_F20120621=max1_F20120621/rms1_F20120621;
CF2_F20120621=max2_F20120621/rms2_F20120621;
CF3_F20120621=max3_F20120621/rms3_F20120621;
CF4_F20120621=max4_F20120621/rms4_F20120621;
CF_ort_F20120621=(CF1_F20120621+CF2_F20120621+CF3_F20120621+CF4_F20120621)/4;
 
CF_mod1_F20120621=max_mod1_F20120621/rms_mod1_F20120621;
CF_mod2_F20120621=max_mod2_F20120621/rms_mod2_F20120621;
CF_mod3_F20120621=max_mod3_F20120621/rms_mod3_F20120621;
CF_mod4_F20120621=max_mod4_F20120621/rms_mod4_F20120621;
CF_modort_F20120621=(CF_mod1_F20120621+CF_mod2_F20120621+CF_mod3_F20120621+CF_mod4_F20120621)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120731
w_s_F20120731=table(w_sm_F20120731);
%% 
ww1_F20120731=(w_s_F20120731.w_sm_F20120731{1,1});
ww2_F20120731=(w_s_F20120731.w_sm_F20120731{1,2});
ww3_F20120731=(w_s_F20120731.w_sm_F20120731{1,3});
ww4_F20120731=(w_s_F20120731.w_sm_F20120731{1,4});
%%
SI1_F20120731=geomean(ww1_F20120731)/mean(ww1_F20120731);
SI2_F20120731=geomean(ww2_F20120731)/mean(ww2_F20120731);
SI3_F20120731=geomean(ww3_F20120731)/mean(ww3_F20120731);
SI4_F20120731=geomean(ww4_F20120731)/mean(ww4_F20120731);
%% smoothness index squared modulus  F20120731
w_modu_F20120731=table(w_mod_F20120731);
%%
ww_mod1_F20120731=(w_modu_F20120731.w_mod_F20120731{1,1});
ww_mod2_F20120731=(w_modu_F20120731.w_mod_F20120731{1,2});
ww_mod3_F20120731=(w_modu_F20120731.w_mod_F20120731{1,3});
ww_mod4_F20120731=(w_modu_F20120731.w_mod_F20120731{1,4});
%%
SI_mod1_F20120731=geomean(ww_mod1_F20120731)/mean(ww_mod1_F20120731);
SI_mod2_F20120731=geomean(ww_mod2_F20120731)/mean(ww_mod2_F20120731);
SI_mod3_F20120731=geomean(ww_mod3_F20120731)/mean(ww_mod3_F20120731);
SI_mod4_F20120731=geomean(ww_mod4_F20120731)/mean(ww_mod4_F20120731);
%% smoothness index energy spectrum  F20120731
w_s_F20120731=table(w_spec_F20120731);
%%
ww_rat1_F20120731=abs(w_s_F20120731.w_spec_F20120731{1,1});
ww_rat2_F20120731=abs(w_s_F20120731.w_spec_F20120731{1,2});
ww_rat3_F20120731=abs(w_s_F20120731.w_spec_F20120731{1,3});
ww_rat4_F20120731=abs(w_s_F20120731.w_spec_F20120731{1,4});
%%
new1_F20120731=abs(ww1_F20120731.*ww_rat1_F20120731);
new2_F20120731=abs(ww2_F20120731.*ww_rat2_F20120731);
new3_F20120731=abs(ww3_F20120731.*ww_rat3_F20120731);
new4_F20120731=abs(ww4_F20120731.*ww_rat4_F20120731);
%%
SI_rat1_F20120731=geomean(new1_F20120731)/mean(new1_F20120731);
SI_rat2_F20120731=geomean(new2_F20120731)/mean(new2_F20120731);
SI_rat3_F20120731=geomean(new3_F20120731)/mean(new3_F20120731);
SI_rat4_F20120731=geomean(new4_F20120731)/mean(new4_F20120731);
%% Max  F20120731
max1_F20120731=max(ww1_F20120731);
max2_F20120731=max(ww2_F20120731);
max3_F20120731=max(ww3_F20120731);
max4_F20120731=max(ww4_F20120731);
 
max_mod1_F20120731=max(ww_mod1_F20120731);
max_mod2_F20120731=max(ww_mod2_F20120731);
max_mod3_F20120731=max(ww_mod3_F20120731);
max_mod4_F20120731=max(ww_mod4_F20120731);
%% RMS  F20120731
rms1_F20120731=rms(ww1_F20120731);
rms2_F20120731=rms(ww2_F20120731);
rms3_F20120731=rms(ww3_F20120731);
rms4_F20120731=rms(ww4_F20120731);
 
rms_mod1_F20120731=rms(ww_mod1_F20120731);
rms_mod2_F20120731=rms(ww_mod2_F20120731);
rms_mod3_F20120731=rms(ww_mod3_F20120731);
rms_mod4_F20120731=rms(ww_mod4_F20120731);
%% Crest Factor  F20120731
CF1_F20120731=max1_F20120731/rms1_F20120731;
CF2_F20120731=max2_F20120731/rms2_F20120731;
CF3_F20120731=max3_F20120731/rms3_F20120731;
CF4_F20120731=max4_F20120731/rms4_F20120731;
CF_ort_F20120731=(CF1_F20120731+CF2_F20120731+CF3_F20120731+CF4_F20120731)/4;
 
CF_mod1_F20120731=max_mod1_F20120731/rms_mod1_F20120731;
CF_mod2_F20120731=max_mod2_F20120731/rms_mod2_F20120731;
CF_mod3_F20120731=max_mod3_F20120731/rms_mod3_F20120731;
CF_mod4_F20120731=max_mod4_F20120731/rms_mod4_F20120731;
CF_modort_F20120731=(CF_mod1_F20120731+CF_mod2_F20120731+CF_mod3_F20120731+CF_mod4_F20120731)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120924
w_s_F20120924=table(w_sm_F20120924);
%% 
ww1_F20120924=(w_s_F20120924.w_sm_F20120924{1,1});
ww2_F20120924=(w_s_F20120924.w_sm_F20120924{1,2});
ww3_F20120924=(w_s_F20120924.w_sm_F20120924{1,3});
ww4_F20120924=(w_s_F20120924.w_sm_F20120924{1,4});
%%
SI1_F20120924=geomean(ww1_F20120924)/mean(ww1_F20120924);
SI2_F20120924=geomean(ww2_F20120924)/mean(ww2_F20120924);
SI3_F20120924=geomean(ww3_F20120924)/mean(ww3_F20120924);
SI4_F20120924=geomean(ww4_F20120924)/mean(ww4_F20120924);
%% smoothness index squared modulus  F20120924
w_modu_F20120924=table(w_mod_F20120924);
%%
ww_mod1_F20120924=(w_modu_F20120924.w_mod_F20120924{1,1});
ww_mod2_F20120924=(w_modu_F20120924.w_mod_F20120924{1,2});
ww_mod3_F20120924=(w_modu_F20120924.w_mod_F20120924{1,3});
ww_mod4_F20120924=(w_modu_F20120924.w_mod_F20120924{1,4});
%%
SI_mod1_F20120924=geomean(ww_mod1_F20120924)/mean(ww_mod1_F20120924);
SI_mod2_F20120924=geomean(ww_mod2_F20120924)/mean(ww_mod2_F20120924);
SI_mod3_F20120924=geomean(ww_mod3_F20120924)/mean(ww_mod3_F20120924);
SI_mod4_F20120924=geomean(ww_mod4_F20120924)/mean(ww_mod4_F20120924);
%% smoothness index energy spectrum  F20120924
w_s_F20120924=table(w_spec_F20120924);
%%
ww_rat1_F20120924=abs(w_s_F20120924.w_spec_F20120924{1,1});
ww_rat2_F20120924=abs(w_s_F20120924.w_spec_F20120924{1,2});
ww_rat3_F20120924=abs(w_s_F20120924.w_spec_F20120924{1,3});
ww_rat4_F20120924=abs(w_s_F20120924.w_spec_F20120924{1,4});
%%
new1_F20120924=abs(ww1_F20120924.*ww_rat1_F20120924);
new2_F20120924=abs(ww2_F20120924.*ww_rat2_F20120924);
new3_F20120924=abs(ww3_F20120924.*ww_rat3_F20120924);
new4_F20120924=abs(ww4_F20120924.*ww_rat4_F20120924);
%%
SI_rat1_F20120924=geomean(new1_F20120924)/mean(new1_F20120924);
SI_rat2_F20120924=geomean(new2_F20120924)/mean(new2_F20120924);
SI_rat3_F20120924=geomean(new3_F20120924)/mean(new3_F20120924);
SI_rat4_F20120924=geomean(new4_F20120924)/mean(new4_F20120924);
%% Max  F20120924
max1_F20120924=max(ww1_F20120924);
max2_F20120924=max(ww2_F20120924);
max3_F20120924=max(ww3_F20120924);
max4_F20120924=max(ww4_F20120924);
 
max_mod1_F20120924=max(ww_mod1_F20120924);
max_mod2_F20120924=max(ww_mod2_F20120924);
max_mod3_F20120924=max(ww_mod3_F20120924);
max_mod4_F20120924=max(ww_mod4_F20120924);
%% RMS  F20120924
rms1_F20120924=rms(ww1_F20120924);
rms2_F20120924=rms(ww2_F20120924);
rms3_F20120924=rms(ww3_F20120924);
rms4_F20120924=rms(ww4_F20120924);
 
rms_mod1_F20120924=rms(ww_mod1_F20120924);
rms_mod2_F20120924=rms(ww_mod2_F20120924);
rms_mod3_F20120924=rms(ww_mod3_F20120924);
rms_mod4_F20120924=rms(ww_mod4_F20120924);
%% Crest Factor  F20120924
CF1_F20120924=max1_F20120924/rms1_F20120924;
CF2_F20120924=max2_F20120924/rms2_F20120924;
CF3_F20120924=max3_F20120924/rms3_F20120924;
CF4_F20120924=max4_F20120924/rms4_F20120924;
CF_ort_F20120924=(CF1_F20120924+CF2_F20120924+CF3_F20120924+CF4_F20120924)/4;
 
CF_mod1_F20120924=max_mod1_F20120924/rms_mod1_F20120924;
CF_mod2_F20120924=max_mod2_F20120924/rms_mod2_F20120924;
CF_mod3_F20120924=max_mod3_F20120924/rms_mod3_F20120924;
CF_mod4_F20120924=max_mod4_F20120924/rms_mod4_F20120924;
CF_modort_F20120924=(CF_mod1_F20120924+CF_mod2_F20120924+CF_mod3_F20120924+CF_mod4_F20120924)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120926
w_s_F20120926=table(w_sm_F20120926);
%% 
ww1_F20120926=(w_s_F20120926.w_sm_F20120926{1,1});
ww2_F20120926=(w_s_F20120926.w_sm_F20120926{1,2});
ww3_F20120926=(w_s_F20120926.w_sm_F20120926{1,3});
ww4_F20120926=(w_s_F20120926.w_sm_F20120926{1,4});
%%
SI1_F20120926=geomean(ww1_F20120926)/mean(ww1_F20120926);
SI2_F20120926=geomean(ww2_F20120926)/mean(ww2_F20120926);
SI3_F20120926=geomean(ww3_F20120926)/mean(ww3_F20120926);
SI4_F20120926=geomean(ww4_F20120926)/mean(ww4_F20120926);
%% smoothness index squared modulus  F20120926
w_modu_F20120926=table(w_mod_F20120926);
%%
ww_mod1_F20120926=(w_modu_F20120926.w_mod_F20120926{1,1});
ww_mod2_F20120926=(w_modu_F20120926.w_mod_F20120926{1,2});
ww_mod3_F20120926=(w_modu_F20120926.w_mod_F20120926{1,3});
ww_mod4_F20120926=(w_modu_F20120926.w_mod_F20120926{1,4});
%%
SI_mod1_F20120926=geomean(ww_mod1_F20120926)/mean(ww_mod1_F20120926);
SI_mod2_F20120926=geomean(ww_mod2_F20120926)/mean(ww_mod2_F20120926);
SI_mod3_F20120926=geomean(ww_mod3_F20120926)/mean(ww_mod3_F20120926);
SI_mod4_F20120926=geomean(ww_mod4_F20120926)/mean(ww_mod4_F20120926);
%% smoothness index energy spectrum  F20120926
w_s_F20120926=table(w_spec_F20120926);
%%
ww_rat1_F20120926=abs(w_s_F20120926.w_spec_F20120926{1,1});
ww_rat2_F20120926=abs(w_s_F20120926.w_spec_F20120926{1,2});
ww_rat3_F20120926=abs(w_s_F20120926.w_spec_F20120926{1,3});
ww_rat4_F20120926=abs(w_s_F20120926.w_spec_F20120926{1,4});
%%
new1_F20120926=abs(ww1_F20120926.*ww_rat1_F20120926);
new2_F20120926=abs(ww2_F20120926.*ww_rat2_F20120926);
new3_F20120926=abs(ww3_F20120926.*ww_rat3_F20120926);
new4_F20120926=abs(ww4_F20120926.*ww_rat4_F20120926);
%%
SI_rat1_F20120926=geomean(new1_F20120926)/mean(new1_F20120926);
SI_rat2_F20120926=geomean(new2_F20120926)/mean(new2_F20120926);
SI_rat3_F20120926=geomean(new3_F20120926)/mean(new3_F20120926);
SI_rat4_F20120926=geomean(new4_F20120926)/mean(new4_F20120926);
%% Max  F20120926
max1_F20120926=max(ww1_F20120926);
max2_F20120926=max(ww2_F20120926);
max3_F20120926=max(ww3_F20120926);
max4_F20120926=max(ww4_F20120926);
 
max_mod1_F20120926=max(ww_mod1_F20120926);
max_mod2_F20120926=max(ww_mod2_F20120926);
max_mod3_F20120926=max(ww_mod3_F20120926);
max_mod4_F20120926=max(ww_mod4_F20120926);
%% RMS  F20120926
rms1_F20120926=rms(ww1_F20120926);
rms2_F20120926=rms(ww2_F20120926);
rms3_F20120926=rms(ww3_F20120926);
rms4_F20120926=rms(ww4_F20120926);
 
rms_mod1_F20120926=rms(ww_mod1_F20120926);
rms_mod2_F20120926=rms(ww_mod2_F20120926);
rms_mod3_F20120926=rms(ww_mod3_F20120926);
rms_mod4_F20120926=rms(ww_mod4_F20120926);
%% Crest Factor  F20120926
CF1_F20120926=max1_F20120926/rms1_F20120926;
CF2_F20120926=max2_F20120926/rms2_F20120926;
CF3_F20120926=max3_F20120926/rms3_F20120926;
CF4_F20120926=max4_F20120926/rms4_F20120926;
CF_ort_F20120926=(CF1_F20120926+CF2_F20120926+CF3_F20120926+CF4_F20120926)/4;
 
CF_mod1_F20120926=max_mod1_F20120926/rms_mod1_F20120926;
CF_mod2_F20120926=max_mod2_F20120926/rms_mod2_F20120926;
CF_mod3_F20120926=max_mod3_F20120926/rms_mod3_F20120926;
CF_mod4_F20120926=max_mod4_F20120926/rms_mod4_F20120926;
CF_modort_F20120926=(CF_mod1_F20120926+CF_mod2_F20120926+CF_mod3_F20120926+CF_mod4_F20120926)/4;
 
%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20130118
w_s_F20130118=table(w_sm_F20130118);
%% 
ww1_F20130118=(w_s_F20130118.w_sm_F20130118{1,1});
ww2_F20130118=(w_s_F20130118.w_sm_F20130118{1,2});
ww3_F20130118=(w_s_F20130118.w_sm_F20130118{1,3});
ww4_F20130118=(w_s_F20130118.w_sm_F20130118{1,4});
%%
SI1_F20130118=geomean(ww1_F20130118)/mean(ww1_F20130118);
SI2_F20130118=geomean(ww2_F20130118)/mean(ww2_F20130118);
SI3_F20130118=geomean(ww3_F20130118)/mean(ww3_F20130118);
SI4_F20130118=geomean(ww4_F20130118)/mean(ww4_F20130118);
%% smoothness index squared modulus  F20130118
w_modu_F20130118=table(w_mod_F20130118);
%%
ww_mod1_F20130118=(w_modu_F20130118.w_mod_F20130118{1,1});
ww_mod2_F20130118=(w_modu_F20130118.w_mod_F20130118{1,2});
ww_mod3_F20130118=(w_modu_F20130118.w_mod_F20130118{1,3});
ww_mod4_F20130118=(w_modu_F20130118.w_mod_F20130118{1,4});
%%
SI_mod1_F20130118=geomean(ww_mod1_F20130118)/mean(ww_mod1_F20130118);
SI_mod2_F20130118=geomean(ww_mod2_F20130118)/mean(ww_mod2_F20130118);
SI_mod3_F20130118=geomean(ww_mod3_F20130118)/mean(ww_mod3_F20130118);
SI_mod4_F20130118=geomean(ww_mod4_F20130118)/mean(ww_mod4_F20130118);
%% smoothness index energy spectrum  F20130118
w_s_F20130118=table(w_spec_F20130118);
%%
ww_rat1_F20130118=abs(w_s_F20130118.w_spec_F20130118{1,1});
ww_rat2_F20130118=abs(w_s_F20130118.w_spec_F20130118{1,2});
ww_rat3_F20130118=abs(w_s_F20130118.w_spec_F20130118{1,3});
ww_rat4_F20130118=abs(w_s_F20130118.w_spec_F20130118{1,4});
%%
new1_F20130118=abs(ww1_F20130118.*ww_rat1_F20130118);
new2_F20130118=abs(ww2_F20130118.*ww_rat2_F20130118);
new3_F20130118=abs(ww3_F20130118.*ww_rat3_F20130118);
new4_F20130118=abs(ww4_F20130118.*ww_rat4_F20130118);
%%
SI_rat1_F20130118=geomean(new1_F20130118)/mean(new1_F20130118);
SI_rat2_F20130118=geomean(new2_F20130118)/mean(new2_F20130118);
SI_rat3_F20130118=geomean(new3_F20130118)/mean(new3_F20130118);
SI_rat4_F20130118=geomean(new4_F20130118)/mean(new4_F20130118);
%% Max  F20130118
max1_F20130118=max(ww1_F20130118);
max2_F20130118=max(ww2_F20130118);
max3_F20130118=max(ww3_F20130118);
max4_F20130118=max(ww4_F20130118);
 
max_mod1_F20130118=max(ww_mod1_F20130118);
max_mod2_F20130118=max(ww_mod2_F20130118);
max_mod3_F20130118=max(ww_mod3_F20130118);
max_mod4_F20130118=max(ww_mod4_F20130118);
%% RMS  F20130118
rms1_F20130118=rms(ww1_F20130118);
rms2_F20130118=rms(ww2_F20130118);
rms3_F20130118=rms(ww3_F20130118);
rms4_F20130118=rms(ww4_F20130118);
 
rms_mod1_F20130118=rms(ww_mod1_F20130118);
rms_mod2_F20130118=rms(ww_mod2_F20130118);
rms_mod3_F20130118=rms(ww_mod3_F20130118);
rms_mod4_F20130118=rms(ww_mod4_F20130118);
%% Crest Factor  F20130118
CF1_F20130118=max1_F20130118/rms1_F20130118;
CF2_F20130118=max2_F20130118/rms2_F20130118;
CF3_F20130118=max3_F20130118/rms3_F20130118;
CF4_F20130118=max4_F20130118/rms4_F20130118;
CF_ort_F20130118=(CF1_F20130118+CF2_F20130118+CF3_F20130118+CF4_F20130118)/4;
 
CF_mod1_F20130118=max_mod1_F20130118/rms_mod1_F20130118;
CF_mod2_F20130118=max_mod2_F20130118/rms_mod2_F20130118;
CF_mod3_F20130118=max_mod3_F20130118/rms_mod3_F20130118;
CF_mod4_F20130118=max_mod4_F20130118/rms_mod4_F20130118;
CF_modort_F20130118=(CF_mod1_F20130118+CF_mod2_F20130118+CF_mod3_F20130118+CF_mod4_F20130118)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20130311
w_s_F20130311=table(w_sm_F20130311);
%% 
ww1_F20130311=(w_s_F20130311.w_sm_F20130311{1,1});
ww2_F20130311=(w_s_F20130311.w_sm_F20130311{1,2});
ww3_F20130311=(w_s_F20130311.w_sm_F20130311{1,3});
ww4_F20130311=(w_s_F20130311.w_sm_F20130311{1,4});
%%
SI1_F20130311=geomean(ww1_F20130311)/mean(ww1_F20130311);
SI2_F20130311=geomean(ww2_F20130311)/mean(ww2_F20130311);
SI3_F20130311=geomean(ww3_F20130311)/mean(ww3_F20130311);
SI4_F20130311=geomean(ww4_F20130311)/mean(ww4_F20130311);
%% smoothness index squared modulus  F20130311
w_modu_F20130311=table(w_mod_F20130311);
%%
ww_mod1_F20130311=(w_modu_F20130311.w_mod_F20130311{1,1});
ww_mod2_F20130311=(w_modu_F20130311.w_mod_F20130311{1,2});
ww_mod3_F20130311=(w_modu_F20130311.w_mod_F20130311{1,3});
ww_mod4_F20130311=(w_modu_F20130311.w_mod_F20130311{1,4});
%%
SI_mod1_F20130311=geomean(ww_mod1_F20130311)/mean(ww_mod1_F20130311);
SI_mod2_F20130311=geomean(ww_mod2_F20130311)/mean(ww_mod2_F20130311);
SI_mod3_F20130311=geomean(ww_mod3_F20130311)/mean(ww_mod3_F20130311);
SI_mod4_F20130311=geomean(ww_mod4_F20130311)/mean(ww_mod4_F20130311);
%% smoothness index energy spectrum  F20130311
w_s_F20130311=table(w_spec_F20130311);
%%
ww_rat1_F20130311=abs(w_s_F20130311.w_spec_F20130311{1,1});
ww_rat2_F20130311=abs(w_s_F20130311.w_spec_F20130311{1,2});
ww_rat3_F20130311=abs(w_s_F20130311.w_spec_F20130311{1,3});
ww_rat4_F20130311=abs(w_s_F20130311.w_spec_F20130311{1,4});
%%
new1_F20130311=abs(ww1_F20130311.*ww_rat1_F20130311);
new2_F20130311=abs(ww2_F20130311.*ww_rat2_F20130311);
new3_F20130311=abs(ww3_F20130311.*ww_rat3_F20130311);
new4_F20130311=abs(ww4_F20130311.*ww_rat4_F20130311);
%%
SI_rat1_F20130311=geomean(new1_F20130311)/mean(new1_F20130311);
SI_rat2_F20130311=geomean(new2_F20130311)/mean(new2_F20130311);
SI_rat3_F20130311=geomean(new3_F20130311)/mean(new3_F20130311);
SI_rat4_F20130311=geomean(new4_F20130311)/mean(new4_F20130311);
%% Max  F20130311
max1_F20130311=max(ww1_F20130311);
max2_F20130311=max(ww2_F20130311);
max3_F20130311=max(ww3_F20130311);
max4_F20130311=max(ww4_F20130311);
 
max_mod1_F20130311=max(ww_mod1_F20130311);
max_mod2_F20130311=max(ww_mod2_F20130311);
max_mod3_F20130311=max(ww_mod3_F20130311);
max_mod4_F20130311=max(ww_mod4_F20130311);
%% RMS  F20130311
rms1_F20130311=rms(ww1_F20130311);
rms2_F20130311=rms(ww2_F20130311);
rms3_F20130311=rms(ww3_F20130311);
rms4_F20130311=rms(ww4_F20130311);
 
rms_mod1_F20130311=rms(ww_mod1_F20130311);
rms_mod2_F20130311=rms(ww_mod2_F20130311);
rms_mod3_F20130311=rms(ww_mod3_F20130311);
rms_mod4_F20130311=rms(ww_mod4_F20130311);
%% Crest Factor  F20130311
CF1_F20130311=max1_F20130311/rms1_F20130311;
CF2_F20130311=max2_F20130311/rms2_F20130311;
CF3_F20130311=max3_F20130311/rms3_F20130311;
CF4_F20130311=max4_F20130311/rms4_F20130311;
CF_ort_F20130311=(CF1_F20130311+CF2_F20130311+CF3_F20130311+CF4_F20130311)/4;
 
CF_mod1_F20130311=max_mod1_F20130311/rms_mod1_F20130311;
CF_mod2_F20130311=max_mod2_F20130311/rms_mod2_F20130311;
CF_mod3_F20130311=max_mod3_F20130311/rms_mod3_F20130311;
CF_mod4_F20130311=max_mod4_F20130311/rms_mod4_F20130311;
CF_modort_F20130311=(CF_mod1_F20130311+CF_mod2_F20130311+CF_mod3_F20130311+CF_mod4_F20130311)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20130612
w_s_F20130612=table(w_sm_F20130612);
%% 
ww1_F20130612=(w_s_F20130612.w_sm_F20130612{1,1});
ww2_F20130612=(w_s_F20130612.w_sm_F20130612{1,2});
ww3_F20130612=(w_s_F20130612.w_sm_F20130612{1,3});
ww4_F20130612=(w_s_F20130612.w_sm_F20130612{1,4});
%%
SI1_F20130612=geomean(ww1_F20130612)/mean(ww1_F20130612);
SI2_F20130612=geomean(ww2_F20130612)/mean(ww2_F20130612);
SI3_F20130612=geomean(ww3_F20130612)/mean(ww3_F20130612);
SI4_F20130612=geomean(ww4_F20130612)/mean(ww4_F20130612);
%% smoothness index squared modulus  F20130612
w_modu_F20130612=table(w_mod_F20130612);
%%
ww_mod1_F20130612=(w_modu_F20130612.w_mod_F20130612{1,1});
ww_mod2_F20130612=(w_modu_F20130612.w_mod_F20130612{1,2});
ww_mod3_F20130612=(w_modu_F20130612.w_mod_F20130612{1,3});
ww_mod4_F20130612=(w_modu_F20130612.w_mod_F20130612{1,4});
%%
SI_mod1_F20130612=geomean(ww_mod1_F20130612)/mean(ww_mod1_F20130612);
SI_mod2_F20130612=geomean(ww_mod2_F20130612)/mean(ww_mod2_F20130612);
SI_mod3_F20130612=geomean(ww_mod3_F20130612)/mean(ww_mod3_F20130612);
SI_mod4_F20130612=geomean(ww_mod4_F20130612)/mean(ww_mod4_F20130612);
%% smoothness index energy spectrum  F20130612
w_s_F20130612=table(w_spec_F20130612);
%%
ww_rat1_F20130612=abs(w_s_F20130612.w_spec_F20130612{1,1});
ww_rat2_F20130612=abs(w_s_F20130612.w_spec_F20130612{1,2});
ww_rat3_F20130612=abs(w_s_F20130612.w_spec_F20130612{1,3});
ww_rat4_F20130612=abs(w_s_F20130612.w_spec_F20130612{1,4});
%%
new1_F20130612=abs(ww1_F20130612.*ww_rat1_F20130612);
new2_F20130612=abs(ww2_F20130612.*ww_rat2_F20130612);
new3_F20130612=abs(ww3_F20130612.*ww_rat3_F20130612);
new4_F20130612=abs(ww4_F20130612.*ww_rat4_F20130612);
%%
SI_rat1_F20130612=geomean(new1_F20130612)/mean(new1_F20130612);
SI_rat2_F20130612=geomean(new2_F20130612)/mean(new2_F20130612);
SI_rat3_F20130612=geomean(new3_F20130612)/mean(new3_F20130612);
SI_rat4_F20130612=geomean(new4_F20130612)/mean(new4_F20130612);
%% Max  F20130612
max1_F20130612=max(ww1_F20130612);
max2_F20130612=max(ww2_F20130612);
max3_F20130612=max(ww3_F20130612);
max4_F20130612=max(ww4_F20130612);
 
max_mod1_F20130612=max(ww_mod1_F20130612);
max_mod2_F20130612=max(ww_mod2_F20130612);
max_mod3_F20130612=max(ww_mod3_F20130612);
max_mod4_F20130612=max(ww_mod4_F20130612);
%% RMS  F20130612
rms1_F20130612=rms(ww1_F20130612);
rms2_F20130612=rms(ww2_F20130612);
rms3_F20130612=rms(ww3_F20130612);
rms4_F20130612=rms(ww4_F20130612);
 
rms_mod1_F20130612=rms(ww_mod1_F20130612);
rms_mod2_F20130612=rms(ww_mod2_F20130612);
rms_mod3_F20130612=rms(ww_mod3_F20130612);
rms_mod4_F20130612=rms(ww_mod4_F20130612);
%% Crest Factor  F20130612
CF1_F20130612=max1_F20130612/rms1_F20130612;
CF2_F20130612=max2_F20130612/rms2_F20130612;
CF3_F20130612=max3_F20130612/rms3_F20130612;
CF4_F20130612=max4_F20130612/rms4_F20130612;
CF_ort_F20130612=(CF1_F20130612+CF2_F20130612+CF3_F20130612+CF4_F20130612)/4;
 
CF_mod1_F20130612=max_mod1_F20130612/rms_mod1_F20130612;
CF_mod2_F20130612=max_mod2_F20130612/rms_mod2_F20130612;
CF_mod3_F20130612=max_mod3_F20130612/rms_mod3_F20130612;
CF_mod4_F20130612=max_mod4_F20130612/rms_mod4_F20130612;
CF_modort_F20130612=(CF_mod1_F20130612+CF_mod2_F20130612+CF_mod3_F20130612+CF_mod4_F20130612)/4;
%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pulverizer E
f_read_E20110614 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20110614_B.txt');
f_read_E20110909 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20110909_B.txt');
f_read_E20110914 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20110914_B.txt');
f_read_E20111213 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20111213_B.txt');
f_read_E20111228 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20111228_B.txt');
f_read_E20120105 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120105_B.txt');
f_read_E20120118 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120118_B.txt');
f_read_E20120131 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120131_B.txt');
f_read_E20120306 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120306_B.txt');
f_read_E20120518 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120518_B.txt');
f_read_E20120530 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120530_B.txt');
f_read_E20120621 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120621_B.txt');
f_read_E20120712 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120712_B.txt');
f_read_E20120713 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120713_B.txt');
f_read_E20120731 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120731_B.txt');
f_read_E20120924 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120924_B.txt');
f_read_E20120926 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20120926_B.txt');
f_read_E20130118 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20130118_B.txt');
f_read_E20130311 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20130311_B.txt');
f_read_E20130612 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20130612_B.txt');
f_read_E20130731 = load('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_Acc_Body_CASE_1_20130731_B.txt');


f_E20110614=transpose(f_read_E20110614);
f_E20110909=transpose(f_read_E20110909);
f_E20110914=transpose(f_read_E20110914);
f_E20111213=transpose(f_read_E20111213);
f_E20111228=transpose(f_read_E20111228);
f_E20120105=transpose(f_read_E20120105);
f_E20120118=transpose(f_read_E20120118);
f_E20120131=transpose(f_read_E20120131);
f_E20120306=transpose(f_read_E20120306);
f_E20120518=transpose(f_read_E20120518);
f_E20120530=transpose(f_read_E20120530);
f_E20120621=transpose(f_read_E20120621);
f_E20120712=transpose(f_read_E20120712);
f_E20120713=transpose(f_read_E20120713);
f_E20120731=transpose(f_read_E20120731);
f_E20120924=transpose(f_read_E20120924);
f_E20120926=transpose(f_read_E20120926);
f_E20130118=transpose(f_read_E20130118);
f_E20130311=transpose(f_read_E20130311);
f_E20130612=transpose(f_read_E20130612);
f_E20130731=transpose(f_read_E20130731);

%% analysis 
[w_E20110614,w_mod_E20110614,w_sm_E20110614,w_spec_E20110614] = analysisforind(f_E20110614, J, alpha, tau);
[w_E20110909,w_mod_E20110909,w_sm_E20110909,w_spec_E20110909] = analysisforind(f_E20110909, J, alpha, tau);
[w_E20110914,w_mod_E20110914,w_sm_E20110914,w_spec_E20110914] = analysisforind(f_E20110914, J, alpha, tau);
[w_E20111213,w_mod_E20111213,w_sm_E20111213,w_spec_E20111213] = analysisforind(f_E20111213, J, alpha, tau);
[w_E20111228,w_mod_E20111228,w_sm_E20111228,w_spec_E20111228] = analysisforind(f_E20111228, J, alpha, tau);
[w_E20120105,w_mod_E20120105,w_sm_E20120105,w_spec_E20120105] = analysisforind(f_E20120105, J, alpha, tau);
[w_E20120118,w_mod_E20120118,w_sm_E20120118,w_spec_E20120118] = analysisforind(f_E20120118, J, alpha, tau);
[w_E20120131,w_mod_E20120131,w_sm_E20120131,w_spec_E20120131] = analysisforind(f_E20120131, J, alpha, tau);
[w_E20120306,w_mod_E20120306,w_sm_E20120306,w_spec_E20120306] = analysisforind(f_E20120306, J, alpha, tau);
[w_E20120518,w_mod_E20120518,w_sm_E20120518,w_spec_E20120518] = analysisforind(f_E20120518, J, alpha, tau);
[w_E20120530,w_mod_E20120530,w_sm_E20120530,w_spec_E20120530] = analysisforind(f_E20120530, J, alpha, tau);
[w_E20120621,w_mod_E20120621,w_sm_E20120621,w_spec_E20120621] = analysisforind(f_E20120621, J, alpha, tau);
[w_E20120712,w_mod_E20120712,w_sm_E20120712,w_spec_E20120712] = analysisforind(f_E20120712, J, alpha, tau);
[w_E20120713,w_mod_E20120713,w_sm_E20120713,w_spec_E20120713] = analysisforind(f_E20120713, J, alpha, tau);
[w_E20120731,w_mod_E20120731,w_sm_E20120731,w_spec_E20120731] = analysisforind(f_E20120731, J, alpha, tau);
[w_E20120924,w_mod_E20120924,w_sm_E20120924,w_spec_E20120924] = analysisforind(f_E20120924, J, alpha, tau);
[w_E20120926,w_mod_E20120926,w_sm_E20120926,w_spec_E20120926] = analysisforind(f_E20120926, J, alpha, tau);
[w_E20130118,w_mod_E20130118,w_sm_E20130118,w_spec_E20130118] = analysisforind(f_E20130118, J, alpha, tau);
[w_E20130311,w_mod_E20130311,w_sm_E20130311,w_spec_E20130311] = analysisforind(f_E20130311, J, alpha, tau);
[w_E20130612,w_mod_E20130612,w_sm_E20130612,w_spec_E20130612] = analysisforind(f_E20130612, J, alpha, tau);
[w_E20130731,w_mod_E20130731,w_sm_E20130731,w_spec_E20130731] = analysisforind(f_E20130731, J, alpha, tau);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  E20010614
w_s_E20110614=table(w_sm_E20110614);
%% 
ww1_E20110614=(w_s_E20110614.w_sm_E20110614{1,1});
ww2_E20110614=(w_s_E20110614.w_sm_E20110614{1,2});
ww3_E20110614=(w_s_E20110614.w_sm_E20110614{1,3});
ww4_E20110614=(w_s_E20110614.w_sm_E20110614{1,4});
%%
SI1_E20110614=geomean(ww1_E20110614)/mean(ww1_E20110614);
SI2_E20110614=geomean(ww2_E20110614)/mean(ww2_E20110614);
SI3_E20110614=geomean(ww3_E20110614)/mean(ww3_E20110614);
SI4_E20110614=geomean(ww4_E20110614)/mean(ww4_E20110614);
%% smoothness index squared modulus  E20110614
w_modu_E20110614=table(w_mod_E20110614);
%%
ww_mod1_E20110614=(w_modu_E20110614.w_mod_E20110614{1,1});
ww_mod2_E20110614=(w_modu_E20110614.w_mod_E20110614{1,2});
ww_mod3_E20110614=(w_modu_E20110614.w_mod_E20110614{1,3});
ww_mod4_E20110614=(w_modu_E20110614.w_mod_E20110614{1,4});
%%
SI_mod1_E20110614=geomean(ww_mod1_E20110614)/mean(ww_mod1_E20110614);
SI_mod2_E20110614=geomean(ww_mod2_E20110614)/mean(ww_mod2_E20110614);
SI_mod3_E20110614=geomean(ww_mod3_E20110614)/mean(ww_mod3_E20110614);
SI_mod4_E20110614=geomean(ww_mod4_E20110614)/mean(ww_mod4_E20110614);
%% smoothness index energy spectrum  E20110614
w_s_E20110614=table(w_spec_E20110614);
%%
ww_rat1_E20110614=abs(w_s_E20110614.w_spec_E20110614{1,1});
ww_rat2_E20110614=abs(w_s_E20110614.w_spec_E20110614{1,2});
ww_rat3_E20110614=abs(w_s_E20110614.w_spec_E20110614{1,3});
ww_rat4_E20110614=abs(w_s_E20110614.w_spec_E20110614{1,4});
%%
new1_E20110614=abs(ww1_E20110614.*ww_rat1_E20110614);
new2_E20110614=abs(ww2_E20110614.*ww_rat2_E20110614);
new3_E20110614=abs(ww3_E20110614.*ww_rat3_E20110614);
new4_E20110614=abs(ww4_E20110614.*ww_rat4_E20110614);
%%
SI_rat1_E20110614=geomean(new1_E20110614)/mean(new1_E20110614);
SI_rat2_E20110614=geomean(new2_E20110614)/mean(new2_E20110614);
SI_rat3_E20110614=geomean(new3_E20110614)/mean(new3_E20110614);
SI_rat4_E20110614=geomean(new4_E20110614)/mean(new4_E20110614);
%% Max  E20110614
max1_E20110614=max(ww1_E20110614);
max2_E20110614=max(ww2_E20110614);
max3_E20110614=max(ww3_E20110614);
max4_E20110614=max(ww4_E20110614);
 
max_mod1_E20110614=max(ww_mod1_E20110614);
max_mod2_E20110614=max(ww_mod2_E20110614);
max_mod3_E20110614=max(ww_mod3_E20110614);
max_mod4_E20110614=max(ww_mod4_E20110614);
%% RMS  E20110614
rms1_E20110614=rms(ww1_E20110614);
rms2_E20110614=rms(ww2_E20110614);
rms3_E20110614=rms(ww3_E20110614);
rms4_E20110614=rms(ww4_E20110614);
 
rms_mod1_E20110614=rms(ww_mod1_E20110614);
rms_mod2_E20110614=rms(ww_mod2_E20110614);
rms_mod3_E20110614=rms(ww_mod3_E20110614);
rms_mod4_E20110614=rms(ww_mod4_E20110614);
%% Crest Factor  E20110614
CF1_E20110614=max1_E20110614/rms1_E20110614;
CF2_E20110614=max2_E20110614/rms2_E20110614;
CF3_E20110614=max3_E20110614/rms3_E20110614;
CF4_E20110614=max4_E20110614/rms4_E20110614;
CF_ort_E20110614=(CF1_E20110614+CF2_E20110614+CF3_E20110614+CF4_E20110614)/4;
 
CF_mod1_E20110614=max_mod1_E20110614/rms_mod1_E20110614;
CF_mod2_E20110614=max_mod2_E20110614/rms_mod2_E20110614;
CF_mod3_E20110614=max_mod3_E20110614/rms_mod3_E20110614;
CF_mod4_E20110614=max_mod4_E20110614/rms_mod4_E20110614;
CF_modort_E20110614=(CF_mod1_E20110614+CF_mod2_E20110614+CF_mod3_E20110614+CF_mod4_E20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20110909=table(w_sm_E20110909);
%% 
ww1_E20110909=(w_s_E20110909.w_sm_E20110909{1,1});
ww2_E20110909=(w_s_E20110909.w_sm_E20110909{1,2});
ww3_E20110909=(w_s_E20110909.w_sm_E20110909{1,3});
ww4_E20110909=(w_s_E20110909.w_sm_E20110909{1,4});
%%
SI1_E20110909=geomean(ww1_E20110909)/mean(ww1_E20110909);
SI2_E20110909=geomean(ww2_E20110909)/mean(ww2_E20110909);
SI3_E20110909=geomean(ww3_E20110909)/mean(ww3_E20110909);
SI4_E20110909=geomean(ww4_E20110909)/mean(ww4_E20110909);
%% smoothness index squared modulus  E20110909
w_modu_E20110909=table(w_mod_E20110909);
%%
ww_mod1_E20110909=(w_modu_E20110909.w_mod_E20110909{1,1});
ww_mod2_E20110909=(w_modu_E20110909.w_mod_E20110909{1,2});
ww_mod3_E20110909=(w_modu_E20110909.w_mod_E20110909{1,3});
ww_mod4_E20110909=(w_modu_E20110909.w_mod_E20110909{1,4});
%%
SI_mod1_E20110909=geomean(ww_mod1_E20110909)/mean(ww_mod1_E20110909);
SI_mod2_E20110909=geomean(ww_mod2_E20110909)/mean(ww_mod2_E20110909);
SI_mod3_E20110909=geomean(ww_mod3_E20110909)/mean(ww_mod3_E20110909);
SI_mod4_E20110909=geomean(ww_mod4_E20110909)/mean(ww_mod4_E20110909);
%% smoothness index energy spectrum  E20110909
w_s_E20110909=table(w_spec_E20110909);
%%
ww_rat1_E20110909=abs(w_s_E20110909.w_spec_E20110909{1,1});
ww_rat2_E20110909=abs(w_s_E20110909.w_spec_E20110909{1,2});
ww_rat3_E20110909=abs(w_s_E20110909.w_spec_E20110909{1,3});
ww_rat4_E20110909=abs(w_s_E20110909.w_spec_E20110909{1,4});
%%
new1_E20110909=abs(ww1_E20110909.*ww_rat1_E20110909);
new2_E20110909=abs(ww2_E20110909.*ww_rat2_E20110909);
new3_E20110909=abs(ww3_E20110909.*ww_rat3_E20110909);
new4_E20110909=abs(ww4_E20110909.*ww_rat4_E20110909);
%%
SI_rat1_E20110909=geomean(new1_E20110909)/mean(new1_E20110909);
SI_rat2_E20110909=geomean(new2_E20110909)/mean(new2_E20110909);
SI_rat3_E20110909=geomean(new3_E20110909)/mean(new3_E20110909);
SI_rat4_E20110909=geomean(new4_E20110909)/mean(new4_E20110909);
%% Max  E20110909
max1_E20110909=max(ww1_E20110909);
max2_E20110909=max(ww2_E20110909);
max3_E20110909=max(ww3_E20110909);
max4_E20110909=max(ww4_E20110909);
 
max_mod1_E20110909=max(ww_mod1_E20110909);
max_mod2_E20110909=max(ww_mod2_E20110909);
max_mod3_E20110909=max(ww_mod3_E20110909);
max_mod4_E20110909=max(ww_mod4_E20110909);
%% RMS  E20110909
rms1_E20110909=rms(ww1_E20110909);
rms2_E20110909=rms(ww2_E20110909);
rms3_E20110909=rms(ww3_E20110909);
rms4_E20110909=rms(ww4_E20110909);
 
rms_mod1_E20110909=rms(ww_mod1_E20110909);
rms_mod2_E20110909=rms(ww_mod2_E20110909);
rms_mod3_E20110909=rms(ww_mod3_E20110909);
rms_mod4_E20110909=rms(ww_mod4_E20110909);
%% Crest Factor  E20110909
CF1_E20110909=max1_E20110909/rms1_E20110909;
CF2_E20110909=max2_E20110909/rms2_E20110909;
CF3_E20110909=max3_E20110909/rms3_E20110909;
CF4_E20110909=max4_E20110909/rms4_E20110909;
CF_ort_E20110909=(CF1_E20110909+CF2_E20110909+CF3_E20110909+CF4_E20110909)/4;
 
CF_mod1_E20110909=max_mod1_E20110909/rms_mod1_E20110909;
CF_mod2_E20110909=max_mod2_E20110909/rms_mod2_E20110909;
CF_mod3_E20110909=max_mod3_E20110909/rms_mod3_E20110909;
CF_mod4_E20110909=max_mod4_E20110909/rms_mod4_E20110909;
CF_modort_E20110909=(CF_mod1_E20110909+CF_mod2_E20110909+CF_mod3_E20110909+CF_mod4_E20110909)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20110914=table(w_sm_E20110914);
%% 
ww1_E20110914=(w_s_E20110914.w_sm_E20110914{1,1});
ww2_E20110914=(w_s_E20110914.w_sm_E20110914{1,2});
ww3_E20110914=(w_s_E20110914.w_sm_E20110914{1,3});
ww4_E20110914=(w_s_E20110914.w_sm_E20110914{1,4});
%%
SI1_E20110914=geomean(ww1_E20110914)/mean(ww1_E20110914);
SI2_E20110914=geomean(ww2_E20110914)/mean(ww2_E20110914);
SI3_E20110914=geomean(ww3_E20110914)/mean(ww3_E20110914);
SI4_E20110914=geomean(ww4_E20110914)/mean(ww4_E20110914);
%% smoothness index squared modulus  E20110914
w_modu_E20110914=table(w_mod_E20110914);
%%
ww_mod1_E20110914=(w_modu_E20110914.w_mod_E20110914{1,1});
ww_mod2_E20110914=(w_modu_E20110914.w_mod_E20110914{1,2});
ww_mod3_E20110914=(w_modu_E20110914.w_mod_E20110914{1,3});
ww_mod4_E20110914=(w_modu_E20110914.w_mod_E20110914{1,4});
%%
SI_mod1_E20110914=geomean(ww_mod1_E20110914)/mean(ww_mod1_E20110914);
SI_mod2_E20110914=geomean(ww_mod2_E20110914)/mean(ww_mod2_E20110914);
SI_mod3_E20110914=geomean(ww_mod3_E20110914)/mean(ww_mod3_E20110914);
SI_mod4_E20110914=geomean(ww_mod4_E20110914)/mean(ww_mod4_E20110914);
%% smoothness index energy spectrum  E20110914
w_s_E20110914=table(w_spec_E20110914);
%%
ww_rat1_E20110914=abs(w_s_E20110914.w_spec_E20110914{1,1});
ww_rat2_E20110914=abs(w_s_E20110914.w_spec_E20110914{1,2});
ww_rat3_E20110914=abs(w_s_E20110914.w_spec_E20110914{1,3});
ww_rat4_E20110914=abs(w_s_E20110914.w_spec_E20110914{1,4});
%%
new1_E20110914=abs(ww1_E20110914.*ww_rat1_E20110914);
new2_E20110914=abs(ww2_E20110914.*ww_rat2_E20110914);
new3_E20110914=abs(ww3_E20110914.*ww_rat3_E20110914);
new4_E20110914=abs(ww4_E20110914.*ww_rat4_E20110914);
%%
SI_rat1_E20110914=geomean(new1_E20110914)/mean(new1_E20110914);
SI_rat2_E20110914=geomean(new2_E20110914)/mean(new2_E20110914);
SI_rat3_E20110914=geomean(new3_E20110914)/mean(new3_E20110914);
SI_rat4_E20110914=geomean(new4_E20110914)/mean(new4_E20110914);
%% Max  E20110914
max1_E20110914=max(ww1_E20110914);
max2_E20110914=max(ww2_E20110914);
max3_E20110914=max(ww3_E20110914);
max4_E20110914=max(ww4_E20110914);
 
max_mod1_E20110914=max(ww_mod1_E20110914);
max_mod2_E20110914=max(ww_mod2_E20110914);
max_mod3_E20110914=max(ww_mod3_E20110914);
max_mod4_E20110914=max(ww_mod4_E20110914);
%% RMS  E20110914
rms1_E20110914=rms(ww1_E20110914);
rms2_E20110914=rms(ww2_E20110914);
rms3_E20110914=rms(ww3_E20110914);
rms4_E20110914=rms(ww4_E20110914);
 
rms_mod1_E20110914=rms(ww_mod1_E20110914);
rms_mod2_E20110914=rms(ww_mod2_E20110914);
rms_mod3_E20110914=rms(ww_mod3_E20110914);
rms_mod4_E20110914=rms(ww_mod4_E20110914);
%% Crest Factor  E20110914
CF1_E20110914=max1_E20110914/rms1_E20110914;
CF2_E20110914=max2_E20110914/rms2_E20110914;
CF3_E20110914=max3_E20110914/rms3_E20110914;
CF4_E20110914=max4_E20110914/rms4_E20110914;
CF_ort_E20110914=(CF1_E20110914+CF2_E20110914+CF3_E20110914+CF4_E20110914)/4;
 
CF_mod1_E20110914=max_mod1_E20110914/rms_mod1_E20110914;
CF_mod2_E20110914=max_mod2_E20110914/rms_mod2_E20110914;
CF_mod3_E20110914=max_mod3_E20110914/rms_mod3_E20110914;
CF_mod4_E20110914=max_mod4_E20110914/rms_mod4_E20110914;
CF_modort_E20110914=(CF_mod1_E20110914+CF_mod2_E20110914+CF_mod3_E20110914+CF_mod4_E20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20111213=table(w_sm_E20111213);
%% 
ww1_E20111213=(w_s_E20111213.w_sm_E20111213{1,1});
ww2_E20111213=(w_s_E20111213.w_sm_E20111213{1,2});
ww3_E20111213=(w_s_E20111213.w_sm_E20111213{1,3});
ww4_E20111213=(w_s_E20111213.w_sm_E20111213{1,4});
%%
SI1_E20111213=geomean(ww1_E20111213)/mean(ww1_E20111213);
SI2_E20111213=geomean(ww2_E20111213)/mean(ww2_E20111213);
SI3_E20111213=geomean(ww3_E20111213)/mean(ww3_E20111213);
SI4_E20111213=geomean(ww4_E20111213)/mean(ww4_E20111213);
%% smoothness index squared modulus  E20111213
w_modu_E20111213=table(w_mod_E20111213);
%%
ww_mod1_E20111213=(w_modu_E20111213.w_mod_E20111213{1,1});
ww_mod2_E20111213=(w_modu_E20111213.w_mod_E20111213{1,2});
ww_mod3_E20111213=(w_modu_E20111213.w_mod_E20111213{1,3});
ww_mod4_E20111213=(w_modu_E20111213.w_mod_E20111213{1,4});
%%
SI_mod1_E20111213=geomean(ww_mod1_E20111213)/mean(ww_mod1_E20111213);
SI_mod2_E20111213=geomean(ww_mod2_E20111213)/mean(ww_mod2_E20111213);
SI_mod3_E20111213=geomean(ww_mod3_E20111213)/mean(ww_mod3_E20111213);
SI_mod4_E20111213=geomean(ww_mod4_E20111213)/mean(ww_mod4_E20111213);
%% smoothness index energy spectrum  E20111213
w_s_E20111213=table(w_spec_E20111213);
%%
ww_rat1_E20111213=abs(w_s_E20111213.w_spec_E20111213{1,1});
ww_rat2_E20111213=abs(w_s_E20111213.w_spec_E20111213{1,2});
ww_rat3_E20111213=abs(w_s_E20111213.w_spec_E20111213{1,3});
ww_rat4_E20111213=abs(w_s_E20111213.w_spec_E20111213{1,4});
%%
new1_E20111213=abs(ww1_E20111213.*ww_rat1_E20111213);
new2_E20111213=abs(ww2_E20111213.*ww_rat2_E20111213);
new3_E20111213=abs(ww3_E20111213.*ww_rat3_E20111213);
new4_E20111213=abs(ww4_E20111213.*ww_rat4_E20111213);
%%
SI_rat1_E20111213=geomean(new1_E20111213)/mean(new1_E20111213);
SI_rat2_E20111213=geomean(new2_E20111213)/mean(new2_E20111213);
SI_rat3_E20111213=geomean(new3_E20111213)/mean(new3_E20111213);
SI_rat4_E20111213=geomean(new4_E20111213)/mean(new4_E20111213);
%% Max  E20111213
max1_E20111213=max(ww1_E20111213);
max2_E20111213=max(ww2_E20111213);
max3_E20111213=max(ww3_E20111213);
max4_E20111213=max(ww4_E20111213);
 
max_mod1_E20111213=max(ww_mod1_E20111213);
max_mod2_E20111213=max(ww_mod2_E20111213);
max_mod3_E20111213=max(ww_mod3_E20111213);
max_mod4_E20111213=max(ww_mod4_E20111213);
%% RMS  E20111213
rms1_E20111213=rms(ww1_E20111213);
rms2_E20111213=rms(ww2_E20111213);
rms3_E20111213=rms(ww3_E20111213);
rms4_E20111213=rms(ww4_E20111213);
 
rms_mod1_E20111213=rms(ww_mod1_E20111213);
rms_mod2_E20111213=rms(ww_mod2_E20111213);
rms_mod3_E20111213=rms(ww_mod3_E20111213);
rms_mod4_E20111213=rms(ww_mod4_E20111213);
%% Crest Factor  E20111213
CF1_E20111213=max1_E20111213/rms1_E20111213;
CF2_E20111213=max2_E20111213/rms2_E20111213;
CF3_E20111213=max3_E20111213/rms3_E20111213;
CF4_E20111213=max4_E20111213/rms4_E20111213;
CF_ort_E20111213=(CF1_E20111213+CF2_E20111213+CF3_E20111213+CF4_E20111213)/4;
 
CF_mod1_E20111213=max_mod1_E20111213/rms_mod1_E20111213;
CF_mod2_E20111213=max_mod2_E20111213/rms_mod2_E20111213;
CF_mod3_E20111213=max_mod3_E20111213/rms_mod3_E20111213;
CF_mod4_E20111213=max_mod4_E20111213/rms_mod4_E20111213;
CF_modort_E20111213=(CF_mod1_E20111213+CF_mod2_E20111213+CF_mod3_E20111213+CF_mod4_E20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20111228=table(w_sm_E20111228);
%% 
ww1_E20111228=(w_s_E20111228.w_sm_E20111228{1,1});
ww2_E20111228=(w_s_E20111228.w_sm_E20111228{1,2});
ww3_E20111228=(w_s_E20111228.w_sm_E20111228{1,3});
ww4_E20111228=(w_s_E20111228.w_sm_E20111228{1,4});
%%
SI1_E20111228=geomean(ww1_E20111228)/mean(ww1_E20111228);
SI2_E20111228=geomean(ww2_E20111228)/mean(ww2_E20111228);
SI3_E20111228=geomean(ww3_E20111228)/mean(ww3_E20111228);
SI4_E20111228=geomean(ww4_E20111228)/mean(ww4_E20111228);
%% smoothness index squared modulus  E20111228
w_modu_E20111228=table(w_mod_E20111228);
%%
ww_mod1_E20111228=(w_modu_E20111228.w_mod_E20111228{1,1});
ww_mod2_E20111228=(w_modu_E20111228.w_mod_E20111228{1,2});
ww_mod3_E20111228=(w_modu_E20111228.w_mod_E20111228{1,3});
ww_mod4_E20111228=(w_modu_E20111228.w_mod_E20111228{1,4});
%%
SI_mod1_E20111228=geomean(ww_mod1_E20111228)/mean(ww_mod1_E20111228);
SI_mod2_E20111228=geomean(ww_mod2_E20111228)/mean(ww_mod2_E20111228);
SI_mod3_E20111228=geomean(ww_mod3_E20111228)/mean(ww_mod3_E20111228);
SI_mod4_E20111228=geomean(ww_mod4_E20111228)/mean(ww_mod4_E20111228);
%% smoothness index energy spectrum  E20111228
w_s_E20111228=table(w_spec_E20111228);
%%
ww_rat1_E20111228=abs(w_s_E20111228.w_spec_E20111228{1,1});
ww_rat2_E20111228=abs(w_s_E20111228.w_spec_E20111228{1,2});
ww_rat3_E20111228=abs(w_s_E20111228.w_spec_E20111228{1,3});
ww_rat4_E20111228=abs(w_s_E20111228.w_spec_E20111228{1,4});
%%
new1_E20111228=abs(ww1_E20111228.*ww_rat1_E20111228);
new2_E20111228=abs(ww2_E20111228.*ww_rat2_E20111228);
new3_E20111228=abs(ww3_E20111228.*ww_rat3_E20111228);
new4_E20111228=abs(ww4_E20111228.*ww_rat4_E20111228);
%%
SI_rat1_E20111228=geomean(new1_E20111228)/mean(new1_E20111228);
SI_rat2_E20111228=geomean(new2_E20111228)/mean(new2_E20111228);
SI_rat3_E20111228=geomean(new3_E20111228)/mean(new3_E20111228);
SI_rat4_E20111228=geomean(new4_E20111228)/mean(new4_E20111228);
%% Max  E20111228
max1_E20111228=max(ww1_E20111228);
max2_E20111228=max(ww2_E20111228);
max3_E20111228=max(ww3_E20111228);
max4_E20111228=max(ww4_E20111228);
 
max_mod1_E20111228=max(ww_mod1_E20111228);
max_mod2_E20111228=max(ww_mod2_E20111228);
max_mod3_E20111228=max(ww_mod3_E20111228);
max_mod4_E20111228=max(ww_mod4_E20111228);
%% RMS  E20111228
rms1_E20111228=rms(ww1_E20111228);
rms2_E20111228=rms(ww2_E20111228);
rms3_E20111228=rms(ww3_E20111228);
rms4_E20111228=rms(ww4_E20111228);
 
rms_mod1_E20111228=rms(ww_mod1_E20111228);
rms_mod2_E20111228=rms(ww_mod2_E20111228);
rms_mod3_E20111228=rms(ww_mod3_E20111228);
rms_mod4_E20111228=rms(ww_mod4_E20111228);
%% Crest Factor  E20111228
CF1_E20111228=max1_E20111228/rms1_E20111228;
CF2_E20111228=max2_E20111228/rms2_E20111228;
CF3_E20111228=max3_E20111228/rms3_E20111228;
CF4_E20111228=max4_E20111228/rms4_E20111228;
CF_ort_E20111228=(CF1_E20111228+CF2_E20111228+CF3_E20111228+CF4_E20111228)/4;
 
CF_mod1_E20111228=max_mod1_E20111228/rms_mod1_E20111228;
CF_mod2_E20111228=max_mod2_E20111228/rms_mod2_E20111228;
CF_mod3_E20111228=max_mod3_E20111228/rms_mod3_E20111228;
CF_mod4_E20111228=max_mod4_E20111228/rms_mod4_E20111228;
CF_modort_E20111228=(CF_mod1_E20111228+CF_mod2_E20111228+CF_mod3_E20111228+CF_mod4_E20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120105=table(w_sm_E20120105);
%% 
ww1_E20120105=(w_s_E20120105.w_sm_E20120105{1,1});
ww2_E20120105=(w_s_E20120105.w_sm_E20120105{1,2});
ww3_E20120105=(w_s_E20120105.w_sm_E20120105{1,3});
ww4_E20120105=(w_s_E20120105.w_sm_E20120105{1,4});
%%
SI1_E20120105=geomean(ww1_E20120105)/mean(ww1_E20120105);
SI2_E20120105=geomean(ww2_E20120105)/mean(ww2_E20120105);
SI3_E20120105=geomean(ww3_E20120105)/mean(ww3_E20120105);
SI4_E20120105=geomean(ww4_E20120105)/mean(ww4_E20120105);
%% smoothness index squared modulus  E20120105
w_modu_E20120105=table(w_mod_E20120105);
%%
ww_mod1_E20120105=(w_modu_E20120105.w_mod_E20120105{1,1});
ww_mod2_E20120105=(w_modu_E20120105.w_mod_E20120105{1,2});
ww_mod3_E20120105=(w_modu_E20120105.w_mod_E20120105{1,3});
ww_mod4_E20120105=(w_modu_E20120105.w_mod_E20120105{1,4});
%%
SI_mod1_E20120105=geomean(ww_mod1_E20120105)/mean(ww_mod1_E20120105);
SI_mod2_E20120105=geomean(ww_mod2_E20120105)/mean(ww_mod2_E20120105);
SI_mod3_E20120105=geomean(ww_mod3_E20120105)/mean(ww_mod3_E20120105);
SI_mod4_E20120105=geomean(ww_mod4_E20120105)/mean(ww_mod4_E20120105);
%% smoothness index energy spectrum  E20120105
w_s_E20120105=table(w_spec_E20120105);
%%
ww_rat1_E20120105=abs(w_s_E20120105.w_spec_E20120105{1,1});
ww_rat2_E20120105=abs(w_s_E20120105.w_spec_E20120105{1,2});
ww_rat3_E20120105=abs(w_s_E20120105.w_spec_E20120105{1,3});
ww_rat4_E20120105=abs(w_s_E20120105.w_spec_E20120105{1,4});
%%
new1_E20120105=abs(ww1_E20120105.*ww_rat1_E20120105);
new2_E20120105=abs(ww2_E20120105.*ww_rat2_E20120105);
new3_E20120105=abs(ww3_E20120105.*ww_rat3_E20120105);
new4_E20120105=abs(ww4_E20120105.*ww_rat4_E20120105);
%%
SI_rat1_E20120105=geomean(new1_E20120105)/mean(new1_E20120105);
SI_rat2_E20120105=geomean(new2_E20120105)/mean(new2_E20120105);
SI_rat3_E20120105=geomean(new3_E20120105)/mean(new3_E20120105);
SI_rat4_E20120105=geomean(new4_E20120105)/mean(new4_E20120105);
%% Max  E20120105
max1_E20120105=max(ww1_E20120105);
max2_E20120105=max(ww2_E20120105);
max3_E20120105=max(ww3_E20120105);
max4_E20120105=max(ww4_E20120105);
 
max_mod1_E20120105=max(ww_mod1_E20120105);
max_mod2_E20120105=max(ww_mod2_E20120105);
max_mod3_E20120105=max(ww_mod3_E20120105);
max_mod4_E20120105=max(ww_mod4_E20120105);
%% RMS  E20120105
rms1_E20120105=rms(ww1_E20120105);
rms2_E20120105=rms(ww2_E20120105);
rms3_E20120105=rms(ww3_E20120105);
rms4_E20120105=rms(ww4_E20120105);
 
rms_mod1_E20120105=rms(ww_mod1_E20120105);
rms_mod2_E20120105=rms(ww_mod2_E20120105);
rms_mod3_E20120105=rms(ww_mod3_E20120105);
rms_mod4_E20120105=rms(ww_mod4_E20120105);
%% Crest Factor  E20120105
CF1_E20120105=max1_E20120105/rms1_E20120105;
CF2_E20120105=max2_E20120105/rms2_E20120105;
CF3_E20120105=max3_E20120105/rms3_E20120105;
CF4_E20120105=max4_E20120105/rms4_E20120105;
CF_ort_E20120105=(CF1_E20120105+CF2_E20120105+CF3_E20120105+CF4_E20120105)/4;
 
CF_mod1_E20120105=max_mod1_E20120105/rms_mod1_E20120105;
CF_mod2_E20120105=max_mod2_E20120105/rms_mod2_E20120105;
CF_mod3_E20120105=max_mod3_E20120105/rms_mod3_E20120105;
CF_mod4_E20120105=max_mod4_E20120105/rms_mod4_E20120105;
CF_modort_E20120105=(CF_mod1_E20120105+CF_mod2_E20120105+CF_mod3_E20120105+CF_mod4_E20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120118=table(w_sm_E20120118);
%% 
ww1_E20120118=(w_s_E20120118.w_sm_E20120118{1,1});
ww2_E20120118=(w_s_E20120118.w_sm_E20120118{1,2});
ww3_E20120118=(w_s_E20120118.w_sm_E20120118{1,3});
ww4_E20120118=(w_s_E20120118.w_sm_E20120118{1,4});
%%
SI1_E20120118=geomean(ww1_E20120118)/mean(ww1_E20120118);
SI2_E20120118=geomean(ww2_E20120118)/mean(ww2_E20120118);
SI3_E20120118=geomean(ww3_E20120118)/mean(ww3_E20120118);
SI4_E20120118=geomean(ww4_E20120118)/mean(ww4_E20120118);
%% smoothness index squared modulus  E20120118
w_modu_E20120118=table(w_mod_E20120118);
%%
ww_mod1_E20120118=(w_modu_E20120118.w_mod_E20120118{1,1});
ww_mod2_E20120118=(w_modu_E20120118.w_mod_E20120118{1,2});
ww_mod3_E20120118=(w_modu_E20120118.w_mod_E20120118{1,3});
ww_mod4_E20120118=(w_modu_E20120118.w_mod_E20120118{1,4});
%%
SI_mod1_E20120118=geomean(ww_mod1_E20120118)/mean(ww_mod1_E20120118);
SI_mod2_E20120118=geomean(ww_mod2_E20120118)/mean(ww_mod2_E20120118);
SI_mod3_E20120118=geomean(ww_mod3_E20120118)/mean(ww_mod3_E20120118);
SI_mod4_E20120118=geomean(ww_mod4_E20120118)/mean(ww_mod4_E20120118);
%% smoothness index energy spectrum  E20120118
w_s_E20120118=table(w_spec_E20120118);
%%
ww_rat1_E20120118=abs(w_s_E20120118.w_spec_E20120118{1,1});
ww_rat2_E20120118=abs(w_s_E20120118.w_spec_E20120118{1,2});
ww_rat3_E20120118=abs(w_s_E20120118.w_spec_E20120118{1,3});
ww_rat4_E20120118=abs(w_s_E20120118.w_spec_E20120118{1,4});
%%
new1_E20120118=abs(ww1_E20120118.*ww_rat1_E20120118);
new2_E20120118=abs(ww2_E20120118.*ww_rat2_E20120118);
new3_E20120118=abs(ww3_E20120118.*ww_rat3_E20120118);
new4_E20120118=abs(ww4_E20120118.*ww_rat4_E20120118);
%%
SI_rat1_E20120118=geomean(new1_E20120118)/mean(new1_E20120118);
SI_rat2_E20120118=geomean(new2_E20120118)/mean(new2_E20120118);
SI_rat3_E20120118=geomean(new3_E20120118)/mean(new3_E20120118);
SI_rat4_E20120118=geomean(new4_E20120118)/mean(new4_E20120118);
%% Max  E20120118
max1_E20120118=max(ww1_E20120118);
max2_E20120118=max(ww2_E20120118);
max3_E20120118=max(ww3_E20120118);
max4_E20120118=max(ww4_E20120118);
 
max_mod1_E20120118=max(ww_mod1_E20120118);
max_mod2_E20120118=max(ww_mod2_E20120118);
max_mod3_E20120118=max(ww_mod3_E20120118);
max_mod4_E20120118=max(ww_mod4_E20120118);
%% RMS  E20120118
rms1_E20120118=rms(ww1_E20120118);
rms2_E20120118=rms(ww2_E20120118);
rms3_E20120118=rms(ww3_E20120118);
rms4_E20120118=rms(ww4_E20120118);
 
rms_mod1_E20120118=rms(ww_mod1_E20120118);
rms_mod2_E20120118=rms(ww_mod2_E20120118);
rms_mod3_E20120118=rms(ww_mod3_E20120118);
rms_mod4_E20120118=rms(ww_mod4_E20120118);
%% Crest Factor  E20120118
CF1_E20120118=max1_E20120118/rms1_E20120118;
CF2_E20120118=max2_E20120118/rms2_E20120118;
CF3_E20120118=max3_E20120118/rms3_E20120118;
CF4_E20120118=max4_E20120118/rms4_E20120118;
CF_ort_E20120118=(CF1_E20120118+CF2_E20120118+CF3_E20120118+CF4_E20120118)/4;
 
CF_mod1_E20120118=max_mod1_E20120118/rms_mod1_E20120118;
CF_mod2_E20120118=max_mod2_E20120118/rms_mod2_E20120118;
CF_mod3_E20120118=max_mod3_E20120118/rms_mod3_E20120118;
CF_mod4_E20120118=max_mod4_E20120118/rms_mod4_E20120118;
CF_modort_E20120118=(CF_mod1_E20120118+CF_mod2_E20120118+CF_mod3_E20120118+CF_mod4_E20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120131=table(w_sm_E20120131);
%% 
ww1_E20120131=(w_s_E20120131.w_sm_E20120131{1,1});
ww2_E20120131=(w_s_E20120131.w_sm_E20120131{1,2});
ww3_E20120131=(w_s_E20120131.w_sm_E20120131{1,3});
ww4_E20120131=(w_s_E20120131.w_sm_E20120131{1,4});
%%
SI1_E20120131=geomean(ww1_E20120131)/mean(ww1_E20120131);
SI2_E20120131=geomean(ww2_E20120131)/mean(ww2_E20120131);
SI3_E20120131=geomean(ww3_E20120131)/mean(ww3_E20120131);
SI4_E20120131=geomean(ww4_E20120131)/mean(ww4_E20120131);
%% smoothness index squared modulus  E20120131
w_modu_E20120131=table(w_mod_E20120131);
%%
ww_mod1_E20120131=(w_modu_E20120131.w_mod_E20120131{1,1});
ww_mod2_E20120131=(w_modu_E20120131.w_mod_E20120131{1,2});
ww_mod3_E20120131=(w_modu_E20120131.w_mod_E20120131{1,3});
ww_mod4_E20120131=(w_modu_E20120131.w_mod_E20120131{1,4});
%%
SI_mod1_E20120131=geomean(ww_mod1_E20120131)/mean(ww_mod1_E20120131);
SI_mod2_E20120131=geomean(ww_mod2_E20120131)/mean(ww_mod2_E20120131);
SI_mod3_E20120131=geomean(ww_mod3_E20120131)/mean(ww_mod3_E20120131);
SI_mod4_E20120131=geomean(ww_mod4_E20120131)/mean(ww_mod4_E20120131);
%% smoothness index energy spectrum  E20120131
w_s_E20120131=table(w_spec_E20120131);
%%
ww_rat1_E20120131=abs(w_s_E20120131.w_spec_E20120131{1,1});
ww_rat2_E20120131=abs(w_s_E20120131.w_spec_E20120131{1,2});
ww_rat3_E20120131=abs(w_s_E20120131.w_spec_E20120131{1,3});
ww_rat4_E20120131=abs(w_s_E20120131.w_spec_E20120131{1,4});
%%
new1_E20120131=abs(ww1_E20120131.*ww_rat1_E20120131);
new2_E20120131=abs(ww2_E20120131.*ww_rat2_E20120131);
new3_E20120131=abs(ww3_E20120131.*ww_rat3_E20120131);
new4_E20120131=abs(ww4_E20120131.*ww_rat4_E20120131);
%%
SI_rat1_E20120131=geomean(new1_E20120131)/mean(new1_E20120131);
SI_rat2_E20120131=geomean(new2_E20120131)/mean(new2_E20120131);
SI_rat3_E20120131=geomean(new3_E20120131)/mean(new3_E20120131);
SI_rat4_E20120131=geomean(new4_E20120131)/mean(new4_E20120131);
%% Max  E20120131
max1_E20120131=max(ww1_E20120131);
max2_E20120131=max(ww2_E20120131);
max3_E20120131=max(ww3_E20120131);
max4_E20120131=max(ww4_E20120131);
 
max_mod1_E20120131=max(ww_mod1_E20120131);
max_mod2_E20120131=max(ww_mod2_E20120131);
max_mod3_E20120131=max(ww_mod3_E20120131);
max_mod4_E20120131=max(ww_mod4_E20120131);
%% RMS  E20120131
rms1_E20120131=rms(ww1_E20120131);
rms2_E20120131=rms(ww2_E20120131);
rms3_E20120131=rms(ww3_E20120131);
rms4_E20120131=rms(ww4_E20120131);
 
rms_mod1_E20120131=rms(ww_mod1_E20120131);
rms_mod2_E20120131=rms(ww_mod2_E20120131);
rms_mod3_E20120131=rms(ww_mod3_E20120131);
rms_mod4_E20120131=rms(ww_mod4_E20120131);
%% Crest Factor  E20120131
CF1_E20120131=max1_E20120131/rms1_E20120131;
CF2_E20120131=max2_E20120131/rms2_E20120131;
CF3_E20120131=max3_E20120131/rms3_E20120131;
CF4_E20120131=max4_E20120131/rms4_E20120131;
CF_ort_E20120131=(CF1_E20120131+CF2_E20120131+CF3_E20120131+CF4_E20120131)/4;
 
CF_mod1_E20120131=max_mod1_E20120131/rms_mod1_E20120131;
CF_mod2_E20120131=max_mod2_E20120131/rms_mod2_E20120131;
CF_mod3_E20120131=max_mod3_E20120131/rms_mod3_E20120131;
CF_mod4_E20120131=max_mod4_E20120131/rms_mod4_E20120131;
CF_modort_E20120131=(CF_mod1_E20120131+CF_mod2_E20120131+CF_mod3_E20120131+CF_mod4_E20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120306=table(w_sm_E20120306);
%% 
ww1_E20120306=(w_s_E20120306.w_sm_E20120306{1,1});
ww2_E20120306=(w_s_E20120306.w_sm_E20120306{1,2});
ww3_E20120306=(w_s_E20120306.w_sm_E20120306{1,3});
ww4_E20120306=(w_s_E20120306.w_sm_E20120306{1,4});
%%
SI1_E20120306=geomean(ww1_E20120306)/mean(ww1_E20120306);
SI2_E20120306=geomean(ww2_E20120306)/mean(ww2_E20120306);
SI3_E20120306=geomean(ww3_E20120306)/mean(ww3_E20120306);
SI4_E20120306=geomean(ww4_E20120306)/mean(ww4_E20120306);
%% smoothness index squared modulus  E20120306
w_modu_E20120306=table(w_mod_E20120306);
%%
ww_mod1_E20120306=(w_modu_E20120306.w_mod_E20120306{1,1});
ww_mod2_E20120306=(w_modu_E20120306.w_mod_E20120306{1,2});
ww_mod3_E20120306=(w_modu_E20120306.w_mod_E20120306{1,3});
ww_mod4_E20120306=(w_modu_E20120306.w_mod_E20120306{1,4});
%%
SI_mod1_E20120306=geomean(ww_mod1_E20120306)/mean(ww_mod1_E20120306);
SI_mod2_E20120306=geomean(ww_mod2_E20120306)/mean(ww_mod2_E20120306);
SI_mod3_E20120306=geomean(ww_mod3_E20120306)/mean(ww_mod3_E20120306);
SI_mod4_E20120306=geomean(ww_mod4_E20120306)/mean(ww_mod4_E20120306);
%% smoothness index energy spectrum  E20120306
w_s_E20120306=table(w_spec_E20120306);
%%
ww_rat1_E20120306=abs(w_s_E20120306.w_spec_E20120306{1,1});
ww_rat2_E20120306=abs(w_s_E20120306.w_spec_E20120306{1,2});
ww_rat3_E20120306=abs(w_s_E20120306.w_spec_E20120306{1,3});
ww_rat4_E20120306=abs(w_s_E20120306.w_spec_E20120306{1,4});
%%
new1_E20120306=abs(ww1_E20120306.*ww_rat1_E20120306);
new2_E20120306=abs(ww2_E20120306.*ww_rat2_E20120306);
new3_E20120306=abs(ww3_E20120306.*ww_rat3_E20120306);
new4_E20120306=abs(ww4_E20120306.*ww_rat4_E20120306);
%%
SI_rat1_E20120306=geomean(new1_E20120306)/mean(new1_E20120306);
SI_rat2_E20120306=geomean(new2_E20120306)/mean(new2_E20120306);
SI_rat3_E20120306=geomean(new3_E20120306)/mean(new3_E20120306);
SI_rat4_E20120306=geomean(new4_E20120306)/mean(new4_E20120306);
%% Max  E20120306
max1_E20120306=max(ww1_E20120306);
max2_E20120306=max(ww2_E20120306);
max3_E20120306=max(ww3_E20120306);
max4_E20120306=max(ww4_E20120306);
 
max_mod1_E20120306=max(ww_mod1_E20120306);
max_mod2_E20120306=max(ww_mod2_E20120306);
max_mod3_E20120306=max(ww_mod3_E20120306);
max_mod4_E20120306=max(ww_mod4_E20120306);
%% RMS  E20120306
rms1_E20120306=rms(ww1_E20120306);
rms2_E20120306=rms(ww2_E20120306);
rms3_E20120306=rms(ww3_E20120306);
rms4_E20120306=rms(ww4_E20120306);
 
rms_mod1_E20120306=rms(ww_mod1_E20120306);
rms_mod2_E20120306=rms(ww_mod2_E20120306);
rms_mod3_E20120306=rms(ww_mod3_E20120306);
rms_mod4_E20120306=rms(ww_mod4_E20120306);
%% Crest Factor  E20120306
CF1_E20120306=max1_E20120306/rms1_E20120306;
CF2_E20120306=max2_E20120306/rms2_E20120306;
CF3_E20120306=max3_E20120306/rms3_E20120306;
CF4_E20120306=max4_E20120306/rms4_E20120306;
CF_ort_E20120306=(CF1_E20120306+CF2_E20120306+CF3_E20120306+CF4_E20120306)/4;
 
CF_mod1_E20120306=max_mod1_E20120306/rms_mod1_E20120306;
CF_mod2_E20120306=max_mod2_E20120306/rms_mod2_E20120306;
CF_mod3_E20120306=max_mod3_E20120306/rms_mod3_E20120306;
CF_mod4_E20120306=max_mod4_E20120306/rms_mod4_E20120306;
CF_modort_E20120306=(CF_mod1_E20120306+CF_mod2_E20120306+CF_mod3_E20120306+CF_mod4_E20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120518=table(w_sm_E20120518);
%% 
ww1_E20120518=(w_s_E20120518.w_sm_E20120518{1,1});
ww2_E20120518=(w_s_E20120518.w_sm_E20120518{1,2});
ww3_E20120518=(w_s_E20120518.w_sm_E20120518{1,3});
ww4_E20120518=(w_s_E20120518.w_sm_E20120518{1,4});
%%
SI1_E20120518=geomean(ww1_E20120518)/mean(ww1_E20120518);
SI2_E20120518=geomean(ww2_E20120518)/mean(ww2_E20120518);
SI3_E20120518=geomean(ww3_E20120518)/mean(ww3_E20120518);
SI4_E20120518=geomean(ww4_E20120518)/mean(ww4_E20120518);
%% smoothness index squared modulus  E20120518
w_modu_E20120518=table(w_mod_E20120518);
%%
ww_mod1_E20120518=(w_modu_E20120518.w_mod_E20120518{1,1});
ww_mod2_E20120518=(w_modu_E20120518.w_mod_E20120518{1,2});
ww_mod3_E20120518=(w_modu_E20120518.w_mod_E20120518{1,3});
ww_mod4_E20120518=(w_modu_E20120518.w_mod_E20120518{1,4});
%%
SI_mod1_E20120518=geomean(ww_mod1_E20120518)/mean(ww_mod1_E20120518);
SI_mod2_E20120518=geomean(ww_mod2_E20120518)/mean(ww_mod2_E20120518);
SI_mod3_E20120518=geomean(ww_mod3_E20120518)/mean(ww_mod3_E20120518);
SI_mod4_E20120518=geomean(ww_mod4_E20120518)/mean(ww_mod4_E20120518);
%% smoothness index energy spectrum  E20120518
w_s_E20120518=table(w_spec_E20120518);
%%
ww_rat1_E20120518=abs(w_s_E20120518.w_spec_E20120518{1,1});
ww_rat2_E20120518=abs(w_s_E20120518.w_spec_E20120518{1,2});
ww_rat3_E20120518=abs(w_s_E20120518.w_spec_E20120518{1,3});
ww_rat4_E20120518=abs(w_s_E20120518.w_spec_E20120518{1,4});
%%
new1_E20120518=abs(ww1_E20120518.*ww_rat1_E20120518);
new2_E20120518=abs(ww2_E20120518.*ww_rat2_E20120518);
new3_E20120518=abs(ww3_E20120518.*ww_rat3_E20120518);
new4_E20120518=abs(ww4_E20120518.*ww_rat4_E20120518);
%%
SI_rat1_E20120518=geomean(new1_E20120518)/mean(new1_E20120518);
SI_rat2_E20120518=geomean(new2_E20120518)/mean(new2_E20120518);
SI_rat3_E20120518=geomean(new3_E20120518)/mean(new3_E20120518);
SI_rat4_E20120518=geomean(new4_E20120518)/mean(new4_E20120518);
%% Max  E20120518
max1_E20120518=max(ww1_E20120518);
max2_E20120518=max(ww2_E20120518);
max3_E20120518=max(ww3_E20120518);
max4_E20120518=max(ww4_E20120518);
 
max_mod1_E20120518=max(ww_mod1_E20120518);
max_mod2_E20120518=max(ww_mod2_E20120518);
max_mod3_E20120518=max(ww_mod3_E20120518);
max_mod4_E20120518=max(ww_mod4_E20120518);
%% RMS  E20120518
rms1_E20120518=rms(ww1_E20120518);
rms2_E20120518=rms(ww2_E20120518);
rms3_E20120518=rms(ww3_E20120518);
rms4_E20120518=rms(ww4_E20120518);
 
rms_mod1_E20120518=rms(ww_mod1_E20120518);
rms_mod2_E20120518=rms(ww_mod2_E20120518);
rms_mod3_E20120518=rms(ww_mod3_E20120518);
rms_mod4_E20120518=rms(ww_mod4_E20120518);
%% Crest Factor  E20120518
CF1_E20120518=max1_E20120518/rms1_E20120518;
CF2_E20120518=max2_E20120518/rms2_E20120518;
CF3_E20120518=max3_E20120518/rms3_E20120518;
CF4_E20120518=max4_E20120518/rms4_E20120518;
CF_ort_E20120518=(CF1_E20120518+CF2_E20120518+CF3_E20120518+CF4_E20120518)/4;
 
CF_mod1_E20120518=max_mod1_E20120518/rms_mod1_E20120518;
CF_mod2_E20120518=max_mod2_E20120518/rms_mod2_E20120518;
CF_mod3_E20120518=max_mod3_E20120518/rms_mod3_E20120518;
CF_mod4_E20120518=max_mod4_E20120518/rms_mod4_E20120518;
CF_modort_E20120518=(CF_mod1_E20120518+CF_mod2_E20120518+CF_mod3_E20120518+CF_mod4_E20120518)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120530=table(w_sm_E20120530);
%% 
ww1_E20120530=(w_s_E20120530.w_sm_E20120530{1,1});
ww2_E20120530=(w_s_E20120530.w_sm_E20120530{1,2});
ww3_E20120530=(w_s_E20120530.w_sm_E20120530{1,3});
ww4_E20120530=(w_s_E20120530.w_sm_E20120530{1,4});
%%
SI1_E20120530=geomean(ww1_E20120530)/mean(ww1_E20120530);
SI2_E20120530=geomean(ww2_E20120530)/mean(ww2_E20120530);
SI3_E20120530=geomean(ww3_E20120530)/mean(ww3_E20120530);
SI4_E20120530=geomean(ww4_E20120530)/mean(ww4_E20120530);
%% smoothness index squared modulus  E20120530
w_modu_E20120530=table(w_mod_E20120530);
%%
ww_mod1_E20120530=(w_modu_E20120530.w_mod_E20120530{1,1});
ww_mod2_E20120530=(w_modu_E20120530.w_mod_E20120530{1,2});
ww_mod3_E20120530=(w_modu_E20120530.w_mod_E20120530{1,3});
ww_mod4_E20120530=(w_modu_E20120530.w_mod_E20120530{1,4});
%%
SI_mod1_E20120530=geomean(ww_mod1_E20120530)/mean(ww_mod1_E20120530);
SI_mod2_E20120530=geomean(ww_mod2_E20120530)/mean(ww_mod2_E20120530);
SI_mod3_E20120530=geomean(ww_mod3_E20120530)/mean(ww_mod3_E20120530);
SI_mod4_E20120530=geomean(ww_mod4_E20120530)/mean(ww_mod4_E20120530);
%% smoothness index energy spectrum  E20120530
w_s_E20120530=table(w_spec_E20120530);
%%
ww_rat1_E20120530=abs(w_s_E20120530.w_spec_E20120530{1,1});
ww_rat2_E20120530=abs(w_s_E20120530.w_spec_E20120530{1,2});
ww_rat3_E20120530=abs(w_s_E20120530.w_spec_E20120530{1,3});
ww_rat4_E20120530=abs(w_s_E20120530.w_spec_E20120530{1,4});
%%
new1_E20120530=abs(ww1_E20120530.*ww_rat1_E20120530);
new2_E20120530=abs(ww2_E20120530.*ww_rat2_E20120530);
new3_E20120530=abs(ww3_E20120530.*ww_rat3_E20120530);
new4_E20120530=abs(ww4_E20120530.*ww_rat4_E20120530);
%%
SI_rat1_E20120530=geomean(new1_E20120530)/mean(new1_E20120530);
SI_rat2_E20120530=geomean(new2_E20120530)/mean(new2_E20120530);
SI_rat3_E20120530=geomean(new3_E20120530)/mean(new3_E20120530);
SI_rat4_E20120530=geomean(new4_E20120530)/mean(new4_E20120530);
%% Max  E20120530
max1_E20120530=max(ww1_E20120530);
max2_E20120530=max(ww2_E20120530);
max3_E20120530=max(ww3_E20120530);
max4_E20120530=max(ww4_E20120530);
 
max_mod1_E20120530=max(ww_mod1_E20120530);
max_mod2_E20120530=max(ww_mod2_E20120530);
max_mod3_E20120530=max(ww_mod3_E20120530);
max_mod4_E20120530=max(ww_mod4_E20120530);
%% RMS  E20120530
rms1_E20120530=rms(ww1_E20120530);
rms2_E20120530=rms(ww2_E20120530);
rms3_E20120530=rms(ww3_E20120530);
rms4_E20120530=rms(ww4_E20120530);
 
rms_mod1_E20120530=rms(ww_mod1_E20120530);
rms_mod2_E20120530=rms(ww_mod2_E20120530);
rms_mod3_E20120530=rms(ww_mod3_E20120530);
rms_mod4_E20120530=rms(ww_mod4_E20120530);
%% Crest Factor  E20120530
CF1_E20120530=max1_E20120530/rms1_E20120530;
CF2_E20120530=max2_E20120530/rms2_E20120530;
CF3_E20120530=max3_E20120530/rms3_E20120530;
CF4_E20120530=max4_E20120530/rms4_E20120530;
CF_ort_E20120530=(CF1_E20120530+CF2_E20120530+CF3_E20120530+CF4_E20120530)/4;
 
CF_mod1_E20120530=max_mod1_E20120530/rms_mod1_E20120530;
CF_mod2_E20120530=max_mod2_E20120530/rms_mod2_E20120530;
CF_mod3_E20120530=max_mod3_E20120530/rms_mod3_E20120530;
CF_mod4_E20120530=max_mod4_E20120530/rms_mod4_E20120530;
CF_modort_E20120530=(CF_mod1_E20120530+CF_mod2_E20120530+CF_mod3_E20120530+CF_mod4_E20120530)/4;
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120621=table(w_sm_E20120621);
%% 
ww1_E20120621=(w_s_E20120621.w_sm_E20120621{1,1});
ww2_E20120621=(w_s_E20120621.w_sm_E20120621{1,2});
ww3_E20120621=(w_s_E20120621.w_sm_E20120621{1,3});
ww4_E20120621=(w_s_E20120621.w_sm_E20120621{1,4});
%%
SI1_E20120621=geomean(ww1_E20120621)/mean(ww1_E20120621);
SI2_E20120621=geomean(ww2_E20120621)/mean(ww2_E20120621);
SI3_E20120621=geomean(ww3_E20120621)/mean(ww3_E20120621);
SI4_E20120621=geomean(ww4_E20120621)/mean(ww4_E20120621);
%% smoothness index squared modulus  E20120621
w_modu_E20120621=table(w_mod_E20120621);
%%
ww_mod1_E20120621=(w_modu_E20120621.w_mod_E20120621{1,1});
ww_mod2_E20120621=(w_modu_E20120621.w_mod_E20120621{1,2});
ww_mod3_E20120621=(w_modu_E20120621.w_mod_E20120621{1,3});
ww_mod4_E20120621=(w_modu_E20120621.w_mod_E20120621{1,4});
%%
SI_mod1_E20120621=geomean(ww_mod1_E20120621)/mean(ww_mod1_E20120621);
SI_mod2_E20120621=geomean(ww_mod2_E20120621)/mean(ww_mod2_E20120621);
SI_mod3_E20120621=geomean(ww_mod3_E20120621)/mean(ww_mod3_E20120621);
SI_mod4_E20120621=geomean(ww_mod4_E20120621)/mean(ww_mod4_E20120621);
%% smoothness index energy spectrum  E20120621
w_s_E20120621=table(w_spec_E20120621);
%%
ww_rat1_E20120621=abs(w_s_E20120621.w_spec_E20120621{1,1});
ww_rat2_E20120621=abs(w_s_E20120621.w_spec_E20120621{1,2});
ww_rat3_E20120621=abs(w_s_E20120621.w_spec_E20120621{1,3});
ww_rat4_E20120621=abs(w_s_E20120621.w_spec_E20120621{1,4});
%%
new1_E20120621=abs(ww1_E20120621.*ww_rat1_E20120621);
new2_E20120621=abs(ww2_E20120621.*ww_rat2_E20120621);
new3_E20120621=abs(ww3_E20120621.*ww_rat3_E20120621);
new4_E20120621=abs(ww4_E20120621.*ww_rat4_E20120621);
%%
SI_rat1_E20120621=geomean(new1_E20120621)/mean(new1_E20120621);
SI_rat2_E20120621=geomean(new2_E20120621)/mean(new2_E20120621);
SI_rat3_E20120621=geomean(new3_E20120621)/mean(new3_E20120621);
SI_rat4_E20120621=geomean(new4_E20120621)/mean(new4_E20120621);
%% Max  E20120621
max1_E20120621=max(ww1_E20120621);
max2_E20120621=max(ww2_E20120621);
max3_E20120621=max(ww3_E20120621);
max4_E20120621=max(ww4_E20120621);
 
max_mod1_E20120621=max(ww_mod1_E20120621);
max_mod2_E20120621=max(ww_mod2_E20120621);
max_mod3_E20120621=max(ww_mod3_E20120621);
max_mod4_E20120621=max(ww_mod4_E20120621);
%% RMS  E20120621
rms1_E20120621=rms(ww1_E20120621);
rms2_E20120621=rms(ww2_E20120621);
rms3_E20120621=rms(ww3_E20120621);
rms4_E20120621=rms(ww4_E20120621);
 
rms_mod1_E20120621=rms(ww_mod1_E20120621);
rms_mod2_E20120621=rms(ww_mod2_E20120621);
rms_mod3_E20120621=rms(ww_mod3_E20120621);
rms_mod4_E20120621=rms(ww_mod4_E20120621);
%% Crest Factor  E20120621
CF1_E20120621=max1_E20120621/rms1_E20120621;
CF2_E20120621=max2_E20120621/rms2_E20120621;
CF3_E20120621=max3_E20120621/rms3_E20120621;
CF4_E20120621=max4_E20120621/rms4_E20120621;
CF_ort_E20120621=(CF1_E20120621+CF2_E20120621+CF3_E20120621+CF4_E20120621)/4;
 
CF_mod1_E20120621=max_mod1_E20120621/rms_mod1_E20120621;
CF_mod2_E20120621=max_mod2_E20120621/rms_mod2_E20120621;
CF_mod3_E20120621=max_mod3_E20120621/rms_mod3_E20120621;
CF_mod4_E20120621=max_mod4_E20120621/rms_mod4_E20120621;
CF_modort_E20120621=(CF_mod1_E20120621+CF_mod2_E20120621+CF_mod3_E20120621+CF_mod4_E20120621)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120712=table(w_sm_E20120712);
%% 
ww1_E20120712=(w_s_E20120712.w_sm_E20120712{1,1});
ww2_E20120712=(w_s_E20120712.w_sm_E20120712{1,2});
ww3_E20120712=(w_s_E20120712.w_sm_E20120712{1,3});
ww4_E20120712=(w_s_E20120712.w_sm_E20120712{1,4});
%%
SI1_E20120712=geomean(ww1_E20120712)/mean(ww1_E20120712);
SI2_E20120712=geomean(ww2_E20120712)/mean(ww2_E20120712);
SI3_E20120712=geomean(ww3_E20120712)/mean(ww3_E20120712);
SI4_E20120712=geomean(ww4_E20120712)/mean(ww4_E20120712);
%% smoothness index squared modulus  E20120712
w_modu_E20120712=table(w_mod_E20120712);
%%
ww_mod1_E20120712=(w_modu_E20120712.w_mod_E20120712{1,1});
ww_mod2_E20120712=(w_modu_E20120712.w_mod_E20120712{1,2});
ww_mod3_E20120712=(w_modu_E20120712.w_mod_E20120712{1,3});
ww_mod4_E20120712=(w_modu_E20120712.w_mod_E20120712{1,4});
%%
SI_mod1_E20120712=geomean(ww_mod1_E20120712)/mean(ww_mod1_E20120712);
SI_mod2_E20120712=geomean(ww_mod2_E20120712)/mean(ww_mod2_E20120712);
SI_mod3_E20120712=geomean(ww_mod3_E20120712)/mean(ww_mod3_E20120712);
SI_mod4_E20120712=geomean(ww_mod4_E20120712)/mean(ww_mod4_E20120712);
%% smoothness index energy spectrum  E20120712
w_s_E20120712=table(w_spec_E20120712);
%%
ww_rat1_E20120712=abs(w_s_E20120712.w_spec_E20120712{1,1});
ww_rat2_E20120712=abs(w_s_E20120712.w_spec_E20120712{1,2});
ww_rat3_E20120712=abs(w_s_E20120712.w_spec_E20120712{1,3});
ww_rat4_E20120712=abs(w_s_E20120712.w_spec_E20120712{1,4});
%%
new1_E20120712=abs(ww1_E20120712.*ww_rat1_E20120712);
new2_E20120712=abs(ww2_E20120712.*ww_rat2_E20120712);
new3_E20120712=abs(ww3_E20120712.*ww_rat3_E20120712);
new4_E20120712=abs(ww4_E20120712.*ww_rat4_E20120712);
%%
SI_rat1_E20120712=geomean(new1_E20120712)/mean(new1_E20120712);
SI_rat2_E20120712=geomean(new2_E20120712)/mean(new2_E20120712);
SI_rat3_E20120712=geomean(new3_E20120712)/mean(new3_E20120712);
SI_rat4_E20120712=geomean(new4_E20120712)/mean(new4_E20120712);
%% Max  E20120712
max1_E20120712=max(ww1_E20120712);
max2_E20120712=max(ww2_E20120712);
max3_E20120712=max(ww3_E20120712);
max4_E20120712=max(ww4_E20120712);
 
max_mod1_E20120712=max(ww_mod1_E20120712);
max_mod2_E20120712=max(ww_mod2_E20120712);
max_mod3_E20120712=max(ww_mod3_E20120712);
max_mod4_E20120712=max(ww_mod4_E20120712);
%% RMS  E20120712
rms1_E20120712=rms(ww1_E20120712);
rms2_E20120712=rms(ww2_E20120712);
rms3_E20120712=rms(ww3_E20120712);
rms4_E20120712=rms(ww4_E20120712);
 
rms_mod1_E20120712=rms(ww_mod1_E20120712);
rms_mod2_E20120712=rms(ww_mod2_E20120712);
rms_mod3_E20120712=rms(ww_mod3_E20120712);
rms_mod4_E20120712=rms(ww_mod4_E20120712);
%% Crest Factor  E20120712
CF1_E20120712=max1_E20120712/rms1_E20120712;
CF2_E20120712=max2_E20120712/rms2_E20120712;
CF3_E20120712=max3_E20120712/rms3_E20120712;
CF4_E20120712=max4_E20120712/rms4_E20120712;
CF_ort_E20120712=(CF1_E20120712+CF2_E20120712+CF3_E20120712+CF4_E20120712)/4;
 
CF_mod1_E20120712=max_mod1_E20120712/rms_mod1_E20120712;
CF_mod2_E20120712=max_mod2_E20120712/rms_mod2_E20120712;
CF_mod3_E20120712=max_mod3_E20120712/rms_mod3_E20120712;
CF_mod4_E20120712=max_mod4_E20120712/rms_mod4_E20120712;
CF_modort_E20120712=(CF_mod1_E20120712+CF_mod2_E20120712+CF_mod3_E20120712+CF_mod4_E20120712)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120713=table(w_sm_E20120713);
%% 
ww1_E20120713=(w_s_E20120713.w_sm_E20120713{1,1});
ww2_E20120713=(w_s_E20120713.w_sm_E20120713{1,2});
ww3_E20120713=(w_s_E20120713.w_sm_E20120713{1,3});
ww4_E20120713=(w_s_E20120713.w_sm_E20120713{1,4});
%%
SI1_E20120713=geomean(ww1_E20120713)/mean(ww1_E20120713);
SI2_E20120713=geomean(ww2_E20120713)/mean(ww2_E20120713);
SI3_E20120713=geomean(ww3_E20120713)/mean(ww3_E20120713);
SI4_E20120713=geomean(ww4_E20120713)/mean(ww4_E20120713);
%% smoothness index squared modulus  E201207313
w_modu_E20120713=table(w_mod_E20120713);
%%
ww_mod1_E20120713=(w_modu_E20120713.w_mod_E20120713{1,1});
ww_mod2_E20120713=(w_modu_E20120713.w_mod_E20120713{1,2});
ww_mod3_E20120713=(w_modu_E20120713.w_mod_E20120713{1,3});
ww_mod4_E20120713=(w_modu_E20120713.w_mod_E20120713{1,4});
%%
SI_mod1_E20120713=geomean(ww_mod1_E20120713)/mean(ww_mod1_E20120713);
SI_mod2_E20120713=geomean(ww_mod2_E20120713)/mean(ww_mod2_E20120713);
SI_mod3_E20120713=geomean(ww_mod3_E20120713)/mean(ww_mod3_E20120713);
SI_mod4_E20120713=geomean(ww_mod4_E20120713)/mean(ww_mod4_E20120713);
%% smoothness index energy spectrum  E201207313
w_s_E20120713=table(w_spec_E20120713);
%%
ww_rat1_E20120713=abs(w_s_E20120713.w_spec_E20120713{1,1});
ww_rat2_E20120713=abs(w_s_E20120713.w_spec_E20120713{1,2});
ww_rat3_E20120713=abs(w_s_E20120713.w_spec_E20120713{1,3});
ww_rat4_E20120713=abs(w_s_E20120713.w_spec_E20120713{1,4});
%%
new1_E20120713=abs(ww1_E20120713.*ww_rat1_E20120713);
new2_E20120713=abs(ww2_E20120713.*ww_rat2_E20120713);
new3_E20120713=abs(ww3_E20120713.*ww_rat3_E20120713);
new4_E20120713=abs(ww4_E20120713.*ww_rat4_E20120713);
%%
SI_rat1_E20120713=geomean(new1_E20120713)/mean(new1_E20120713);
SI_rat2_E20120713=geomean(new2_E20120713)/mean(new2_E20120713);
SI_rat3_E20120713=geomean(new3_E20120713)/mean(new3_E20120713);
SI_rat4_E20120713=geomean(new4_E20120713)/mean(new4_E20120713);
%% Max  E201207313
max1_E20120713=max(ww1_E20120713);
max2_E20120713=max(ww2_E20120713);
max3_E20120713=max(ww3_E20120713);
max4_E20120713=max(ww4_E20120713);
 
max_mod1_E20120713=max(ww_mod1_E20120713);
max_mod2_E20120713=max(ww_mod2_E20120713);
max_mod3_E20120713=max(ww_mod3_E20120713);
max_mod4_E20120713=max(ww_mod4_E20120713);
%% RMS  E201207313
rms1_E20120713=rms(ww1_E20120713);
rms2_E20120713=rms(ww2_E20120713);
rms3_E20120713=rms(ww3_E20120713);
rms4_E20120713=rms(ww4_E20120713);
 
rms_mod1_E20120713=rms(ww_mod1_E20120713);
rms_mod2_E20120713=rms(ww_mod2_E20120713);
rms_mod3_E20120713=rms(ww_mod3_E20120713);
rms_mod4_E20120713=rms(ww_mod4_E20120713);
%% Crest Factor  E201207313
CF1_E20120713=max1_E20120713/rms1_E20120713;
CF2_E20120713=max2_E20120713/rms2_E20120713;
CF3_E20120713=max3_E20120713/rms3_E20120713;
CF4_E20120713=max4_E20120713/rms4_E20120713;
CF_ort_E20120713=(CF1_E20120713+CF2_E20120713+CF3_E20120713+CF4_E20120713)/4;
 
CF_mod1_E20120713=max_mod1_E20120713/rms_mod1_E20120713;
CF_mod2_E20120713=max_mod2_E20120713/rms_mod2_E20120713;
CF_mod3_E20120713=max_mod3_E20120713/rms_mod3_E20120713;
CF_mod4_E20120713=max_mod4_E20120713/rms_mod4_E20120713;
CF_modort_E20120713=(CF_mod1_E20120713+CF_mod2_E20120713+CF_mod3_E20120713+CF_mod4_E20120713)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120731=table(w_sm_E20120731);
%% 
ww1_E20120731=(w_s_E20120731.w_sm_E20120731{1,1});
ww2_E20120731=(w_s_E20120731.w_sm_E20120731{1,2});
ww3_E20120731=(w_s_E20120731.w_sm_E20120731{1,3});
ww4_E20120731=(w_s_E20120731.w_sm_E20120731{1,4});
%%
SI1_E20120731=geomean(ww1_E20120731)/mean(ww1_E20120731);
SI2_E20120731=geomean(ww2_E20120731)/mean(ww2_E20120731);
SI3_E20120731=geomean(ww3_E20120731)/mean(ww3_E20120731);
SI4_E20120731=geomean(ww4_E20120731)/mean(ww4_E20120731);
%% smoothness index squared modulus  E20120731
w_modu_E20120731=table(w_mod_E20120731);
%%
ww_mod1_E20120731=(w_modu_E20120731.w_mod_E20120731{1,1});
ww_mod2_E20120731=(w_modu_E20120731.w_mod_E20120731{1,2});
ww_mod3_E20120731=(w_modu_E20120731.w_mod_E20120731{1,3});
ww_mod4_E20120731=(w_modu_E20120731.w_mod_E20120731{1,4});
%%
SI_mod1_E20120731=geomean(ww_mod1_E20120731)/mean(ww_mod1_E20120731);
SI_mod2_E20120731=geomean(ww_mod2_E20120731)/mean(ww_mod2_E20120731);
SI_mod3_E20120731=geomean(ww_mod3_E20120731)/mean(ww_mod3_E20120731);
SI_mod4_E20120731=geomean(ww_mod4_E20120731)/mean(ww_mod4_E20120731);
%% smoothness index energy spectrum  E20120731
w_s_E20120731=table(w_spec_E20120731);
%%
ww_rat1_E20120731=abs(w_s_E20120731.w_spec_E20120731{1,1});
ww_rat2_E20120731=abs(w_s_E20120731.w_spec_E20120731{1,2});
ww_rat3_E20120731=abs(w_s_E20120731.w_spec_E20120731{1,3});
ww_rat4_E20120731=abs(w_s_E20120731.w_spec_E20120731{1,4});
%%
new1_E20120731=abs(ww1_E20120731.*ww_rat1_E20120731);
new2_E20120731=abs(ww2_E20120731.*ww_rat2_E20120731);
new3_E20120731=abs(ww3_E20120731.*ww_rat3_E20120731);
new4_E20120731=abs(ww4_E20120731.*ww_rat4_E20120731);
%%
SI_rat1_E20120731=geomean(new1_E20120731)/mean(new1_E20120731);
SI_rat2_E20120731=geomean(new2_E20120731)/mean(new2_E20120731);
SI_rat3_E20120731=geomean(new3_E20120731)/mean(new3_E20120731);
SI_rat4_E20120731=geomean(new4_E20120731)/mean(new4_E20120731);
%% Max  E20120731
max1_E20120731=max(ww1_E20120731);
max2_E20120731=max(ww2_E20120731);
max3_E20120731=max(ww3_E20120731);
max4_E20120731=max(ww4_E20120731);
 
max_mod1_E20120731=max(ww_mod1_E20120731);
max_mod2_E20120731=max(ww_mod2_E20120731);
max_mod3_E20120731=max(ww_mod3_E20120731);
max_mod4_E20120731=max(ww_mod4_E20120731);
%% RMS  E20120731
rms1_E20120731=rms(ww1_E20120731);
rms2_E20120731=rms(ww2_E20120731);
rms3_E20120731=rms(ww3_E20120731);
rms4_E20120731=rms(ww4_E20120731);
 
rms_mod1_E20120731=rms(ww_mod1_E20120731);
rms_mod2_E20120731=rms(ww_mod2_E20120731);
rms_mod3_E20120731=rms(ww_mod3_E20120731);
rms_mod4_E20120731=rms(ww_mod4_E20120731);
%% Crest Factor  E20120731
CF1_E20120731=max1_E20120731/rms1_E20120731;
CF2_E20120731=max2_E20120731/rms2_E20120731;
CF3_E20120731=max3_E20120731/rms3_E20120731;
CF4_E20120731=max4_E20120731/rms4_E20120731;
CF_ort_E20120731=(CF1_E20120731+CF2_E20120731+CF3_E20120731+CF4_E20120731)/4;
 
CF_mod1_E20120731=max_mod1_E20120731/rms_mod1_E20120731;
CF_mod2_E20120731=max_mod2_E20120731/rms_mod2_E20120731;
CF_mod3_E20120731=max_mod3_E20120731/rms_mod3_E20120731;
CF_mod4_E20120731=max_mod4_E20120731/rms_mod4_E20120731;
CF_modort_E20120731=(CF_mod1_E20120731+CF_mod2_E20120731+CF_mod3_E20120731+CF_mod4_E20120731)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120924=table(w_sm_E20120924);
%% 
ww1_E20120924=(w_s_E20120924.w_sm_E20120924{1,1});
ww2_E20120924=(w_s_E20120924.w_sm_E20120924{1,2});
ww3_E20120924=(w_s_E20120924.w_sm_E20120924{1,3});
ww4_E20120924=(w_s_E20120924.w_sm_E20120924{1,4});
%%
SI1_E20120924=geomean(ww1_E20120924)/mean(ww1_E20120924);
SI2_E20120924=geomean(ww2_E20120924)/mean(ww2_E20120924);
SI3_E20120924=geomean(ww3_E20120924)/mean(ww3_E20120924);
SI4_E20120924=geomean(ww4_E20120924)/mean(ww4_E20120924);
%% smoothness index squared modulus  E20120924
w_modu_E20120924=table(w_mod_E20120924);
%%
ww_mod1_E20120924=(w_modu_E20120924.w_mod_E20120924{1,1});
ww_mod2_E20120924=(w_modu_E20120924.w_mod_E20120924{1,2});
ww_mod3_E20120924=(w_modu_E20120924.w_mod_E20120924{1,3});
ww_mod4_E20120924=(w_modu_E20120924.w_mod_E20120924{1,4});
%%
SI_mod1_E20120924=geomean(ww_mod1_E20120924)/mean(ww_mod1_E20120924);
SI_mod2_E20120924=geomean(ww_mod2_E20120924)/mean(ww_mod2_E20120924);
SI_mod3_E20120924=geomean(ww_mod3_E20120924)/mean(ww_mod3_E20120924);
SI_mod4_E20120924=geomean(ww_mod4_E20120924)/mean(ww_mod4_E20120924);
%% smoothness index energy spectrum  E20120924
w_s_E20120924=table(w_spec_E20120924);
%%
ww_rat1_E20120924=abs(w_s_E20120924.w_spec_E20120924{1,1});
ww_rat2_E20120924=abs(w_s_E20120924.w_spec_E20120924{1,2});
ww_rat3_E20120924=abs(w_s_E20120924.w_spec_E20120924{1,3});
ww_rat4_E20120924=abs(w_s_E20120924.w_spec_E20120924{1,4});
%%
new1_E20120924=abs(ww1_E20120924.*ww_rat1_E20120924);
new2_E20120924=abs(ww2_E20120924.*ww_rat2_E20120924);
new3_E20120924=abs(ww3_E20120924.*ww_rat3_E20120924);
new4_E20120924=abs(ww4_E20120924.*ww_rat4_E20120924);
%%
SI_rat1_E20120924=geomean(new1_E20120924)/mean(new1_E20120924);
SI_rat2_E20120924=geomean(new2_E20120924)/mean(new2_E20120924);
SI_rat3_E20120924=geomean(new3_E20120924)/mean(new3_E20120924);
SI_rat4_E20120924=geomean(new4_E20120924)/mean(new4_E20120924);
%% Max  E20120924
max1_E20120924=max(ww1_E20120924);
max2_E20120924=max(ww2_E20120924);
max3_E20120924=max(ww3_E20120924);
max4_E20120924=max(ww4_E20120924);
 
max_mod1_E20120924=max(ww_mod1_E20120924);
max_mod2_E20120924=max(ww_mod2_E20120924);
max_mod3_E20120924=max(ww_mod3_E20120924);
max_mod4_E20120924=max(ww_mod4_E20120924);
%% RMS  E20120924
rms1_E20120924=rms(ww1_E20120924);
rms2_E20120924=rms(ww2_E20120924);
rms3_E20120924=rms(ww3_E20120924);
rms4_E20120924=rms(ww4_E20120924);
 
rms_mod1_E20120924=rms(ww_mod1_E20120924);
rms_mod2_E20120924=rms(ww_mod2_E20120924);
rms_mod3_E20120924=rms(ww_mod3_E20120924);
rms_mod4_E20120924=rms(ww_mod4_E20120924);
%% Crest Factor  E20120924
CF1_E20120924=max1_E20120924/rms1_E20120924;
CF2_E20120924=max2_E20120924/rms2_E20120924;
CF3_E20120924=max3_E20120924/rms3_E20120924;
CF4_E20120924=max4_E20120924/rms4_E20120924;
CF_ort_E20120924=(CF1_E20120924+CF2_E20120924+CF3_E20120924+CF4_E20120924)/4;
 
CF_mod1_E20120924=max_mod1_E20120924/rms_mod1_E20120924;
CF_mod2_E20120924=max_mod2_E20120924/rms_mod2_E20120924;
CF_mod3_E20120924=max_mod3_E20120924/rms_mod3_E20120924;
CF_mod4_E20120924=max_mod4_E20120924/rms_mod4_E20120924;
CF_modort_E20120924=(CF_mod1_E20120924+CF_mod2_E20120924+CF_mod3_E20120924+CF_mod4_E20120924)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_E20120926=table(w_sm_E20120926);
%% 
ww1_E20120926=(w_s_E20120926.w_sm_E20120926{1,1});
ww2_E20120926=(w_s_E20120926.w_sm_E20120926{1,2});
ww3_E20120926=(w_s_E20120926.w_sm_E20120926{1,3});
ww4_E20120926=(w_s_E20120926.w_sm_E20120926{1,4});
%%
SI1_E20120926=geomean(ww1_E20120926)/mean(ww1_E20120926);
SI2_E20120926=geomean(ww2_E20120926)/mean(ww2_E20120926);
SI3_E20120926=geomean(ww3_E20120926)/mean(ww3_E20120926);
SI4_E20120926=geomean(ww4_E20120926)/mean(ww4_E20120926);
%% smoothness index squared modulus  E20120926
w_modu_E20120926=table(w_mod_E20120926);
%%
ww_mod1_E20120926=(w_modu_E20120926.w_mod_E20120926{1,1});
ww_mod2_E20120926=(w_modu_E20120926.w_mod_E20120926{1,2});
ww_mod3_E20120926=(w_modu_E20120926.w_mod_E20120926{1,3});
ww_mod4_E20120926=(w_modu_E20120926.w_mod_E20120926{1,4});
%%
SI_mod1_E20120926=geomean(ww_mod1_E20120926)/mean(ww_mod1_E20120926);
SI_mod2_E20120926=geomean(ww_mod2_E20120926)/mean(ww_mod2_E20120926);
SI_mod3_E20120926=geomean(ww_mod3_E20120926)/mean(ww_mod3_E20120926);
SI_mod4_E20120926=geomean(ww_mod4_E20120926)/mean(ww_mod4_E20120926);
%% smoothness index energy spectrum  E20120926
w_s_E20120926=table(w_spec_E20120926);
%%
ww_rat1_E20120926=abs(w_s_E20120926.w_spec_E20120926{1,1});
ww_rat2_E20120926=abs(w_s_E20120926.w_spec_E20120926{1,2});
ww_rat3_E20120926=abs(w_s_E20120926.w_spec_E20120926{1,3});
ww_rat4_E20120926=abs(w_s_E20120926.w_spec_E20120926{1,4});
%%
new1_E20120926=abs(ww1_E20120926.*ww_rat1_E20120926);
new2_E20120926=abs(ww2_E20120926.*ww_rat2_E20120926);
new3_E20120926=abs(ww3_E20120926.*ww_rat3_E20120926);
new4_E20120926=abs(ww4_E20120926.*ww_rat4_E20120926);
%%
SI_rat1_E20120926=geomean(new1_E20120926)/mean(new1_E20120926);
SI_rat2_E20120926=geomean(new2_E20120926)/mean(new2_E20120926);
SI_rat3_E20120926=geomean(new3_E20120926)/mean(new3_E20120926);
SI_rat4_E20120926=geomean(new4_E20120926)/mean(new4_E20120926);
%% Max  E20120926
max1_E20120926=max(ww1_E20120926);
max2_E20120926=max(ww2_E20120926);
max3_E20120926=max(ww3_E20120926);
max4_E20120926=max(ww4_E20120926);
 
max_mod1_E20120926=max(ww_mod1_E20120926);
max_mod2_E20120926=max(ww_mod2_E20120926);
max_mod3_E20120926=max(ww_mod3_E20120926);
max_mod4_E20120926=max(ww_mod4_E20120926);
%% RMS  E20120926
rms1_E20120926=rms(ww1_E20120926);
rms2_E20120926=rms(ww2_E20120926);
rms3_E20120926=rms(ww3_E20120926);
rms4_E20120926=rms(ww4_E20120926);
 
rms_mod1_E20120926=rms(ww_mod1_E20120926);
rms_mod2_E20120926=rms(ww_mod2_E20120926);
rms_mod3_E20120926=rms(ww_mod3_E20120926);
rms_mod4_E20120926=rms(ww_mod4_E20120926);
%% Crest Factor  E20120926
CF1_E20120926=max1_E20120926/rms1_E20120926;
CF2_E20120926=max2_E20120926/rms2_E20120926;
CF3_E20120926=max3_E20120926/rms3_E20120926;
CF4_E20120926=max4_E20120926/rms4_E20120926;
CF_ort_E20120926=(CF1_E20120926+CF2_E20120926+CF3_E20120926+CF4_E20120926)/4;
 
CF_mod1_E20120926=max_mod1_E20120926/rms_mod1_E20120926;
CF_mod2_E20120926=max_mod2_E20120926/rms_mod2_E20120926;
CF_mod3_E20120926=max_mod3_E20120926/rms_mod3_E20120926;
CF_mod4_E20120926=max_mod4_E20120926/rms_mod4_E20120926;
CF_modort_E20120926=(CF_mod1_E20120926+CF_mod2_E20120926+CF_mod3_E20120926+CF_mod4_E20120926)/4;
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  E20130118
w_s_E20130118=table(w_sm_E20130118);
%% 
ww1_E20130118=(w_s_E20130118.w_sm_E20130118{1,1});
ww2_E20130118=(w_s_E20130118.w_sm_E20130118{1,2});
ww3_E20130118=(w_s_E20130118.w_sm_E20130118{1,3});
ww4_E20130118=(w_s_E20130118.w_sm_E20130118{1,4});
%%
SI1_E20130118=geomean(ww1_E20130118)/mean(ww1_E20130118);
SI2_E20130118=geomean(ww2_E20130118)/mean(ww2_E20130118);
SI3_E20130118=geomean(ww3_E20130118)/mean(ww3_E20130118);
SI4_E20130118=geomean(ww4_E20130118)/mean(ww4_E20130118);
%% smoothness index squared modulus  E20130118
w_modu_E20130118=table(w_mod_E20130118);
%%
ww_mod1_E20130118=(w_modu_E20130118.w_mod_E20130118{1,1});
ww_mod2_E20130118=(w_modu_E20130118.w_mod_E20130118{1,2});
ww_mod3_E20130118=(w_modu_E20130118.w_mod_E20130118{1,3});
ww_mod4_E20130118=(w_modu_E20130118.w_mod_E20130118{1,4});
%%
SI_mod1_E20130118=geomean(ww_mod1_E20130118)/mean(ww_mod1_E20130118);
SI_mod2_E20130118=geomean(ww_mod2_E20130118)/mean(ww_mod2_E20130118);
SI_mod3_E20130118=geomean(ww_mod3_E20130118)/mean(ww_mod3_E20130118);
SI_mod4_E20130118=geomean(ww_mod4_E20130118)/mean(ww_mod4_E20130118);
%% smoothness index energy spectrum  E20130118
w_s_E20130118=table(w_spec_E20130118);
%%
ww_rat1_E20130118=abs(w_s_E20130118.w_spec_E20130118{1,1});
ww_rat2_E20130118=abs(w_s_E20130118.w_spec_E20130118{1,2});
ww_rat3_E20130118=abs(w_s_E20130118.w_spec_E20130118{1,3});
ww_rat4_E20130118=abs(w_s_E20130118.w_spec_E20130118{1,4});
%%
new1_E20130118=abs(ww1_E20130118.*ww_rat1_E20130118);
new2_E20130118=abs(ww2_E20130118.*ww_rat2_E20130118);
new3_E20130118=abs(ww3_E20130118.*ww_rat3_E20130118);
new4_E20130118=abs(ww4_E20130118.*ww_rat4_E20130118);
%%
SI_rat1_E20130118=geomean(new1_E20130118)/mean(new1_E20130118);
SI_rat2_E20130118=geomean(new2_E20130118)/mean(new2_E20130118);
SI_rat3_E20130118=geomean(new3_E20130118)/mean(new3_E20130118);
SI_rat4_E20130118=geomean(new4_E20130118)/mean(new4_E20130118);
%% Max  E20130118
max1_E20130118=max(ww1_E20130118);
max2_E20130118=max(ww2_E20130118);
max3_E20130118=max(ww3_E20130118);
max4_E20130118=max(ww4_E20130118);
 
max_mod1_E20130118=max(ww_mod1_E20130118);
max_mod2_E20130118=max(ww_mod2_E20130118);
max_mod3_E20130118=max(ww_mod3_E20130118);
max_mod4_E20130118=max(ww_mod4_E20130118);
%% RMS  E20130118
rms1_E20130118=rms(ww1_E20130118);
rms2_E20130118=rms(ww2_E20130118);
rms3_E20130118=rms(ww3_E20130118);
rms4_E20130118=rms(ww4_E20130118);
 
rms_mod1_E20130118=rms(ww_mod1_E20130118);
rms_mod2_E20130118=rms(ww_mod2_E20130118);
rms_mod3_E20130118=rms(ww_mod3_E20130118);
rms_mod4_E20130118=rms(ww_mod4_E20130118);
%% Crest Factor  E20130118
CF1_E20130118=max1_E20130118/rms1_E20130118;
CF2_E20130118=max2_E20130118/rms2_E20130118;
CF3_E20130118=max3_E20130118/rms3_E20130118;
CF4_E20130118=max4_E20130118/rms4_E20130118;
CF_ort_E20130118=(CF1_E20130118+CF2_E20130118+CF3_E20130118+CF4_E20130118)/4;
 
CF_mod1_E20130118=max_mod1_E20130118/rms_mod1_E20130118;
CF_mod2_E20130118=max_mod2_E20130118/rms_mod2_E20130118;
CF_mod3_E20130118=max_mod3_E20130118/rms_mod3_E20130118;
CF_mod4_E20130118=max_mod4_E20130118/rms_mod4_E20130118;
CF_modort_E20130118=(CF_mod1_E20130118+CF_mod2_E20130118+CF_mod3_E20130118+CF_mod4_E20130118)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  E20130311
w_s_E20130311=table(w_sm_E20130311);
%% 
ww1_E20130311=(w_s_E20130311.w_sm_E20130311{1,1});
ww2_E20130311=(w_s_E20130311.w_sm_E20130311{1,2});
ww3_E20130311=(w_s_E20130311.w_sm_E20130311{1,3});
ww4_E20130311=(w_s_E20130311.w_sm_E20130311{1,4});
%%
SI1_E20130311=geomean(ww1_E20130311)/mean(ww1_E20130311);
SI2_E20130311=geomean(ww2_E20130311)/mean(ww2_E20130311);
SI3_E20130311=geomean(ww3_E20130311)/mean(ww3_E20130311);
SI4_E20130311=geomean(ww4_E20130311)/mean(ww4_E20130311);
%% smoothness index squared modulus  E20130311
w_modu_E20130311=table(w_mod_E20130311);
%%
ww_mod1_E20130311=(w_modu_E20130311.w_mod_E20130311{1,1});
ww_mod2_E20130311=(w_modu_E20130311.w_mod_E20130311{1,2});
ww_mod3_E20130311=(w_modu_E20130311.w_mod_E20130311{1,3});
ww_mod4_E20130311=(w_modu_E20130311.w_mod_E20130311{1,4});
%%
SI_mod1_E20130311=geomean(ww_mod1_E20130311)/mean(ww_mod1_E20130311);
SI_mod2_E20130311=geomean(ww_mod2_E20130311)/mean(ww_mod2_E20130311);
SI_mod3_E20130311=geomean(ww_mod3_E20130311)/mean(ww_mod3_E20130311);
SI_mod4_E20130311=geomean(ww_mod4_E20130311)/mean(ww_mod4_E20130311);
%% smoothness index energy spectrum  E20130311
w_s_E20130311=table(w_spec_E20130311);
%%
ww_rat1_E20130311=abs(w_s_E20130311.w_spec_E20130311{1,1});
ww_rat2_E20130311=abs(w_s_E20130311.w_spec_E20130311{1,2});
ww_rat3_E20130311=abs(w_s_E20130311.w_spec_E20130311{1,3});
ww_rat4_E20130311=abs(w_s_E20130311.w_spec_E20130311{1,4});
%%
new1_E20130311=abs(ww1_E20130311.*ww_rat1_E20130311);
new2_E20130311=abs(ww2_E20130311.*ww_rat2_E20130311);
new3_E20130311=abs(ww3_E20130311.*ww_rat3_E20130311);
new4_E20130311=abs(ww4_E20130311.*ww_rat4_E20130311);
%%
SI_rat1_E20130311=geomean(new1_E20130311)/mean(new1_E20130311);
SI_rat2_E20130311=geomean(new2_E20130311)/mean(new2_E20130311);
SI_rat3_E20130311=geomean(new3_E20130311)/mean(new3_E20130311);
SI_rat4_E20130311=geomean(new4_E20130311)/mean(new4_E20130311);
%% Max  E20130311
max1_E20130311=max(ww1_E20130311);
max2_E20130311=max(ww2_E20130311);
max3_E20130311=max(ww3_E20130311);
max4_E20130311=max(ww4_E20130311);
 
max_mod1_E20130311=max(ww_mod1_E20130311);
max_mod2_E20130311=max(ww_mod2_E20130311);
max_mod3_E20130311=max(ww_mod3_E20130311);
max_mod4_E20130311=max(ww_mod4_E20130311);
%% RMS  E20130311
rms1_E20130311=rms(ww1_E20130311);
rms2_E20130311=rms(ww2_E20130311);
rms3_E20130311=rms(ww3_E20130311);
rms4_E20130311=rms(ww4_E20130311);
 
rms_mod1_E20130311=rms(ww_mod1_E20130311);
rms_mod2_E20130311=rms(ww_mod2_E20130311);
rms_mod3_E20130311=rms(ww_mod3_E20130311);
rms_mod4_E20130311=rms(ww_mod4_E20130311);
%% Crest Factor  E20130311
CF1_E20130311=max1_E20130311/rms1_E20130311;
CF2_E20130311=max2_E20130311/rms2_E20130311;
CF3_E20130311=max3_E20130311/rms3_E20130311;
CF4_E20130311=max4_E20130311/rms4_E20130311;
CF_ort_E20130311=(CF1_E20130311+CF2_E20130311+CF3_E20130311+CF4_E20130311)/4;
 
CF_mod1_E20130311=max_mod1_E20130311/rms_mod1_E20130311;
CF_mod2_E20130311=max_mod2_E20130311/rms_mod2_E20130311;
CF_mod3_E20130311=max_mod3_E20130311/rms_mod3_E20130311;
CF_mod4_E20130311=max_mod4_E20130311/rms_mod4_E20130311;
CF_modort_E20130311=(CF_mod1_E20130311+CF_mod2_E20130311+CF_mod3_E20130311+CF_mod4_E20130311)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  E20130612
w_s_E20130612=table(w_sm_E20130612);
%% 
ww1_E20130612=(w_s_E20130612.w_sm_E20130612{1,1});
ww2_E20130612=(w_s_E20130612.w_sm_E20130612{1,2});
ww3_E20130612=(w_s_E20130612.w_sm_E20130612{1,3});
ww4_E20130612=(w_s_E20130612.w_sm_E20130612{1,4});
%%
SI1_E20130612=geomean(ww1_E20130612)/mean(ww1_E20130612);
SI2_E20130612=geomean(ww2_E20130612)/mean(ww2_E20130612);
SI3_E20130612=geomean(ww3_E20130612)/mean(ww3_E20130612);
SI4_E20130612=geomean(ww4_E20130612)/mean(ww4_E20130612);
%% smoothness index squared modulus  E20130612
w_modu_E20130612=table(w_mod_E20130612);
%%
ww_mod1_E20130612=(w_modu_E20130612.w_mod_E20130612{1,1});
ww_mod2_E20130612=(w_modu_E20130612.w_mod_E20130612{1,2});
ww_mod3_E20130612=(w_modu_E20130612.w_mod_E20130612{1,3});
ww_mod4_E20130612=(w_modu_E20130612.w_mod_E20130612{1,4});
%%
SI_mod1_E20130612=geomean(ww_mod1_E20130612)/mean(ww_mod1_E20130612);
SI_mod2_E20130612=geomean(ww_mod2_E20130612)/mean(ww_mod2_E20130612);
SI_mod3_E20130612=geomean(ww_mod3_E20130612)/mean(ww_mod3_E20130612);
SI_mod4_E20130612=geomean(ww_mod4_E20130612)/mean(ww_mod4_E20130612);
%% smoothness index energy spectrum  E20130612
w_s_E20130612=table(w_spec_E20130612);
%%
ww_rat1_E20130612=abs(w_s_E20130612.w_spec_E20130612{1,1});
ww_rat2_E20130612=abs(w_s_E20130612.w_spec_E20130612{1,2});
ww_rat3_E20130612=abs(w_s_E20130612.w_spec_E20130612{1,3});
ww_rat4_E20130612=abs(w_s_E20130612.w_spec_E20130612{1,4});
%%
new1_E20130612=abs(ww1_E20130612.*ww_rat1_E20130612);
new2_E20130612=abs(ww2_E20130612.*ww_rat2_E20130612);
new3_E20130612=abs(ww3_E20130612.*ww_rat3_E20130612);
new4_E20130612=abs(ww4_E20130612.*ww_rat4_E20130612);
%%
SI_rat1_E20130612=geomean(new1_E20130612)/mean(new1_E20130612);
SI_rat2_E20130612=geomean(new2_E20130612)/mean(new2_E20130612);
SI_rat3_E20130612=geomean(new3_E20130612)/mean(new3_E20130612);
SI_rat4_E20130612=geomean(new4_E20130612)/mean(new4_E20130612);
%% Max  E20130612
max1_E20130612=max(ww1_E20130612);
max2_E20130612=max(ww2_E20130612);
max3_E20130612=max(ww3_E20130612);
max4_E20130612=max(ww4_E20130612);
 
max_mod1_E20130612=max(ww_mod1_E20130612);
max_mod2_E20130612=max(ww_mod2_E20130612);
max_mod3_E20130612=max(ww_mod3_E20130612);
max_mod4_E20130612=max(ww_mod4_E20130612);
%% RMS  E20130612
rms1_E20130612=rms(ww1_E20130612);
rms2_E20130612=rms(ww2_E20130612);
rms3_E20130612=rms(ww3_E20130612);
rms4_E20130612=rms(ww4_E20130612);
 
rms_mod1_E20130612=rms(ww_mod1_E20130612);
rms_mod2_E20130612=rms(ww_mod2_E20130612);
rms_mod3_E20130612=rms(ww_mod3_E20130612);
rms_mod4_E20130612=rms(ww_mod4_E20130612);
%% Crest Factor  E20130612
CF1_E20130612=max1_E20130612/rms1_E20130612;
CF2_E20130612=max2_E20130612/rms2_E20130612;
CF3_E20130612=max3_E20130612/rms3_E20130612;
CF4_E20130612=max4_E20130612/rms4_E20130612;
CF_ort_E20130612=(CF1_E20130612+CF2_E20130612+CF3_E20130612+CF4_E20130612)/4;
 
CF_mod1_E20130612=max_mod1_E20130612/rms_mod1_E20130612;
CF_mod2_E20130612=max_mod2_E20130612/rms_mod2_E20130612;
CF_mod3_E20130612=max_mod3_E20130612/rms_mod3_E20130612;
CF_mod4_E20130612=max_mod4_E20130612/rms_mod4_E20130612;
CF_modort_E20130612=(CF_mod1_E20130612+CF_mod2_E20130612+CF_mod3_E20130612+CF_mod4_E20130612)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  E20130731
w_s_E20130731=table(w_sm_E20130731);
%% 
ww1_E20130731=(w_s_E20130731.w_sm_E20130731{1,1});
ww2_E20130731=(w_s_E20130731.w_sm_E20130731{1,2});
ww3_E20130731=(w_s_E20130731.w_sm_E20130731{1,3});
ww4_E20130731=(w_s_E20130731.w_sm_E20130731{1,4});
%%
SI1_E20130731=geomean(ww1_E20130731)/mean(ww1_E20130731);
SI2_E20130731=geomean(ww2_E20130731)/mean(ww2_E20130731);
SI3_E20130731=geomean(ww3_E20130731)/mean(ww3_E20130731);
SI4_E20130731=geomean(ww4_E20130731)/mean(ww4_E20130731);
%% smoothness index squared modulus  E20130731
w_modu_E20130731=table(w_mod_E20130731);
%%
ww_mod1_E20130731=(w_modu_E20130731.w_mod_E20130731{1,1});
ww_mod2_E20130731=(w_modu_E20130731.w_mod_E20130731{1,2});
ww_mod3_E20130731=(w_modu_E20130731.w_mod_E20130731{1,3});
ww_mod4_E20130731=(w_modu_E20130731.w_mod_E20130731{1,4});
%%
SI_mod1_E20130731=geomean(ww_mod1_E20130731)/mean(ww_mod1_E20130731);
SI_mod2_E20130731=geomean(ww_mod2_E20130731)/mean(ww_mod2_E20130731);
SI_mod3_E20130731=geomean(ww_mod3_E20130731)/mean(ww_mod3_E20130731);
SI_mod4_E20130731=geomean(ww_mod4_E20130731)/mean(ww_mod4_E20130731);
%% smoothness index energy spectrum  E20130731
w_s_E20130731=table(w_spec_E20130731);
%%
ww_rat1_E20130731=abs(w_s_E20130731.w_spec_E20130731{1,1});
ww_rat2_E20130731=abs(w_s_E20130731.w_spec_E20130731{1,2});
ww_rat3_E20130731=abs(w_s_E20130731.w_spec_E20130731{1,3});
ww_rat4_E20130731=abs(w_s_E20130731.w_spec_E20130731{1,4});
%%
new1_E20130731=abs(ww1_E20130731.*ww_rat1_E20130731);
new2_E20130731=abs(ww2_E20130731.*ww_rat2_E20130731);
new3_E20130731=abs(ww3_E20130731.*ww_rat3_E20130731);
new4_E20130731=abs(ww4_E20130731.*ww_rat4_E20130731);
%%
SI_rat1_E20130731=geomean(new1_E20130731)/mean(new1_E20130731);
SI_rat2_E20130731=geomean(new2_E20130731)/mean(new2_E20130731);
SI_rat3_E20130731=geomean(new3_E20130731)/mean(new3_E20130731);
SI_rat4_E20130731=geomean(new4_E20130731)/mean(new4_E20130731);
%% Max  E20130731
max1_E20130731=max(ww1_E20130731);
max2_E20130731=max(ww2_E20130731);
max3_E20130731=max(ww3_E20130731);
max4_E20130731=max(ww4_E20130731);
 
max_mod1_E20130731=max(ww_mod1_E20130731);
max_mod2_E20130731=max(ww_mod2_E20130731);
max_mod3_E20130731=max(ww_mod3_E20130731);
max_mod4_E20130731=max(ww_mod4_E20130731);
%% RMS  E20130731
rms1_E20130731=rms(ww1_E20130731);
rms2_E20130731=rms(ww2_E20130731);
rms3_E20130731=rms(ww3_E20130731);
rms4_E20130731=rms(ww4_E20130731);
 
rms_mod1_E20130731=rms(ww_mod1_E20130731);
rms_mod2_E20130731=rms(ww_mod2_E20130731);
rms_mod3_E20130731=rms(ww_mod3_E20130731);
rms_mod4_E20130731=rms(ww_mod4_E20130731);
%% Crest Factor  E20130731
CF1_E20130731=max1_E20130731/rms1_E20130731;
CF2_E20130731=max2_E20130731/rms2_E20130731;
CF3_E20130731=max3_E20130731/rms3_E20130731;
CF4_E20130731=max4_E20130731/rms4_E20130731;
CF_ort_E20130731=(CF1_E20130731+CF2_E20130731+CF3_E20130731+CF4_E20130731)/4;
 
CF_mod1_E20130731=max_mod1_E20130731/rms_mod1_E20130731;
CF_mod2_E20130731=max_mod2_E20130731/rms_mod2_E20130731;
CF_mod3_E20130731=max_mod3_E20130731/rms_mod3_E20130731;
CF_mod4_E20130731=max_mod4_E20130731/rms_mod4_E20130731;
CF_modort_E20130731=(CF_mod1_E20130731+CF_mod2_E20130731+CF_mod3_E20130731+CF_mod4_E20130731)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% 
%% summary Pulverizer C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Time_nC=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_C=datenum(Time_nC);
AC_CF_modulus=[CF1_C20110614; CF2_C20110614; CF3_C20110614; CF4_C20110614;CF1_C20110914; CF2_C20110914; CF3_C20110914; CF4_C20110914;CF1_C20111213; CF2_C20111213; CF3_C20111213; CF4_C20111213;CF1_C20111228; CF2_C20111228; CF3_C20111228; CF4_C20111228;CF1_C20120105; CF2_C20120105; CF3_C20120105; CF4_C20120105;CF1_C20120118; CF2_C20120118; CF3_C20120118; CF4_C20120118;CF1_C20120131; CF2_C20120131; CF3_C20120131; CF4_C20120131;CF1_C20120306; CF2_C20120306; CF3_C20120306; CF4_C20120306;CF1_C20120518; CF2_C20120518; CF3_C20120518; CF4_C20120518;CF1_C20120530; CF2_C20120530; CF3_C20120530; CF4_C20120530;CF1_C20120621; CF2_C20120621; CF3_C20120621; CF4_C20120621;CF1_C20120726; CF2_C20120726; CF3_C20120726; CF4_C20120726;CF1_C20120731; CF2_C20120731; CF3_C20120731; CF4_C20120731;CF1_C20120924; CF2_C20120924; CF3_C20120924; CF4_C20120924;CF1_C20120926; CF2_C20120926; CF3_C20120926; CF4_C20120926;CF1_C20130118; CF2_C20130118; CF3_C20130118; CF4_C20130118;CF1_C20130311; CF2_C20130311; CF3_C20130311; CF4_C20130311;CF1_C20130612; CF2_C20130612; CF3_C20130612; CF4_C20130612]
AC_CF_sqmodulus=[CF_mod1_C20110614;CF_mod2_C20110614;CF_mod3_C20110614;CF_mod4_C20110614;CF_mod1_C20110914;CF_mod2_C20110914;CF_mod3_C20110914;CF_mod4_C20110914;CF_mod1_C20111213;CF_mod2_C20111213;CF_mod3_C20111213;CF_mod4_C20111213;CF_mod1_C20111228;CF_mod2_C20111228;CF_mod3_C20111228;CF_mod4_C20111228;CF_mod1_C20120105;CF_mod2_C20120105;CF_mod3_C20120105;CF_mod4_C20120105;CF_mod1_C20120118;CF_mod2_C20120118;CF_mod3_C20120118;CF_mod4_C20120118;CF_mod1_C20120131;CF_mod2_C20120131;CF_mod3_C20120131;CF_mod4_C20120131;CF_mod1_C20120306;CF_mod2_C20120306;CF_mod3_C20120306;CF_mod4_C20120306;CF_mod1_C20120518;CF_mod2_C20120518;CF_mod3_C20120518;CF_mod4_C20120518;CF_mod1_C20120530;CF_mod2_C20120530;CF_mod3_C20120530;CF_mod4_C20120530;CF_mod1_C20120621;CF_mod2_C20120621;CF_mod3_C20120621;CF_mod4_C20120621;CF_mod1_C20120726;CF_mod2_C20120726;CF_mod3_C20120726;CF_mod4_C20120726;CF_mod1_C20120731;CF_mod2_C20120731;CF_mod3_C20120731;CF_mod4_C20120731;CF_mod1_C20120924;CF_mod2_C20120924;CF_mod3_C20120924;CF_mod4_C20120924;CF_mod1_C20120926;CF_mod2_C20120926;CF_mod3_C20120926;CF_mod4_C20120926;CF_mod1_C20130118;CF_mod2_C20130118;CF_mod3_C20130118;CF_mod4_C20130118;CF_mod1_C20130311;CF_mod2_C20130311;CF_mod3_C20130311;CF_mod4_C20130311;CF_mod1_C20130612;CF_mod2_C20130612;CF_mod3_C20130612;CF_mod4_C20130612]
AC_SI_modulus=[SI1_C20110614;SI2_C20110614;SI3_C20110614;SI4_C20110614;SI1_C20110914;SI2_C20110914;SI3_C20110914;SI4_C20110914;SI1_C20111213;SI2_C20111213;SI3_C20111213;SI4_C20111213;SI1_C20111228;SI2_C20111228;SI3_C20111228;SI4_C20111228;SI1_C20120105;SI2_C20120105;SI3_C20120105;SI4_C20120105;SI1_C20120118;SI2_C20120118;SI3_C20120118;SI4_C20120118;SI1_C20120131;SI2_C20120131;SI3_C20120131;SI4_C20120131;SI1_C20120306;SI2_C20120306;SI3_C20120306;SI4_C20120306;SI1_C20120518;SI2_C20120518;SI3_C20120518;SI4_C20120518;SI1_C20120530;SI2_C20120530;SI3_C20120530;SI4_C20120530;SI1_C20120621;SI2_C20120621;SI3_C20120621;SI4_C20120621;SI1_C20120726;SI2_C20120726;SI3_C20120726;SI4_C20120726;SI1_C20120731;SI2_C20120731;SI3_C20120731;SI4_C20120731;SI1_C20120924;SI2_C20120924;SI3_C20120924;SI4_C20120924;SI1_C20120926;SI2_C20120926;SI3_C20120926;SI4_C20120926;SI1_C20130118;SI2_C20130118;SI3_C20130118;SI4_C20130118;SI1_C20130311;SI2_C20130311;SI3_C20130311;SI4_C20130311;SI1_C20130612;SI2_C20130612;SI3_C20130612;SI4_C20130612]
AC_SI_sqmodulus=[SI_mod1_C20110614;SI_mod2_C20110614;SI_mod3_C20110614;SI_mod4_C20110614;SI_mod1_C20110914;SI_mod2_C20110914;SI_mod3_C20110914;SI_mod4_C20110914;SI_mod1_C20111213;SI_mod2_C20111213;SI_mod3_C20111213;SI_mod4_C20111213;SI_mod1_C20111228;SI_mod2_C20111228;SI_mod3_C20111228;SI_mod4_C20111228;SI_mod1_C20120105;SI_mod2_C20120105;SI_mod3_C20120105;SI_mod4_C20120105;SI_mod1_C20120118;SI_mod2_C20120118;SI_mod3_C20120118;SI_mod4_C20120118;SI_mod1_C20120131;SI_mod2_C20120131;SI_mod3_C20120131;SI_mod4_C20120131;SI_mod1_C20120306;SI_mod2_C20120306;SI_mod3_C20120306;SI_mod4_C20120306;SI_mod1_C20120518;SI_mod2_C20120518;SI_mod3_C20120518;SI_mod4_C20120518;SI_mod1_C20120530;SI_mod2_C20120530;SI_mod3_C20120530;SI_mod4_C20120530;SI_mod1_C20120621;SI_mod2_C20120621;SI_mod3_C20120621;SI_mod4_C20120621;SI_mod1_C20120726;SI_mod2_C20120726;SI_mod3_C20120726;SI_mod4_C20120726;SI_mod1_C20120731;SI_mod2_C20120731;SI_mod3_C20120731;SI_mod4_C20120731;SI_mod1_C20120924;SI_mod2_C20120924;SI_mod3_C20120924;SI_mod4_C20120924;SI_mod1_C20120926;SI_mod2_C20120926;SI_mod3_C20120926;SI_mod4_C20120926;SI_mod1_C20130118;SI_mod2_C20130118;SI_mod3_C20130118;SI_mod4_C20130118;SI_mod1_C20130311;SI_mod2_C20130311;SI_mod3_C20130311;SI_mod4_C20130311;SI_mod1_C20130612;SI_mod2_C20130612;SI_mod3_C20130612;SI_mod4_C20130612]
AC_SI_new=[SI_rat1_C20110614;SI_rat2_C20110614;SI_rat3_C20110614;SI_rat4_C20110614;SI_rat1_C20110914;SI_rat2_C20110914;SI_rat3_C20110914;SI_rat4_C20110914;SI_rat1_C20111213;SI_rat2_C20111213;SI_rat3_C20111213;SI_rat4_C20111213;SI_rat1_C20111228;SI_rat2_C20111228;SI_rat3_C20111228;SI_rat4_C20111228;SI_rat1_C20120105;SI_rat2_C20120105;SI_rat3_C20120105;SI_rat4_C20120105;SI_rat1_C20120118;SI_rat2_C20120118;SI_rat3_C20120118;SI_rat4_C20120118;SI_rat1_C20120131;SI_rat2_C20120131;SI_rat3_C20120131;SI_rat4_C20120131;SI_rat1_C20120306;SI_rat2_C20120306;SI_rat3_C20120306;SI_rat4_C20120306;SI_rat1_C20120518;SI_rat2_C20120518;SI_rat3_C20120518;SI_rat4_C20120518;SI_rat1_C20120530;SI_rat2_C20120530;SI_rat3_C20120530;SI_rat4_C20120530;SI_rat1_C20120621;SI_rat2_C20120621;SI_rat3_C20120621;SI_rat4_C20120621;SI_rat1_C20120726;SI_rat2_C20120726;SI_rat3_C20120726;SI_rat4_C20120726;SI_rat1_C20120731;SI_rat2_C20120731;SI_rat3_C20120731;SI_rat4_C20120731;SI_rat1_C20120924;SI_rat2_C20120924;SI_rat3_C20120924;SI_rat4_C20120924;SI_rat1_C20120926;SI_rat2_C20120926;SI_rat3_C20120926;SI_rat4_C20120926;SI_rat1_C20130118;SI_rat2_C20130118;SI_rat3_C20130118;SI_rat4_C20130118;SI_rat1_C20130311;SI_rat2_C20130311;SI_rat3_C20130311;SI_rat4_C20130311;SI_rat1_C20130612;SI_rat2_C20130612;SI_rat3_C20130612;SI_rat4_C20130612]

%% summary Pulverizer D
%%%%%%%%%%%%%%%%%%%%
Time_nD=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_D=datenum(Time_nD);
AD_CF_modulus=[CF1_D20110614;CF2_D20110614;CF3_D20110614;CF4_D20110614;CF1_D20110914;CF2_D20110914;CF3_D20110914;CF4_D20110914;CF1_D20111213;CF2_D20111213;CF3_D20111213;CF4_D20111213;CF1_D20111228;CF2_D20111228;CF3_D20111228;CF4_D20111228;CF1_D20120105;CF2_D20120105;CF3_D20120105;CF4_D20120105;CF1_D20120118;CF2_D20120118;CF3_D20120118;CF4_D20120118;CF1_D20120131;CF2_D20120131;CF3_D20120131;CF4_D20120131;CF1_D20120306;CF2_D20120306;CF3_D20120306;CF4_D20120306;CF1_D20120518;CF2_D20120518;CF3_D20120518;CF4_D20120518;CF1_D20120621;CF2_D20120621;CF3_D20120621;CF4_D20120621;CF1_D20120731;CF2_D20120731;CF3_D20120731;CF4_D20120731;CF1_D20120924;CF2_D20120924;CF3_D20120924;CF4_D20120924;CF1_D20120926;CF2_D20120926;CF3_D20120926;CF4_D20120926;CF1_D20130118;CF2_D20130118;CF3_D20130118;CF4_D20130118;CF1_D20130311;CF2_D20130311;CF3_D20130311;CF4_D20130311;CF1_D20130612;CF2_D20130612;CF3_D20130612;CF4_D20130612]
AD_CF_sqmodulus=[CF_mod1_D20110614;CF_mod2_D20110614;CF_mod3_D20110614;CF_mod4_D20110614;CF_mod1_D20110914;CF_mod2_D20110914;CF_mod3_D20110914;CF_mod4_D20110914;CF_mod1_D20111213;CF_mod2_D20111213;CF_mod3_D20111213;CF_mod4_D20111213;CF_mod1_D20111228;CF_mod2_D20111228;CF_mod3_D20111228;CF_mod4_D20111228;CF_mod1_D20120105;CF_mod2_D20120105;CF_mod3_D20120105;CF_mod4_D20120105;CF_mod1_D20120118;CF_mod2_D20120118;CF_mod3_D20120118;CF_mod4_D20120118;CF_mod1_D20120131;CF_mod2_D20120131;CF_mod3_D20120131;CF_mod4_D20120131;CF_mod1_D20120306;CF_mod2_D20120306;CF_mod3_D20120306;CF_mod4_D20120306;CF_mod1_D20120518;CF_mod2_D20120518;CF_mod3_D20120518;CF_mod4_D20120518;CF_mod1_D20120621;CF_mod2_D20120621;CF_mod3_D20120621;CF_mod4_D20120621;CF_mod1_D20120731;CF_mod2_D20120731;CF_mod3_D20120731;CF_mod4_D20120731;CF_mod1_D20120924;CF_mod2_D20120924;CF_mod3_D20120924;CF_mod4_D20120924;CF_mod1_D20120926;CF_mod2_D20120926;CF_mod3_D20120926;CF_mod4_D20120926;CF_mod1_D20130118;CF_mod2_D20130118;CF_mod3_D20130118;CF_mod4_D20130118;CF_mod1_D20130311;CF_mod2_D20130311;CF_mod3_D20130311;CF_mod4_D20130311;CF_mod1_D20130612;CF_mod2_D20130612;CF_mod3_D20130612;CF_mod4_D20130612]
AD_SI_modulus=[SI1_D20110614;SI2_D20110614;SI3_D20110614;SI4_D20110614;SI1_D20110914;SI2_D20110914;SI3_D20110914;SI4_D20110914;SI1_D20111213;SI2_D20111213;SI3_D20111213;SI4_D20111213;SI1_D20111228;SI2_D20111228;SI3_D20111228;SI4_D20111228;SI1_D20120105;SI2_D20120105;SI3_D20120105;SI4_D20120105;SI1_D20120118;SI2_D20120118;SI3_D20120118;SI4_D20120118;SI1_D20120131;SI2_D20120131;SI3_D20120131;SI4_D20120131;SI1_D20120306;SI2_D20120306;SI3_D20120306;SI4_D20120306;SI1_D20120518;SI2_D20120518;SI3_D20120518;SI4_D20120518;SI1_D20120621;SI2_D20120621;SI3_D20120621;SI4_D20120621;SI1_D20120731;SI2_D20120731;SI3_D20120731;SI4_D20120731;SI1_D20120924;SI2_D20120924;SI3_D20120924;SI4_D20120924;SI1_D20120926;SI2_D20120926;SI3_D20120926;SI4_D20120926;SI1_D20130118;SI2_D20130118;SI3_D20130118;SI4_D20130118;SI1_D20130311;SI2_D20130311;SI3_D20130311;SI4_D20130311;SI1_D20130612;SI2_D20130612;SI3_D20130612;SI4_D20130612]
AD_SI_sqmodulus=[SI_mod1_D20110614;SI_mod2_D20110614;SI_mod3_D20110614;SI_mod4_D20110614;SI_mod1_D20110914;SI_mod2_D20110914;SI_mod3_D20110914;SI_mod4_D20110914;SI_mod1_D20111213;SI_mod2_D20111213;SI_mod3_D20111213;SI_mod4_D20111213;SI_mod1_D20111228;SI_mod2_D20111228;SI_mod3_D20111228;SI_mod4_D20111228;SI_mod1_D20120105;SI_mod2_D20120105;SI_mod3_D20120105;SI_mod4_D20120105;SI_mod1_D20120118;SI_mod2_D20120118;SI_mod3_D20120118;SI_mod4_D20120118;SI_mod1_D20120131;SI_mod2_D20120131;SI_mod3_D20120131;SI_mod4_D20120131;SI_mod1_D20120306;SI_mod2_D20120306;SI_mod3_D20120306;SI_mod4_D20120306;SI_mod1_D20120518;SI_mod2_D20120518;SI_mod3_D20120518;SI_mod4_D20120518;SI_mod1_D20120621;SI_mod2_D20120621;SI_mod3_D20120621;SI_mod4_D20120621;SI_mod1_D20120731;SI_mod2_D20120731;SI_mod3_D20120731;SI_mod4_D20120731;SI_mod1_D20120924;SI_mod2_D20120924;SI_mod3_D20120924;SI_mod4_D20120924;SI_mod1_D20120926;SI_mod2_D20120926;SI_mod3_D20120926;SI_mod4_D20120926;SI_mod1_D20130118;SI_mod2_D20130118;SI_mod3_D20130118;SI_mod4_D20130118;SI_mod1_D20130311;SI_mod2_D20130311;SI_mod3_D20130311;SI_mod4_D20130311;SI_mod1_D20130612;SI_mod2_D20130612;SI_mod3_D20130612;SI_mod4_D20130612]
AD_SI_new=[SI_rat1_D20110614;SI_rat2_D20110614;SI_rat3_D20110614;SI_rat4_D20110614;SI_rat1_D20110914;SI_rat2_D20110914;SI_rat3_D20110914;SI_rat4_D20110914;SI_rat1_D20111213;SI_rat2_D20111213;SI_rat3_D20111213;SI_rat4_D20111213;SI_rat1_D20111228;SI_rat2_D20111228;SI_rat3_D20111228;SI_rat4_D20111228;SI_rat1_D20120105;SI_rat2_D20120105;SI_rat3_D20120105;SI_rat4_D20120105;SI_rat1_D20120118;SI_rat2_D20120118;SI_rat3_D20120118;SI_rat4_D20120118;SI_rat1_D20120131;SI_rat2_D20120131;SI_rat3_D20120131;SI_rat4_D20120131;SI_rat1_D20120306;SI_rat2_D20120306;SI_rat3_D20120306;SI_rat4_D20120306;SI_rat1_D20120518;SI_rat2_D20120518;SI_rat3_D20120518;SI_rat4_D20120518;SI_rat1_D20120621;SI_rat2_D20120621;SI_rat3_D20120621;SI_rat4_D20120621;SI_rat1_D20120731;SI_rat2_D20120731;SI_rat3_D20120731;SI_rat4_D20120731;SI_rat1_D20120924;SI_rat2_D20120924;SI_rat3_D20120924;SI_rat4_D20120924;SI_rat1_D20120926;SI_rat2_D20120926;SI_rat3_D20120926;SI_rat4_D20120926;SI_rat1_D20130118;SI_rat2_D20130118;SI_rat3_D20130118;SI_rat4_D20130118;SI_rat1_D20130311;SI_rat2_D20130311;SI_rat3_D20130311;SI_rat4_D20130311;SI_rat1_D20130612;SI_rat2_D20130612;SI_rat3_D20130612;SI_rat4_D20130612]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% summary Pulverizer F
%%%%%%%%%%%%%%%%%
Time_nF=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_F=datenum(Time_nF);
AF_CF_modulus=[CF1_F20110614;CF2_F20110614;CF3_F20110614;CF4_F20110614;CF1_F20110914;CF2_F20110914;CF3_F20110914;CF4_F20110914;CF1_F20111213;CF2_F20111213;CF3_F20111213;CF4_F20111213;CF1_F20111228;CF2_F20111228;CF3_F20111228;CF4_F20111228;CF1_F20120105;CF2_F20120105;CF3_F20120105;CF4_F20120105;CF1_F20120118;CF2_F20120118;CF3_F20120118;CF4_F20120118;CF1_F20120131;CF2_F20120131;CF3_F20120131;CF4_F20120131;CF1_F20120306;CF2_F20120306;CF3_F20120306;CF4_F20120306;CF1_F20120518;CF2_F20120518;CF3_F20120518;CF4_F20120518;CF1_F20120621;CF2_F20120621;CF3_F20120621;CF4_F20120621;CF1_F20120731;CF2_F20120731;CF3_F20120731;CF4_F20120731;CF1_F20120924;CF2_F20120924;CF3_F20120924;CF4_F20120924;CF1_F20120926;CF2_F20120926;CF3_F20120926;CF4_F20120926;CF1_F20130118;CF2_F20130118;CF3_F20130118;CF4_F20130118;CF1_F20130311;CF2_F20130311;CF3_F20130311;CF4_F20130311;CF1_F20130612;CF2_F20130612;CF3_F20130612;CF4_F20130612]
AF_CF_sqmodulus=[CF_mod1_F20110614;CF_mod2_F20110614;CF_mod3_F20110614;CF_mod4_F20110614;CF_mod1_F20110914;CF_mod2_F20110914;CF_mod3_F20110914;CF_mod4_F20110914;CF_mod1_F20111213;CF_mod2_F20111213;CF_mod3_F20111213;CF_mod4_F20111213;CF_mod1_F20111228;CF_mod2_F20111228;CF_mod3_F20111228;CF_mod4_F20111228;CF_mod1_F20120105;CF_mod2_F20120105;CF_mod3_F20120105;CF_mod4_F20120105;CF_mod1_F20120118;CF_mod2_F20120118;CF_mod3_F20120118;CF_mod4_F20120118;CF_mod1_F20120131;CF_mod2_F20120131;CF_mod3_F20120131;CF_mod4_F20120131;CF_mod1_F20120306;CF_mod2_F20120306;CF_mod3_F20120306;CF_mod4_F20120306;CF_mod1_F20120518;CF_mod2_F20120518;CF_mod3_F20120518;CF_mod4_F20120518;CF_mod1_F20120621;CF_mod2_F20120621;CF_mod3_F20120621;CF_mod4_F20120621;CF_mod1_F20120731;CF_mod2_F20120731;CF_mod3_F20120731;CF_mod4_F20120731;CF_mod1_F20120924;CF_mod2_F20120924;CF_mod3_F20120924;CF_mod4_F20120924;CF_mod1_F20120926;CF_mod2_F20120926;CF_mod3_F20120926;CF_mod4_F20120926;CF_mod1_F20130118;CF_mod2_F20130118;CF_mod3_F20130118;CF_mod4_F20130118;CF_mod1_F20130311;CF_mod2_F20130311;CF_mod3_F20130311;CF_mod4_F20130311;CF_mod1_F20130612;CF_mod2_F20130612;CF_mod3_F20130612;CF_mod4_F20130612]
AF_SI_modulus=[SI1_F20110614;SI2_F20110614;SI3_F20110614;SI4_F20110614;SI1_F20110914;SI2_F20110914;SI3_F20110914;SI4_F20110914;SI1_F20111213;SI2_F20111213;SI3_F20111213;SI4_F20111213;SI1_F20111228;SI2_F20111228;SI3_F20111228;SI4_F20111228;SI1_F20120105;SI2_F20120105;SI3_F20120105;SI4_F20120105;SI1_F20120118;SI2_F20120118;SI3_F20120118;SI4_F20120118;SI1_F20120131;SI2_F20120131;SI3_F20120131;SI4_F20120131;SI1_F20120306;SI2_F20120306;SI3_F20120306;SI4_F20120306;SI1_F20120518;SI2_F20120518;SI3_F20120518;SI4_F20120518;SI1_F20120621;SI2_F20120621;SI3_F20120621;SI4_F20120621;SI1_F20120731;SI2_F20120731;SI3_F20120731;SI4_F20120731;SI1_F20120924;SI2_F20120924;SI3_F20120924;SI4_F20120924;SI1_F20120926;SI2_F20120926;SI3_F20120926;SI4_F20120926;SI1_F20130118;SI2_F20130118;SI3_F20130118;SI4_F20130118;SI1_F20130311;SI2_F20130311;SI3_F20130311;SI4_F20130311;SI1_F20130612;SI2_F20130612;SI3_F20130612;SI4_F20130612]
AF_SI_sqmodulus=[SI_mod1_F20110614;SI_mod2_F20110614;SI_mod3_F20110614;SI_mod4_F20110614;SI_mod1_F20110914;SI_mod2_F20110914;SI_mod3_F20110914;SI_mod4_F20110914;SI_mod1_F20111213;SI_mod2_F20111213;SI_mod3_F20111213;SI_mod4_F20111213;SI_mod1_F20111228;SI_mod2_F20111228;SI_mod3_F20111228;SI_mod4_F20111228;SI_mod1_F20120105;SI_mod2_F20120105;SI_mod3_F20120105;SI_mod4_F20120105;SI_mod1_F20120118;SI_mod2_F20120118;SI_mod3_F20120118;SI_mod4_F20120118;SI_mod1_F20120131;SI_mod2_F20120131;SI_mod3_F20120131;SI_mod4_F20120131;SI_mod1_F20120306;SI_mod2_F20120306;SI_mod3_F20120306;SI_mod4_F20120306;SI_mod1_F20120518;SI_mod2_F20120518;SI_mod3_F20120518;SI_mod4_F20120518;SI_mod1_F20120621;SI_mod2_F20120621;SI_mod3_F20120621;SI_mod4_F20120621;SI_mod1_F20120731;SI_mod2_F20120731;SI_mod3_F20120731;SI_mod4_F20120731;SI_mod1_F20120924;SI_mod2_F20120924;SI_mod3_F20120924;SI_mod4_F20120924;SI_mod1_F20120926;SI_mod2_F20120926;SI_mod3_F20120926;SI_mod4_F20120926;SI_mod1_F20130118;SI_mod2_F20130118;SI_mod3_F20130118;SI_mod4_F20130118;SI_mod1_F20130311;SI_mod2_F20130311;SI_mod3_F20130311;SI_mod4_F20130311;SI_mod1_F20130612;SI_mod2_F20130612;SI_mod3_F20130612;SI_mod4_F20130612]
AF_SI_new=[SI_rat1_F20110614;SI_rat2_F20110614;SI_rat3_F20110614;SI_rat4_F20110614;SI_rat1_F20110914;SI_rat2_F20110914;SI_rat3_F20110914;SI_rat4_F20110914;SI_rat1_F20111213;SI_rat2_F20111213;SI_rat3_F20111213;SI_rat4_F20111213;SI_rat1_F20111228;SI_rat2_F20111228;SI_rat3_F20111228;SI_rat4_F20111228;SI_rat1_F20120105;SI_rat2_F20120105;SI_rat3_F20120105;SI_rat4_F20120105;SI_rat1_F20120118;SI_rat2_F20120118;SI_rat3_F20120118;SI_rat4_F20120118;SI_rat1_F20120131;SI_rat2_F20120131;SI_rat3_F20120131;SI_rat4_F20120131;SI_rat1_F20120306;SI_rat2_F20120306;SI_rat3_F20120306;SI_rat4_F20120306;SI_rat1_F20120518;SI_rat2_F20120518;SI_rat3_F20120518;SI_rat4_F20120518;SI_rat1_F20120621;SI_rat2_F20120621;SI_rat3_F20120621;SI_rat4_F20120621;SI_rat1_F20120731;SI_rat2_F20120731;SI_rat3_F20120731;SI_rat4_F20120731;SI_rat1_F20120924;SI_rat2_F20120924;SI_rat3_F20120924;SI_rat4_F20120924;SI_rat1_F20120926;SI_rat2_F20120926;SI_rat3_F20120926;SI_rat4_F20120926;SI_rat1_F20130118;SI_rat2_F20130118;SI_rat3_F20130118;SI_rat4_F20130118;SI_rat1_F20130311;SI_rat2_F20130311;SI_rat3_F20130311;SI_rat4_F20130311;SI_rat1_F20130612;SI_rat2_F20130612;SI_rat3_F20130612;SI_rat4_F20130612]

%% summary Pulverizer E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Time_nE=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('09.09.2011');datetime('09.09.2011');datetime('09.09.2011');datetime('09.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('12.07.2012');datetime('12.07.2012');datetime('12.07.2012');datetime('12.07.2012');datetime('13.07.2012');datetime('13.07.2012');datetime('13.07.2012');datetime('13.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013') ;datetime('31.07.2013');datetime('31.07.2013');datetime('31.07.2013');datetime('31.07.2013')];
Time_E=datenum(Time_nE);

AE_CF_modulus=[CF1_E20110614;CF2_E20110614;CF3_E20110614;CF4_E20110614;CF1_E20110909;CF2_E20110909;CF3_E20110909;CF4_E20110909;CF1_E20110914;CF2_E20110914;CF3_E20110914;CF4_E20110914;CF1_E20111213;CF2_E20111213;CF3_E20111213;CF4_E20111213;CF1_E20111228;CF2_E20111228;CF3_E20111228;CF4_E20111228;CF1_E20120105;CF2_E20120105;CF3_E20120105;CF4_E20120105;CF1_E20120118;CF2_E20120118;CF3_E20120118;CF4_E20120118;CF1_E20120131;CF2_E20120131;CF3_E20120131;CF4_E20120131;CF1_E20120306;CF2_E20120306;CF3_E20120306;CF4_E20120306;CF1_E20120518;CF2_E20120518;CF3_E20120518;CF4_E20120518;CF1_E20120530;CF2_E20120530;CF3_E20120530;CF4_E20120530;CF1_E20120621;CF2_E20120621;CF3_E20120621;CF4_E20120621;CF1_E20120712;CF2_E20120712;CF3_E20120712;CF4_E20120712;CF1_E20120713;CF2_E20120713;CF3_E20120713;CF4_E20120713;CF1_E20120731;CF2_E20120731;CF3_E20120731;CF4_E20120731;CF1_E20120924;CF2_E20120924;CF3_E20120924;CF4_E20120924;CF1_E20120926;CF2_E20120926;CF3_E20120926;CF4_E20120926;CF1_E20130118;CF2_E20130118;CF3_E20130118;CF4_E20130118;CF1_E20130311;CF2_E20130311;CF3_E20130311;CF4_E20130311;CF1_E20130612;CF2_E20130612;CF3_E20130612;CF4_E20130612;CF1_E20130731;CF2_E20130731;CF3_E20130731;CF4_E20130731];
AE_CF_sqmodulus=[CF_mod1_E20110614;CF_mod2_E20110614;CF_mod3_E20110614;CF_mod4_E20110614;CF_mod1_E20110909;CF_mod2_E20110909;CF_mod3_E20110909;CF_mod4_E20110909;CF_mod1_E20110914;CF_mod2_E20110914;CF_mod3_E20110914;CF_mod4_E20110914;CF_mod1_E20111213;CF_mod2_E20111213;CF_mod3_E20111213;CF_mod4_E20111213;CF_mod1_E20111228;CF_mod2_E20111228;CF_mod3_E20111228;CF_mod4_E20111228;CF_mod1_E20120105;CF_mod2_E20120105;CF_mod3_E20120105;CF_mod4_E20120105;CF_mod1_E20120118;CF_mod2_E20120118;CF_mod3_E20120118;CF_mod4_E20120118;CF_mod1_E20120131;CF_mod2_E20120131;CF_mod3_E20120131;CF_mod4_E20120131;CF_mod1_E20120306;CF_mod2_E20120306;CF_mod3_E20120306;CF_mod4_E20120306;CF_mod1_E20120518;CF_mod2_E20120518;CF_mod3_E20120518;CF_mod4_E20120518;CF_mod1_E20120530;CF_mod2_E20120530;CF_mod3_E20120530;CF_mod4_E20120530;CF_mod1_E20120621;CF_mod2_E20120621;CF_mod3_E20120621;CF_mod4_E20120621;CF_mod1_E20120712;CF_mod2_E20120712;CF_mod3_E20120712;CF_mod4_E20120712;CF_mod1_E20120713;CF_mod2_E20120713;CF_mod3_E20120713;CF_mod4_E20120713;CF_mod1_E20120731;CF_mod2_E20120731;CF_mod3_E20120731;CF_mod4_E20120731;CF_mod1_E20120924;CF_mod2_E20120924;CF_mod3_E20120924;CF_mod4_E20120924;CF_mod1_E20120926;CF_mod2_E20120926;CF_mod3_E20120926;CF_mod4_E20120926;CF_mod1_E20130118;CF_mod2_E20130118;CF_mod3_E20130118;CF_mod4_E20130118;CF_mod1_E20130311;CF_mod2_E20130311;CF_mod3_E20130311;CF_mod4_E20130311;CF_mod1_E20130612;CF_mod2_E20130612;CF_mod3_E20130612;CF_mod4_E20130612;CF_mod1_E20130731;CF_mod2_E20130731;CF_mod3_E20130731;CF_mod4_E20130731];
AE_SI_modulus=[SI1_E20110614;SI2_E20110614;SI3_E20110614;SI4_E20110614;SI1_E20110909;SI2_E20110909;SI3_E20110909;SI4_E20110909;SI1_E20110914;SI2_E20110914;SI3_E20110914;SI4_E20110914;SI1_E20111213;SI2_E20111213;SI3_E20111213;SI4_E20111213;SI1_E20111228;SI2_E20111228;SI3_E20111228;SI4_E20111228;SI1_E20120105;SI2_E20120105;SI3_E20120105;SI4_E20120105;SI1_E20120118;SI2_E20120118;SI3_E20120118;SI4_E20120118;SI1_E20120131;SI2_E20120131;SI3_E20120131;SI4_E20120131;SI1_E20120306;SI2_E20120306;SI3_E20120306;SI4_E20120306;SI1_E20120518;SI2_E20120518;SI3_E20120518;SI4_E20120518;SI1_E20120530;SI2_E20120530;SI3_E20120530;SI4_E20120530;SI1_E20120621;SI2_E20120621;SI3_E20120621;SI4_E20120621;SI1_E20120712;SI2_E20120712;SI3_E20120712;SI4_E20120712;SI1_E20120713;SI2_E20120713;SI3_E20120713;SI4_E20120713;SI1_E20120731;SI2_E20120731;SI3_E20120731;SI4_E20120731;SI1_E20120924;SI2_E20120924;SI3_E20120924;SI4_E20120924;SI1_E20120926;SI2_E20120926;SI3_E20120926;SI4_E20120926;SI1_E20130118;SI2_E20130118;SI3_E20130118;SI4_E20130118;SI1_E20130311;SI2_E20130311;SI3_E20130311;SI4_E20130311;SI1_E20130612;SI2_E20130612;SI3_E20130612;SI4_E20130612;SI1_E20130731;SI2_E20130731;SI3_E20130731;SI4_E20130731];
AE_SI_sqmodulus=[SI_mod1_E20110614;SI_mod2_E20110614;SI_mod3_E20110614;SI_mod4_E20110614;SI_mod1_E20110909;SI_mod2_E20110909;SI_mod3_E20110909;SI_mod4_E20110909;SI_mod1_E20110914;SI_mod2_E20110914;SI_mod3_E20110914;SI_mod4_E20110914;SI_mod1_E20111213;SI_mod2_E20111213;SI_mod3_E20111213;SI_mod4_E20111213;SI_mod1_E20111228;SI_mod2_E20111228;SI_mod3_E20111228;SI_mod4_E20111228;SI_mod1_E20120105;SI_mod2_E20120105;SI_mod3_E20120105;SI_mod4_E20120105;SI_mod1_E20120118;SI_mod2_E20120118;SI_mod3_E20120118;SI_mod4_E20120118;SI_mod1_E20120131;SI_mod2_E20120131;SI_mod3_E20120131;SI_mod4_E20120131;SI_mod1_E20120306;SI_mod2_E20120306;SI_mod3_E20120306;SI_mod4_E20120306;SI_mod1_E20120518;SI_mod2_E20120518;SI_mod3_E20120518;SI_mod4_E20120518;SI_mod1_E20120530;SI_mod2_E20120530;SI_mod3_E20120530;SI_mod4_E20120530;SI_mod1_E20120621;SI_mod2_E20120621;SI_mod3_E20120621;SI_mod4_E20120621;SI_mod1_E20120712;SI_mod2_E20120712;SI_mod3_E20120712;SI_mod4_E20120712;SI_mod1_E20120713;SI_mod2_E20120713;SI_mod3_E20120713;SI_mod4_E20120713;SI_mod1_E20120731;SI_mod2_E20120731;SI_mod3_E20120731;SI_mod4_E20120731;SI_mod1_E20120924;SI_mod2_E20120924;SI_mod3_E20120924;SI_mod4_E20120924;SI_mod1_E20120926;SI_mod2_E20120926;SI_mod3_E20120926;SI_mod4_E20120926;SI_mod1_E20130118;SI_mod2_E20130118;SI_mod3_E20130118;SI_mod4_E20130118;SI_mod1_E20130311;SI_mod2_E20130311;SI_mod3_E20130311;SI_mod4_E20130311;SI_mod1_E20130612;SI_mod2_E20130612;SI_mod3_E20130612;SI_mod4_E20130612;SI_mod1_E20130731;SI_mod2_E20130731;SI_mod3_E20130731;SI_mod4_E20130731];
AE_SI_new=[SI_rat1_E20110614;SI_rat2_E20110614;SI_rat3_E20110614;SI_rat4_E20110614;SI_rat1_E20110909;SI_rat2_E20110909;SI_rat3_E20110909;SI_rat4_E20110909;SI_rat1_E20110914;SI_rat2_E20110914;SI_rat3_E20110914;SI_rat4_E20110914;SI_rat1_E20111213;SI_rat2_E20111213;SI_rat3_E20111213;SI_rat4_E20111213;SI_rat1_E20111228;SI_rat2_E20111228;SI_rat3_E20111228;SI_rat4_E20111228;SI_rat1_E20120105;SI_rat2_E20120105;SI_rat3_E20120105;SI_rat4_E20120105;SI_rat1_E20120118;SI_rat2_E20120118;SI_rat3_E20120118;SI_rat4_E20120118;SI_rat1_E20120131;SI_rat2_E20120131;SI_rat3_E20120131;SI_rat4_E20120131;SI_rat1_E20120306;SI_rat2_E20120306;SI_rat3_E20120306;SI_rat4_E20120306;SI_rat1_E20120518;SI_rat2_E20120518;SI_rat3_E20120518;SI_rat4_E20120518;SI_rat1_E20120530;SI_rat2_E20120530;SI_rat3_E20120530;SI_rat4_E20120530;SI_rat1_E20120621;SI_rat2_E20120621;SI_rat3_E20120621;SI_rat4_E20120621;SI_rat1_E20120712;SI_rat2_E20120712;SI_rat3_E20120712;SI_rat4_E20120712;SI_rat1_E20120713;SI_rat2_E20120713;SI_rat3_E20120713;SI_rat4_E20120713;SI_rat1_E20120731;SI_rat2_E20120731;SI_rat3_E20120731;SI_rat4_E20120731;SI_rat1_E20120924;SI_rat2_E20120924;SI_rat3_E20120924;SI_rat4_E20120924;SI_rat1_E20120926;SI_rat2_E20120926;SI_rat3_E20120926;SI_rat4_E20120926;SI_rat1_E20130118;SI_rat2_E20130118;SI_rat3_E20130118;SI_rat4_E20130118;SI_rat1_E20130311;SI_rat2_E20130311;SI_rat3_E20130311;SI_rat4_E20130311;SI_rat1_E20130612;SI_rat2_E20130612;SI_rat3_E20130612;SI_rat4_E20130612;SI_rat1_E20130731;SI_rat2_E20130731;SI_rat3_E20130731;SI_rat4_E20130731];
%%
 ALL_TIME=[Time_C;Time_D;Time_F];
 ALL_TRAIN=[AC_CF_modulus;AD_CF_modulus;AF_CF_modulus];
 %%
%Load_Forecast=fittedmodel(Time_A,AA_CF_modulus)
 %%
[fitresult, gof] = createFit(Time_E,AE_CF_modulus)