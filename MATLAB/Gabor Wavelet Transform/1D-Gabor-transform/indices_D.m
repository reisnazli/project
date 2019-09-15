clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0.63;         % default 
alpha=8;
% level of decomposition
J=1;
M  = 4096; 
%% input signal 
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% summary
%%%%%%%%%%%%%%%%%%%%
Time_nD=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_D=datenum(Time_nD);
AD_CF_modulus=[CF1_D20110614;CF2_D20110614;CF3_D20110614;CF4_D20110614;CF1_D20110914;CF2_D20110914;CF3_D20110914;CF4_D20110914;CF1_D20111213;CF2_D20111213;CF3_D20111213;CF4_D20111213;CF1_D20111228;CF2_D20111228;CF3_D20111228;CF4_D20111228;CF1_D20120105;CF2_D20120105;CF3_D20120105;CF4_D20120105;CF1_D20120118;CF2_D20120118;CF3_D20120118;CF4_D20120118;CF1_D20120131;CF2_D20120131;CF3_D20120131;CF4_D20120131;CF1_D20120306;CF2_D20120306;CF3_D20120306;CF4_D20120306;CF1_D20120518;CF2_D20120518;CF3_D20120518;CF4_D20120518;CF1_D20120621;CF2_D20120621;CF3_D20120621;CF4_D20120621;CF1_D20120731;CF2_D20120731;CF3_D20120731;CF4_D20120731;CF1_D20120924;CF2_D20120924;CF3_D20120924;CF4_D20120924;CF1_D20120926;CF2_D20120926;CF3_D20120926;CF4_D20120926;CF1_D20130118;CF2_D20130118;CF3_D20130118;CF4_D20130118;CF1_D20130311;CF2_D20130311;CF3_D20130311;CF4_D20130311;CF1_D20130612;CF2_D20130612;CF3_D20130612;CF4_D20130612]
AD_CF=[Time_D AD_CF_modulus]
AD_CF_sqmodulus=[CF_mod1_D20110614;CF_mod2_D20110614;CF_mod3_D20110614;CF_mod4_D20110614;CF_mod1_D20110914;CF_mod2_D20110914;CF_mod3_D20110914;CF_mod4_D20110914;CF_mod1_D20111213;CF_mod2_D20111213;CF_mod3_D20111213;CF_mod4_D20111213;CF_mod1_D20111228;CF_mod2_D20111228;CF_mod3_D20111228;CF_mod4_D20111228;CF_mod1_D20120105;CF_mod2_D20120105;CF_mod3_D20120105;CF_mod4_D20120105;CF_mod1_D20120118;CF_mod2_D20120118;CF_mod3_D20120118;CF_mod4_D20120118;CF_mod1_D20120131;CF_mod2_D20120131;CF_mod3_D20120131;CF_mod4_D20120131;CF_mod1_D20120306;CF_mod2_D20120306;CF_mod3_D20120306;CF_mod4_D20120306;CF_mod1_D20120518;CF_mod2_D20120518;CF_mod3_D20120518;CF_mod4_D20120518;CF_mod1_D20120621;CF_mod2_D20120621;CF_mod3_D20120621;CF_mod4_D20120621;CF_mod1_D20120731;CF_mod2_D20120731;CF_mod3_D20120731;CF_mod4_D20120731;CF_mod1_D20120924;CF_mod2_D20120924;CF_mod3_D20120924;CF_mod4_D20120924;CF_mod1_D20120926;CF_mod2_D20120926;CF_mod3_D20120926;CF_mod4_D20120926;CF_mod1_D20130118;CF_mod2_D20130118;CF_mod3_D20130118;CF_mod4_D20130118;CF_mod1_D20130311;CF_mod2_D20130311;CF_mod3_D20130311;CF_mod4_D20130311;CF_mod1_D20130612;CF_mod2_D20130612;CF_mod3_D20130612;CF_mod4_D20130612]
AD_SI_modulus=[SI1_D20110614;SI2_D20110614;SI3_D20110614;SI4_D20110614;SI1_D20110914;SI2_D20110914;SI3_D20110914;SI4_D20110914;SI1_D20111213;SI2_D20111213;SI3_D20111213;SI4_D20111213;SI1_D20111228;SI2_D20111228;SI3_D20111228;SI4_D20111228;SI1_D20120105;SI2_D20120105;SI3_D20120105;SI4_D20120105;SI1_D20120118;SI2_D20120118;SI3_D20120118;SI4_D20120118;SI1_D20120131;SI2_D20120131;SI3_D20120131;SI4_D20120131;SI1_D20120306;SI2_D20120306;SI3_D20120306;SI4_D20120306;SI1_D20120518;SI2_D20120518;SI3_D20120518;SI4_D20120518;SI1_D20120621;SI2_D20120621;SI3_D20120621;SI4_D20120621;SI1_D20120731;SI2_D20120731;SI3_D20120731;SI4_D20120731;SI1_D20120924;SI2_D20120924;SI3_D20120924;SI4_D20120924;SI1_D20120926;SI2_D20120926;SI3_D20120926;SI4_D20120926;SI1_D20130118;SI2_D20130118;SI3_D20130118;SI4_D20130118;SI1_D20130311;SI2_D20130311;SI3_D20130311;SI4_D20130311;SI1_D20130612;SI2_D20130612;SI3_D20130612;SI4_D20130612]
AD_SI_sqmodulus=[SI_mod1_D20110614;SI_mod2_D20110614;SI_mod3_D20110614;SI_mod4_D20110614;SI_mod1_D20110914;SI_mod2_D20110914;SI_mod3_D20110914;SI_mod4_D20110914;SI_mod1_D20111213;SI_mod2_D20111213;SI_mod3_D20111213;SI_mod4_D20111213;SI_mod1_D20111228;SI_mod2_D20111228;SI_mod3_D20111228;SI_mod4_D20111228;SI_mod1_D20120105;SI_mod2_D20120105;SI_mod3_D20120105;SI_mod4_D20120105;SI_mod1_D20120118;SI_mod2_D20120118;SI_mod3_D20120118;SI_mod4_D20120118;SI_mod1_D20120131;SI_mod2_D20120131;SI_mod3_D20120131;SI_mod4_D20120131;SI_mod1_D20120306;SI_mod2_D20120306;SI_mod3_D20120306;SI_mod4_D20120306;SI_mod1_D20120518;SI_mod2_D20120518;SI_mod3_D20120518;SI_mod4_D20120518;SI_mod1_D20120621;SI_mod2_D20120621;SI_mod3_D20120621;SI_mod4_D20120621;SI_mod1_D20120731;SI_mod2_D20120731;SI_mod3_D20120731;SI_mod4_D20120731;SI_mod1_D20120924;SI_mod2_D20120924;SI_mod3_D20120924;SI_mod4_D20120924;SI_mod1_D20120926;SI_mod2_D20120926;SI_mod3_D20120926;SI_mod4_D20120926;SI_mod1_D20130118;SI_mod2_D20130118;SI_mod3_D20130118;SI_mod4_D20130118;SI_mod1_D20130311;SI_mod2_D20130311;SI_mod3_D20130311;SI_mod4_D20130311;SI_mod1_D20130612;SI_mod2_D20130612;SI_mod3_D20130612;SI_mod4_D20130612]
AD_SI_new=[SI_rat1_D20110614;SI_rat2_D20110614;SI_rat3_D20110614;SI_rat4_D20110614;SI_rat1_D20110914;SI_rat2_D20110914;SI_rat3_D20110914;SI_rat4_D20110914;SI_rat1_D20111213;SI_rat2_D20111213;SI_rat3_D20111213;SI_rat4_D20111213;SI_rat1_D20111228;SI_rat2_D20111228;SI_rat3_D20111228;SI_rat4_D20111228;SI_rat1_D20120105;SI_rat2_D20120105;SI_rat3_D20120105;SI_rat4_D20120105;SI_rat1_D20120118;SI_rat2_D20120118;SI_rat3_D20120118;SI_rat4_D20120118;SI_rat1_D20120131;SI_rat2_D20120131;SI_rat3_D20120131;SI_rat4_D20120131;SI_rat1_D20120306;SI_rat2_D20120306;SI_rat3_D20120306;SI_rat4_D20120306;SI_rat1_D20120518;SI_rat2_D20120518;SI_rat3_D20120518;SI_rat4_D20120518;SI_rat1_D20120621;SI_rat2_D20120621;SI_rat3_D20120621;SI_rat4_D20120621;SI_rat1_D20120731;SI_rat2_D20120731;SI_rat3_D20120731;SI_rat4_D20120731;SI_rat1_D20120924;SI_rat2_D20120924;SI_rat3_D20120924;SI_rat4_D20120924;SI_rat1_D20120926;SI_rat2_D20120926;SI_rat3_D20120926;SI_rat4_D20120926;SI_rat1_D20130118;SI_rat2_D20130118;SI_rat3_D20130118;SI_rat4_D20130118;SI_rat1_D20130311;SI_rat2_D20130311;SI_rat3_D20130311;SI_rat4_D20130311;SI_rat1_D20130612;SI_rat2_D20130612;SI_rat3_D20130612;SI_rat4_D20130612]

ALL_D=[AD_CF_modulus AD_CF_sqmodulus AD_SI_modulus AD_SI_sqmodulus];