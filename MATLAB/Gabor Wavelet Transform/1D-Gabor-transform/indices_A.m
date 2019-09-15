clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
alpha=12;
% level of decomposition
J=4;
M  = 4096; 
%% input signal 
%% Pulverizer A
f_read_A20110614 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20110614_B.txt');
f_read_A20110914 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20110914_B.txt');
f_read_A20111213 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20111213_B.txt');
f_read_A20111228 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20111228_B.txt');
f_read_A20120105 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120105_B.txt');
f_read_A20120118 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120118_B.txt');
f_read_A20120131 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120131_B.txt');
f_read_A20120306 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120306_B.txt');
f_read_A20120518 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120518_B.txt');
f_read_A20120521 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120521_B.txt');
f_read_A20120522 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120522_B.txt');
f_read_A20120523 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120523_B.txt');
f_read_A20120619 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120619_B.txt');
f_read_A20120731 = load('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_Acc_Body_CASE_1_20120731_B.txt');

f_A20110614=transpose(f_read_A20110614);
f_A20110914=transpose(f_read_A20110914);
f_A20111213=transpose(f_read_A20111213);
f_A20111228=transpose(f_read_A20111228);
f_A20120105=transpose(f_read_A20120105);
f_A20120118=transpose(f_read_A20120118);
f_A20120131=transpose(f_read_A20120131);
f_A20120306=transpose(f_read_A20120306);
f_A20120518=transpose(f_read_A20120518);
f_A20120521=transpose(f_read_A20120521);
f_A20120522=transpose(f_read_A20120522);
f_A20120523=transpose(f_read_A20120523);
f_A20120619=transpose(f_read_A20120619);
f_A20120731=transpose(f_read_A20120731);

 
%% analysis failure 1
[w_A20110614,w_mod_A20110614,w_sm_A20110614,w_spec_A20110614] = analysisforind(f_A20110614, J, alpha, tau);
[w_A20110914,w_mod_A20110914,w_sm_A20110914,w_spec_A20110914] = analysisforind(f_A20110914, J, alpha, tau);
[w_A20111213,w_mod_A20111213,w_sm_A20111213,w_spec_A20111213] = analysisforind(f_A20111213, J, alpha, tau);
[w_A20111228,w_mod_A20111228,w_sm_A20111228,w_spec_A20111228] = analysisforind(f_A20111228, J, alpha, tau);
[w_A20120105,w_mod_A20120105,w_sm_A20120105,w_spec_A20120105] = analysisforind(f_A20120105, J, alpha, tau);
[w_A20120118,w_mod_A20120118,w_sm_A20120118,w_spec_A20120118] = analysisforind(f_A20120118, J, alpha, tau);
[w_A20120131,w_mod_A20120131,w_sm_A20120131,w_spec_A20120131] = analysisforind(f_A20120131, J, alpha, tau);
[w_A20120306,w_mod_A20120306,w_sm_A20120306,w_spec_A20120306] = analysisforind(f_A20120306, J, alpha, tau);
[w_A20120518,w_mod_A20120518,w_sm_A20120518,w_spec_A20120518] = analysisforind(f_A20120518, J, alpha, tau);
[w_A20120521,w_mod_A20120521,w_sm_A20120521,w_spec_A20120521] = analysisforind(f_A20120521, J, alpha, tau);
[w_A20120522,w_mod_A20120522,w_sm_A20120522,w_spec_A20120522] = analysisforind(f_A20120522, J, alpha, tau);
[w_A20120523,w_mod_A20120523,w_sm_A20120523,w_spec_A20120523] = analysisforind(f_A20120523, J, alpha, tau);
[w_A20120619,w_mod_A20120619,w_sm_A20120619,w_spec_A20120619] = analysisforind(f_A20120619, J, alpha, tau);
[w_A20120731,w_mod_A20120731,w_sm_A20120731,w_spec_A20120731] = analysisforind(f_A20120522, J, alpha, tau);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20110614
w_s_A20110614=table(w_sm_A20110614);
%% 
ww1_A20110614=(w_s_A20110614.w_sm_A20110614{1,1});
ww2_A20110614=(w_s_A20110614.w_sm_A20110614{1,2});
ww3_A20110614=(w_s_A20110614.w_sm_A20110614{1,3});
ww4_A20110614=(w_s_A20110614.w_sm_A20110614{1,4});
%%
SI1_A20110614=geomean(ww1_A20110614)/mean(ww1_A20110614);
SI2_A20110614=geomean(ww2_A20110614)/mean(ww2_A20110614);
SI3_A20110614=geomean(ww3_A20110614)/mean(ww3_A20110614);
SI4_A20110614=geomean(ww4_A20110614)/mean(ww4_A20110614);
%% smoothness index squared modulus  A20110614
w_modu_A20110614=table(w_mod_A20110614);
%%
ww_mod1_A20110614=(w_modu_A20110614.w_mod_A20110614{1,1});
ww_mod2_A20110614=(w_modu_A20110614.w_mod_A20110614{1,2});
ww_mod3_A20110614=(w_modu_A20110614.w_mod_A20110614{1,3});
ww_mod4_A20110614=(w_modu_A20110614.w_mod_A20110614{1,4});
%%
SI_mod1_A20110614=geomean(ww_mod1_A20110614)/mean(ww_mod1_A20110614);
SI_mod2_A20110614=geomean(ww_mod2_A20110614)/mean(ww_mod2_A20110614);
SI_mod3_A20110614=geomean(ww_mod3_A20110614)/mean(ww_mod3_A20110614);
SI_mod4_A20110614=geomean(ww_mod4_A20110614)/mean(ww_mod4_A20110614);
%% smoothness index energy spectrum  A20110614
w_s_A20110614=table(w_spec_A20110614);
%%
ww_rat1_A20110614=abs(w_s_A20110614.w_spec_A20110614{1,1});
ww_rat2_A20110614=abs(w_s_A20110614.w_spec_A20110614{1,2});
ww_rat3_A20110614=abs(w_s_A20110614.w_spec_A20110614{1,3});
ww_rat4_A20110614=abs(w_s_A20110614.w_spec_A20110614{1,4});
%%
new1_A20110614=abs(ww1_A20110614.*ww_rat1_A20110614);
new2_A20110614=abs(ww2_A20110614.*ww_rat2_A20110614);
new3_A20110614=abs(ww3_A20110614.*ww_rat3_A20110614);
new4_A20110614=abs(ww4_A20110614.*ww_rat4_A20110614);
%%
SI_rat1_A20110614=geomean(new1_A20110614)/mean(new1_A20110614);
SI_rat2_A20110614=geomean(new2_A20110614)/mean(new2_A20110614);
SI_rat3_A20110614=geomean(new3_A20110614)/mean(new3_A20110614);
SI_rat4_A20110614=geomean(new4_A20110614)/mean(new4_A20110614);
%% Max  A20110614
max1_A20110614=max(ww1_A20110614);
max2_A20110614=max(ww2_A20110614);
max3_A20110614=max(ww3_A20110614);
max4_A20110614=max(ww4_A20110614);
 
max_mod1_A20110614=max(ww_mod1_A20110614);
max_mod2_A20110614=max(ww_mod2_A20110614);
max_mod3_A20110614=max(ww_mod3_A20110614);
max_mod4_A20110614=max(ww_mod4_A20110614);
%% RMS  A20110614
rms1_A20110614=rms(ww1_A20110614);
rms2_A20110614=rms(ww2_A20110614);
rms3_A20110614=rms(ww3_A20110614);
rms4_A20110614=rms(ww4_A20110614);
 
rms_mod1_A20110614=rms(ww_mod1_A20110614);
rms_mod2_A20110614=rms(ww_mod2_A20110614);
rms_mod3_A20110614=rms(ww_mod3_A20110614);
rms_mod4_A20110614=rms(ww_mod4_A20110614);
%% Crest Factor  A20110614
CF1_A20110614=max1_A20110614/rms1_A20110614;
CF2_A20110614=max2_A20110614/rms2_A20110614;
CF3_A20110614=max3_A20110614/rms3_A20110614;
CF4_A20110614=max4_A20110614/rms4_A20110614;
CF_ort_A20110614=(CF1_A20110614+CF2_A20110614+CF3_A20110614+CF4_A20110614)/4;
 
CF_mod1_A20110614=max_mod1_A20110614/rms_mod1_A20110614;
CF_mod2_A20110614=max_mod2_A20110614/rms_mod2_A20110614;
CF_mod3_A20110614=max_mod3_A20110614/rms_mod3_A20110614;
CF_mod4_A20110614=max_mod4_A20110614/rms_mod4_A20110614;
CF_modort_A20110614=(CF_mod1_A20110614+CF_mod2_A20110614+CF_mod3_A20110614+CF_mod4_A20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20110914
w_s_A20110914=table(w_sm_A20110914);
%% 
ww1_A20110914=(w_s_A20110914.w_sm_A20110914{1,1});
ww2_A20110914=(w_s_A20110914.w_sm_A20110914{1,2});
ww3_A20110914=(w_s_A20110914.w_sm_A20110914{1,3});
ww4_A20110914=(w_s_A20110914.w_sm_A20110914{1,4});
%%
SI1_A20110914=geomean(ww1_A20110914)/mean(ww1_A20110914);
SI2_A20110914=geomean(ww2_A20110914)/mean(ww2_A20110914);
SI3_A20110914=geomean(ww3_A20110914)/mean(ww3_A20110914);
SI4_A20110914=geomean(ww4_A20110914)/mean(ww4_A20110914);
%% smoothness index squared modulus  A20110914
w_modu_A20110914=table(w_mod_A20110914);
%%
ww_mod1_A20110914=(w_modu_A20110914.w_mod_A20110914{1,1});
ww_mod2_A20110914=(w_modu_A20110914.w_mod_A20110914{1,2});
ww_mod3_A20110914=(w_modu_A20110914.w_mod_A20110914{1,3});
ww_mod4_A20110914=(w_modu_A20110914.w_mod_A20110914{1,4});
%%
SI_mod1_A20110914=geomean(ww_mod1_A20110914)/mean(ww_mod1_A20110914);
SI_mod2_A20110914=geomean(ww_mod2_A20110914)/mean(ww_mod2_A20110914);
SI_mod3_A20110914=geomean(ww_mod3_A20110914)/mean(ww_mod3_A20110914);
SI_mod4_A20110914=geomean(ww_mod4_A20110914)/mean(ww_mod4_A20110914);
%% smoothness index energy spectrum  A20110914
w_s_A20110914=table(w_spec_A20110914);
%%
ww_rat1_A20110914=abs(w_s_A20110914.w_spec_A20110914{1,1});
ww_rat2_A20110914=abs(w_s_A20110914.w_spec_A20110914{1,2});
ww_rat3_A20110914=abs(w_s_A20110914.w_spec_A20110914{1,3});
ww_rat4_A20110914=abs(w_s_A20110914.w_spec_A20110914{1,4});
%%
new1_A20110914=abs(ww1_A20110914.*ww_rat1_A20110914);
new2_A20110914=abs(ww2_A20110914.*ww_rat2_A20110914);
new3_A20110914=abs(ww3_A20110914.*ww_rat3_A20110914);
new4_A20110914=abs(ww4_A20110914.*ww_rat4_A20110914);
%%
SI_rat1_A20110914=geomean(new1_A20110914)/mean(new1_A20110914);
SI_rat2_A20110914=geomean(new2_A20110914)/mean(new2_A20110914);
SI_rat3_A20110914=geomean(new3_A20110914)/mean(new3_A20110914);
SI_rat4_A20110914=geomean(new4_A20110914)/mean(new4_A20110914);
%% Max  A20110914
max1_A20110914=max(ww1_A20110914);
max2_A20110914=max(ww2_A20110914);
max3_A20110914=max(ww3_A20110914);
max4_A20110914=max(ww4_A20110914);
 
max_mod1_A20110914=max(ww_mod1_A20110914);
max_mod2_A20110914=max(ww_mod2_A20110914);
max_mod3_A20110914=max(ww_mod3_A20110914);
max_mod4_A20110914=max(ww_mod4_A20110914);
%% RMS  A20110914
rms1_A20110914=rms(ww1_A20110914);
rms2_A20110914=rms(ww2_A20110914);
rms3_A20110914=rms(ww3_A20110914);
rms4_A20110914=rms(ww4_A20110914);
 
rms_mod1_A20110914=rms(ww_mod1_A20110914);
rms_mod2_A20110914=rms(ww_mod2_A20110914);
rms_mod3_A20110914=rms(ww_mod3_A20110914);
rms_mod4_A20110914=rms(ww_mod4_A20110914);
%% Crest Factor  A20110914
CF1_A20110914=max1_A20110914/rms1_A20110914;
CF2_A20110914=max2_A20110914/rms2_A20110914;
CF3_A20110914=max3_A20110914/rms3_A20110914;
CF4_A20110914=max4_A20110914/rms4_A20110914;
CF_ort_A20110914=(CF1_A20110914+CF2_A20110914+CF3_A20110914+CF4_A20110914)/4;
 
CF_mod1_A20110914=max_mod1_A20110914/rms_mod1_A20110914;
CF_mod2_A20110914=max_mod2_A20110914/rms_mod2_A20110914;
CF_mod3_A20110914=max_mod3_A20110914/rms_mod3_A20110914;
CF_mod4_A20110914=max_mod4_A20110914/rms_mod4_A20110914;
CF_modort_A20110914=(CF_mod1_A20110914+CF_mod2_A20110914+CF_mod3_A20110914+CF_mod4_A20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20111213
w_s_A20111213=table(w_sm_A20111213);
%% 
ww1_A20111213=(w_s_A20111213.w_sm_A20111213{1,1});
ww2_A20111213=(w_s_A20111213.w_sm_A20111213{1,2});
ww3_A20111213=(w_s_A20111213.w_sm_A20111213{1,3});
ww4_A20111213=(w_s_A20111213.w_sm_A20111213{1,4});
%%
SI1_A20111213=geomean(ww1_A20111213)/mean(ww1_A20111213);
SI2_A20111213=geomean(ww2_A20111213)/mean(ww2_A20111213);
SI3_A20111213=geomean(ww3_A20111213)/mean(ww3_A20111213);
SI4_A20111213=geomean(ww4_A20111213)/mean(ww4_A20111213);
%% smoothness index squared modulus  A20111213
w_modu_A20111213=table(w_mod_A20111213);
%%
ww_mod1_A20111213=(w_modu_A20111213.w_mod_A20111213{1,1});
ww_mod2_A20111213=(w_modu_A20111213.w_mod_A20111213{1,2});
ww_mod3_A20111213=(w_modu_A20111213.w_mod_A20111213{1,3});
ww_mod4_A20111213=(w_modu_A20111213.w_mod_A20111213{1,4});
%%
SI_mod1_A20111213=geomean(ww_mod1_A20111213)/mean(ww_mod1_A20111213);
SI_mod2_A20111213=geomean(ww_mod2_A20111213)/mean(ww_mod2_A20111213);
SI_mod3_A20111213=geomean(ww_mod3_A20111213)/mean(ww_mod3_A20111213);
SI_mod4_A20111213=geomean(ww_mod4_A20111213)/mean(ww_mod4_A20111213);
%% smoothness index energy spectrum  A20111213
w_s_A20111213=table(w_spec_A20111213);
%%
ww_rat1_A20111213=abs(w_s_A20111213.w_spec_A20111213{1,1});
ww_rat2_A20111213=abs(w_s_A20111213.w_spec_A20111213{1,2});
ww_rat3_A20111213=abs(w_s_A20111213.w_spec_A20111213{1,3});
ww_rat4_A20111213=abs(w_s_A20111213.w_spec_A20111213{1,4});
%%
new1_A20111213=abs(ww1_A20111213.*ww_rat1_A20111213);
new2_A20111213=abs(ww2_A20111213.*ww_rat2_A20111213);
new3_A20111213=abs(ww3_A20111213.*ww_rat3_A20111213);
new4_A20111213=abs(ww4_A20111213.*ww_rat4_A20111213);
%%
SI_rat1_A20111213=geomean(new1_A20111213)/mean(new1_A20111213);
SI_rat2_A20111213=geomean(new2_A20111213)/mean(new2_A20111213);
SI_rat3_A20111213=geomean(new3_A20111213)/mean(new3_A20111213);
SI_rat4_A20111213=geomean(new4_A20111213)/mean(new4_A20111213);
%% Max  A20111213
max1_A20111213=max(ww1_A20111213);
max2_A20111213=max(ww2_A20111213);
max3_A20111213=max(ww3_A20111213);
max4_A20111213=max(ww4_A20111213);
 
max_mod1_A20111213=max(ww_mod1_A20111213);
max_mod2_A20111213=max(ww_mod2_A20111213);
max_mod3_A20111213=max(ww_mod3_A20111213);
max_mod4_A20111213=max(ww_mod4_A20111213);
%% RMS  A20111213
rms1_A20111213=rms(ww1_A20111213);
rms2_A20111213=rms(ww2_A20111213);
rms3_A20111213=rms(ww3_A20111213);
rms4_A20111213=rms(ww4_A20111213);
 
rms_mod1_A20111213=rms(ww_mod1_A20111213);
rms_mod2_A20111213=rms(ww_mod2_A20111213);
rms_mod3_A20111213=rms(ww_mod3_A20111213);
rms_mod4_A20111213=rms(ww_mod4_A20111213);
%% Crest Factor  A20111213
CF1_A20111213=max1_A20111213/rms1_A20111213;
CF2_A20111213=max2_A20111213/rms2_A20111213;
CF3_A20111213=max3_A20111213/rms3_A20111213;
CF4_A20111213=max4_A20111213/rms4_A20111213;
CF_ort_A20111213=(CF1_A20111213+CF2_A20111213+CF3_A20111213+CF4_A20111213)/4;
 
CF_mod1_A20111213=max_mod1_A20111213/rms_mod1_A20111213;
CF_mod2_A20111213=max_mod2_A20111213/rms_mod2_A20111213;
CF_mod3_A20111213=max_mod3_A20111213/rms_mod3_A20111213;
CF_mod4_A20111213=max_mod4_A20111213/rms_mod4_A20111213;
CF_modort_A20111213=(CF_mod1_A20111213+CF_mod2_A20111213+CF_mod3_A20111213+CF_mod4_A20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20111228
w_s_A20111228=table(w_sm_A20111228);
%% 
ww1_A20111228=(w_s_A20111228.w_sm_A20111228{1,1});
ww2_A20111228=(w_s_A20111228.w_sm_A20111228{1,2});
ww3_A20111228=(w_s_A20111228.w_sm_A20111228{1,3});
ww4_A20111228=(w_s_A20111228.w_sm_A20111228{1,4});
%%
SI1_A20111228=geomean(ww1_A20111228)/mean(ww1_A20111228);
SI2_A20111228=geomean(ww2_A20111228)/mean(ww2_A20111228);
SI3_A20111228=geomean(ww3_A20111228)/mean(ww3_A20111228);
SI4_A20111228=geomean(ww4_A20111228)/mean(ww4_A20111228);
%% smoothness index squared modulus  A20111228
w_modu_A20111228=table(w_mod_A20111228);
%%
ww_mod1_A20111228=(w_modu_A20111228.w_mod_A20111228{1,1});
ww_mod2_A20111228=(w_modu_A20111228.w_mod_A20111228{1,2});
ww_mod3_A20111228=(w_modu_A20111228.w_mod_A20111228{1,3});
ww_mod4_A20111228=(w_modu_A20111228.w_mod_A20111228{1,4});
%%
SI_mod1_A20111228=geomean(ww_mod1_A20111228)/mean(ww_mod1_A20111228);
SI_mod2_A20111228=geomean(ww_mod2_A20111228)/mean(ww_mod2_A20111228);
SI_mod3_A20111228=geomean(ww_mod3_A20111228)/mean(ww_mod3_A20111228);
SI_mod4_A20111228=geomean(ww_mod4_A20111228)/mean(ww_mod4_A20111228);
%% smoothness index energy spectrum  A20111228
w_s_A20111228=table(w_spec_A20111228);
%%
ww_rat1_A20111228=abs(w_s_A20111228.w_spec_A20111228{1,1});
ww_rat2_A20111228=abs(w_s_A20111228.w_spec_A20111228{1,2});
ww_rat3_A20111228=abs(w_s_A20111228.w_spec_A20111228{1,3});
ww_rat4_A20111228=abs(w_s_A20111228.w_spec_A20111228{1,4});
%%
new1_A20111228=abs(ww1_A20111228.*ww_rat1_A20111228);
new2_A20111228=abs(ww2_A20111228.*ww_rat2_A20111228);
new3_A20111228=abs(ww3_A20111228.*ww_rat3_A20111228);
new4_A20111228=abs(ww4_A20111228.*ww_rat4_A20111228);
%%
SI_rat1_A20111228=geomean(new1_A20111228)/mean(new1_A20111228);
SI_rat2_A20111228=geomean(new2_A20111228)/mean(new2_A20111228);
SI_rat3_A20111228=geomean(new3_A20111228)/mean(new3_A20111228);
SI_rat4_A20111228=geomean(new4_A20111228)/mean(new4_A20111228);
%% Max  A20111228
max1_A20111228=max(ww1_A20111228);
max2_A20111228=max(ww2_A20111228);
max3_A20111228=max(ww3_A20111228);
max4_A20111228=max(ww4_A20111228);
 
max_mod1_A20111228=max(ww_mod1_A20111228);
max_mod2_A20111228=max(ww_mod2_A20111228);
max_mod3_A20111228=max(ww_mod3_A20111228);
max_mod4_A20111228=max(ww_mod4_A20111228);
%% RMS  A20111228
rms1_A20111228=rms(ww1_A20111228);
rms2_A20111228=rms(ww2_A20111228);
rms3_A20111228=rms(ww3_A20111228);
rms4_A20111228=rms(ww4_A20111228);
 
rms_mod1_A20111228=rms(ww_mod1_A20111228);
rms_mod2_A20111228=rms(ww_mod2_A20111228);
rms_mod3_A20111228=rms(ww_mod3_A20111228);
rms_mod4_A20111228=rms(ww_mod4_A20111228);
%% Crest Factor  A20111228
CF1_A20111228=max1_A20111228/rms1_A20111228;
CF2_A20111228=max2_A20111228/rms2_A20111228;
CF3_A20111228=max3_A20111228/rms3_A20111228;
CF4_A20111228=max4_A20111228/rms4_A20111228;
CF_ort_A20111228=(CF1_A20111228+CF2_A20111228+CF3_A20111228+CF4_A20111228)/4;
 
CF_mod1_A20111228=max_mod1_A20111228/rms_mod1_A20111228;
CF_mod2_A20111228=max_mod2_A20111228/rms_mod2_A20111228;
CF_mod3_A20111228=max_mod3_A20111228/rms_mod3_A20111228;
CF_mod4_A20111228=max_mod4_A20111228/rms_mod4_A20111228;
CF_modort_A20111228=(CF_mod1_A20111228+CF_mod2_A20111228+CF_mod3_A20111228+CF_mod4_A20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120105
w_s_A20120105=table(w_sm_A20120105);
%% 
ww1_A20120105=(w_s_A20120105.w_sm_A20120105{1,1});
ww2_A20120105=(w_s_A20120105.w_sm_A20120105{1,2});
ww3_A20120105=(w_s_A20120105.w_sm_A20120105{1,3});
ww4_A20120105=(w_s_A20120105.w_sm_A20120105{1,4});
%%
SI1_A20120105=geomean(ww1_A20120105)/mean(ww1_A20120105);
SI2_A20120105=geomean(ww2_A20120105)/mean(ww2_A20120105);
SI3_A20120105=geomean(ww3_A20120105)/mean(ww3_A20120105);
SI4_A20120105=geomean(ww4_A20120105)/mean(ww4_A20120105);
%% smoothness index squared modulus  A20120105
w_modu_A20120105=table(w_mod_A20120105);
%%
ww_mod1_A20120105=(w_modu_A20120105.w_mod_A20120105{1,1});
ww_mod2_A20120105=(w_modu_A20120105.w_mod_A20120105{1,2});
ww_mod3_A20120105=(w_modu_A20120105.w_mod_A20120105{1,3});
ww_mod4_A20120105=(w_modu_A20120105.w_mod_A20120105{1,4});
%%
SI_mod1_A20120105=geomean(ww_mod1_A20120105)/mean(ww_mod1_A20120105);
SI_mod2_A20120105=geomean(ww_mod2_A20120105)/mean(ww_mod2_A20120105);
SI_mod3_A20120105=geomean(ww_mod3_A20120105)/mean(ww_mod3_A20120105);
SI_mod4_A20120105=geomean(ww_mod4_A20120105)/mean(ww_mod4_A20120105);
%% smoothness index energy spectrum  A20120105
w_s_A20120105=table(w_spec_A20120105);
%%
ww_rat1_A20120105=abs(w_s_A20120105.w_spec_A20120105{1,1});
ww_rat2_A20120105=abs(w_s_A20120105.w_spec_A20120105{1,2});
ww_rat3_A20120105=abs(w_s_A20120105.w_spec_A20120105{1,3});
ww_rat4_A20120105=abs(w_s_A20120105.w_spec_A20120105{1,4});
%%
new1_A20120105=abs(ww1_A20120105.*ww_rat1_A20120105);
new2_A20120105=abs(ww2_A20120105.*ww_rat2_A20120105);
new3_A20120105=abs(ww3_A20120105.*ww_rat3_A20120105);
new4_A20120105=abs(ww4_A20120105.*ww_rat4_A20120105);
%%
SI_rat1_A20120105=geomean(new1_A20120105)/mean(new1_A20120105);
SI_rat2_A20120105=geomean(new2_A20120105)/mean(new2_A20120105);
SI_rat3_A20120105=geomean(new3_A20120105)/mean(new3_A20120105);
SI_rat4_A20120105=geomean(new4_A20120105)/mean(new4_A20120105);
%% Max  A20120105
max1_A20120105=max(ww1_A20120105);
max2_A20120105=max(ww2_A20120105);
max3_A20120105=max(ww3_A20120105);
max4_A20120105=max(ww4_A20120105);
 
max_mod1_A20120105=max(ww_mod1_A20120105);
max_mod2_A20120105=max(ww_mod2_A20120105);
max_mod3_A20120105=max(ww_mod3_A20120105);
max_mod4_A20120105=max(ww_mod4_A20120105);
%% RMS  A20120105
rms1_A20120105=rms(ww1_A20120105);
rms2_A20120105=rms(ww2_A20120105);
rms3_A20120105=rms(ww3_A20120105);
rms4_A20120105=rms(ww4_A20120105);
 
rms_mod1_A20120105=rms(ww_mod1_A20120105);
rms_mod2_A20120105=rms(ww_mod2_A20120105);
rms_mod3_A20120105=rms(ww_mod3_A20120105);
rms_mod4_A20120105=rms(ww_mod4_A20120105);
%% Crest Factor  A20120105
CF1_A20120105=max1_A20120105/rms1_A20120105;
CF2_A20120105=max2_A20120105/rms2_A20120105;
CF3_A20120105=max3_A20120105/rms3_A20120105;
CF4_A20120105=max4_A20120105/rms4_A20120105;
CF_ort_A20120105=(CF1_A20120105+CF2_A20120105+CF3_A20120105+CF4_A20120105)/4;
 
CF_mod1_A20120105=max_mod1_A20120105/rms_mod1_A20120105;
CF_mod2_A20120105=max_mod2_A20120105/rms_mod2_A20120105;
CF_mod3_A20120105=max_mod3_A20120105/rms_mod3_A20120105;
CF_mod4_A20120105=max_mod4_A20120105/rms_mod4_A20120105;
CF_modort_A20120105=(CF_mod1_A20120105+CF_mod2_A20120105+CF_mod3_A20120105+CF_mod4_A20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120118
w_s_A20120118=table(w_sm_A20120118);
%% 
ww1_A20120118=(w_s_A20120118.w_sm_A20120118{1,1});
ww2_A20120118=(w_s_A20120118.w_sm_A20120118{1,2});
ww3_A20120118=(w_s_A20120118.w_sm_A20120118{1,3});
ww4_A20120118=(w_s_A20120118.w_sm_A20120118{1,4});
%%
SI1_A20120118=geomean(ww1_A20120118)/mean(ww1_A20120118);
SI2_A20120118=geomean(ww2_A20120118)/mean(ww2_A20120118);
SI3_A20120118=geomean(ww3_A20120118)/mean(ww3_A20120118);
SI4_A20120118=geomean(ww4_A20120118)/mean(ww4_A20120118);
%% smoothness index squared modulus  A20120118
w_modu_A20120118=table(w_mod_A20120118);
%%
ww_mod1_A20120118=(w_modu_A20120118.w_mod_A20120118{1,1});
ww_mod2_A20120118=(w_modu_A20120118.w_mod_A20120118{1,2});
ww_mod3_A20120118=(w_modu_A20120118.w_mod_A20120118{1,3});
ww_mod4_A20120118=(w_modu_A20120118.w_mod_A20120118{1,4});
%%
SI_mod1_A20120118=geomean(ww_mod1_A20120118)/mean(ww_mod1_A20120118);
SI_mod2_A20120118=geomean(ww_mod2_A20120118)/mean(ww_mod2_A20120118);
SI_mod3_A20120118=geomean(ww_mod3_A20120118)/mean(ww_mod3_A20120118);
SI_mod4_A20120118=geomean(ww_mod4_A20120118)/mean(ww_mod4_A20120118);
%% smoothness index energy spectrum  A20120118
w_s_A20120118=table(w_spec_A20120118);
%%
ww_rat1_A20120118=abs(w_s_A20120118.w_spec_A20120118{1,1});
ww_rat2_A20120118=abs(w_s_A20120118.w_spec_A20120118{1,2});
ww_rat3_A20120118=abs(w_s_A20120118.w_spec_A20120118{1,3});
ww_rat4_A20120118=abs(w_s_A20120118.w_spec_A20120118{1,4});
%%
new1_A20120118=abs(ww1_A20120118.*ww_rat1_A20120118);
new2_A20120118=abs(ww2_A20120118.*ww_rat2_A20120118);
new3_A20120118=abs(ww3_A20120118.*ww_rat3_A20120118);
new4_A20120118=abs(ww4_A20120118.*ww_rat4_A20120118);
%%
SI_rat1_A20120118=geomean(new1_A20120118)/mean(new1_A20120118);
SI_rat2_A20120118=geomean(new2_A20120118)/mean(new2_A20120118);
SI_rat3_A20120118=geomean(new3_A20120118)/mean(new3_A20120118);
SI_rat4_A20120118=geomean(new4_A20120118)/mean(new4_A20120118);
%% Max  A20120118
max1_A20120118=max(ww1_A20120118);
max2_A20120118=max(ww2_A20120118);
max3_A20120118=max(ww3_A20120118);
max4_A20120118=max(ww4_A20120118);
 
max_mod1_A20120118=max(ww_mod1_A20120118);
max_mod2_A20120118=max(ww_mod2_A20120118);
max_mod3_A20120118=max(ww_mod3_A20120118);
max_mod4_A20120118=max(ww_mod4_A20120118);
%% RMS  A20120118
rms1_A20120118=rms(ww1_A20120118);
rms2_A20120118=rms(ww2_A20120118);
rms3_A20120118=rms(ww3_A20120118);
rms4_A20120118=rms(ww4_A20120118);
 
rms_mod1_A20120118=rms(ww_mod1_A20120118);
rms_mod2_A20120118=rms(ww_mod2_A20120118);
rms_mod3_A20120118=rms(ww_mod3_A20120118);
rms_mod4_A20120118=rms(ww_mod4_A20120118);
%% Crest Factor  A20120118
CF1_A20120118=max1_A20120118/rms1_A20120118;
CF2_A20120118=max2_A20120118/rms2_A20120118;
CF3_A20120118=max3_A20120118/rms3_A20120118;
CF4_A20120118=max4_A20120118/rms4_A20120118;
CF_ort_A20120118=(CF1_A20120118+CF2_A20120118+CF3_A20120118+CF4_A20120118)/4;
 
CF_mod1_A20120118=max_mod1_A20120118/rms_mod1_A20120118;
CF_mod2_A20120118=max_mod2_A20120118/rms_mod2_A20120118;
CF_mod3_A20120118=max_mod3_A20120118/rms_mod3_A20120118;
CF_mod4_A20120118=max_mod4_A20120118/rms_mod4_A20120118;
CF_modort_A20120118=(CF_mod1_A20120118+CF_mod2_A20120118+CF_mod3_A20120118+CF_mod4_A20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120131
w_s_A20120131=table(w_sm_A20120131);
%% 
ww1_A20120131=(w_s_A20120131.w_sm_A20120131{1,1});
ww2_A20120131=(w_s_A20120131.w_sm_A20120131{1,2});
ww3_A20120131=(w_s_A20120131.w_sm_A20120131{1,3});
ww4_A20120131=(w_s_A20120131.w_sm_A20120131{1,4});
%%
SI1_A20120131=geomean(ww1_A20120131)/mean(ww1_A20120131);
SI2_A20120131=geomean(ww2_A20120131)/mean(ww2_A20120131);
SI3_A20120131=geomean(ww3_A20120131)/mean(ww3_A20120131);
SI4_A20120131=geomean(ww4_A20120131)/mean(ww4_A20120131);
%% smoothness index squared modulus  A20120131
w_modu_A20120131=table(w_mod_A20120131);
%%
ww_mod1_A20120131=(w_modu_A20120131.w_mod_A20120131{1,1});
ww_mod2_A20120131=(w_modu_A20120131.w_mod_A20120131{1,2});
ww_mod3_A20120131=(w_modu_A20120131.w_mod_A20120131{1,3});
ww_mod4_A20120131=(w_modu_A20120131.w_mod_A20120131{1,4});
%%
SI_mod1_A20120131=geomean(ww_mod1_A20120131)/mean(ww_mod1_A20120131);
SI_mod2_A20120131=geomean(ww_mod2_A20120131)/mean(ww_mod2_A20120131);
SI_mod3_A20120131=geomean(ww_mod3_A20120131)/mean(ww_mod3_A20120131);
SI_mod4_A20120131=geomean(ww_mod4_A20120131)/mean(ww_mod4_A20120131);
%% smoothness index energy spectrum  A20120131
w_s_A20120131=table(w_spec_A20120131);
%%
ww_rat1_A20120131=abs(w_s_A20120131.w_spec_A20120131{1,1});
ww_rat2_A20120131=abs(w_s_A20120131.w_spec_A20120131{1,2});
ww_rat3_A20120131=abs(w_s_A20120131.w_spec_A20120131{1,3});
ww_rat4_A20120131=abs(w_s_A20120131.w_spec_A20120131{1,4});
%%
new1_A20120131=abs(ww1_A20120131.*ww_rat1_A20120131);
new2_A20120131=abs(ww2_A20120131.*ww_rat2_A20120131);
new3_A20120131=abs(ww3_A20120131.*ww_rat3_A20120131);
new4_A20120131=abs(ww4_A20120131.*ww_rat4_A20120131);
%%
SI_rat1_A20120131=geomean(new1_A20120131)/mean(new1_A20120131);
SI_rat2_A20120131=geomean(new2_A20120131)/mean(new2_A20120131);
SI_rat3_A20120131=geomean(new3_A20120131)/mean(new3_A20120131);
SI_rat4_A20120131=geomean(new4_A20120131)/mean(new4_A20120131);
%% Max  A20120131
max1_A20120131=max(ww1_A20120131);
max2_A20120131=max(ww2_A20120131);
max3_A20120131=max(ww3_A20120131);
max4_A20120131=max(ww4_A20120131);
 
max_mod1_A20120131=max(ww_mod1_A20120131);
max_mod2_A20120131=max(ww_mod2_A20120131);
max_mod3_A20120131=max(ww_mod3_A20120131);
max_mod4_A20120131=max(ww_mod4_A20120131);
%% RMS  A20120131
rms1_A20120131=rms(ww1_A20120131);
rms2_A20120131=rms(ww2_A20120131);
rms3_A20120131=rms(ww3_A20120131);
rms4_A20120131=rms(ww4_A20120131);
 
rms_mod1_A20120131=rms(ww_mod1_A20120131);
rms_mod2_A20120131=rms(ww_mod2_A20120131);
rms_mod3_A20120131=rms(ww_mod3_A20120131);
rms_mod4_A20120131=rms(ww_mod4_A20120131);
%% Crest Factor  A20120131
CF1_A20120131=max1_A20120131/rms1_A20120131;
CF2_A20120131=max2_A20120131/rms2_A20120131;
CF3_A20120131=max3_A20120131/rms3_A20120131;
CF4_A20120131=max4_A20120131/rms4_A20120131;
CF_ort_A20120131=(CF1_A20120131+CF2_A20120131+CF3_A20120131+CF4_A20120131)/4;
 
CF_mod1_A20120131=max_mod1_A20120131/rms_mod1_A20120131;
CF_mod2_A20120131=max_mod2_A20120131/rms_mod2_A20120131;
CF_mod3_A20120131=max_mod3_A20120131/rms_mod3_A20120131;
CF_mod4_A20120131=max_mod4_A20120131/rms_mod4_A20120131;
CF_modort_A20120131=(CF_mod1_A20120131+CF_mod2_A20120131+CF_mod3_A20120131+CF_mod4_A20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120306
w_s_A20120306=table(w_sm_A20120306);
%% 
ww1_A20120306=(w_s_A20120306.w_sm_A20120306{1,1});
ww2_A20120306=(w_s_A20120306.w_sm_A20120306{1,2});
ww3_A20120306=(w_s_A20120306.w_sm_A20120306{1,3});
ww4_A20120306=(w_s_A20120306.w_sm_A20120306{1,4});
%%
SI1_A20120306=geomean(ww1_A20120306)/mean(ww1_A20120306);
SI2_A20120306=geomean(ww2_A20120306)/mean(ww2_A20120306);
SI3_A20120306=geomean(ww3_A20120306)/mean(ww3_A20120306);
SI4_A20120306=geomean(ww4_A20120306)/mean(ww4_A20120306);
%% smoothness index squared modulus  A20120306
w_modu_A20120306=table(w_mod_A20120306);
%%
ww_mod1_A20120306=(w_modu_A20120306.w_mod_A20120306{1,1});
ww_mod2_A20120306=(w_modu_A20120306.w_mod_A20120306{1,2});
ww_mod3_A20120306=(w_modu_A20120306.w_mod_A20120306{1,3});
ww_mod4_A20120306=(w_modu_A20120306.w_mod_A20120306{1,4});
%%
SI_mod1_A20120306=geomean(ww_mod1_A20120306)/mean(ww_mod1_A20120306);
SI_mod2_A20120306=geomean(ww_mod2_A20120306)/mean(ww_mod2_A20120306);
SI_mod3_A20120306=geomean(ww_mod3_A20120306)/mean(ww_mod3_A20120306);
SI_mod4_A20120306=geomean(ww_mod4_A20120306)/mean(ww_mod4_A20120306);
%% smoothness index energy spectrum  A20120306
w_s_A20120306=table(w_spec_A20120306);
%%
ww_rat1_A20120306=abs(w_s_A20120306.w_spec_A20120306{1,1});
ww_rat2_A20120306=abs(w_s_A20120306.w_spec_A20120306{1,2});
ww_rat3_A20120306=abs(w_s_A20120306.w_spec_A20120306{1,3});
ww_rat4_A20120306=abs(w_s_A20120306.w_spec_A20120306{1,4});
%%
new1_A20120306=abs(ww1_A20120306.*ww_rat1_A20120306);
new2_A20120306=abs(ww2_A20120306.*ww_rat2_A20120306);
new3_A20120306=abs(ww3_A20120306.*ww_rat3_A20120306);
new4_A20120306=abs(ww4_A20120306.*ww_rat4_A20120306);
%%
SI_rat1_A20120306=geomean(new1_A20120306)/mean(new1_A20120306);
SI_rat2_A20120306=geomean(new2_A20120306)/mean(new2_A20120306);
SI_rat3_A20120306=geomean(new3_A20120306)/mean(new3_A20120306);
SI_rat4_A20120306=geomean(new4_A20120306)/mean(new4_A20120306);
%% Max  A20120306
max1_A20120306=max(ww1_A20120306);
max2_A20120306=max(ww2_A20120306);
max3_A20120306=max(ww3_A20120306);
max4_A20120306=max(ww4_A20120306);
 
max_mod1_A20120306=max(ww_mod1_A20120306);
max_mod2_A20120306=max(ww_mod2_A20120306);
max_mod3_A20120306=max(ww_mod3_A20120306);
max_mod4_A20120306=max(ww_mod4_A20120306);
%% RMS  A20120306
rms1_A20120306=rms(ww1_A20120306);
rms2_A20120306=rms(ww2_A20120306);
rms3_A20120306=rms(ww3_A20120306);
rms4_A20120306=rms(ww4_A20120306);
 
rms_mod1_A20120306=rms(ww_mod1_A20120306);
rms_mod2_A20120306=rms(ww_mod2_A20120306);
rms_mod3_A20120306=rms(ww_mod3_A20120306);
rms_mod4_A20120306=rms(ww_mod4_A20120306);
%% Crest Factor  A20120306
CF1_A20120306=max1_A20120306/rms1_A20120306;
CF2_A20120306=max2_A20120306/rms2_A20120306;
CF3_A20120306=max3_A20120306/rms3_A20120306;
CF4_A20120306=max4_A20120306/rms4_A20120306;
CF_ort_A20120306=(CF1_A20120306+CF2_A20120306+CF3_A20120306+CF4_A20120306)/4;
 
CF_mod1_A20120306=max_mod1_A20120306/rms_mod1_A20120306;
CF_mod2_A20120306=max_mod2_A20120306/rms_mod2_A20120306;
CF_mod3_A20120306=max_mod3_A20120306/rms_mod3_A20120306;
CF_mod4_A20120306=max_mod4_A20120306/rms_mod4_A20120306;
CF_modort_A20120306=(CF_mod1_A20120306+CF_mod2_A20120306+CF_mod3_A20120306+CF_mod4_A20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120518
w_s_A20120518=table(w_sm_A20120518);
%% 
ww1_A20120518=(w_s_A20120518.w_sm_A20120518{1,1});
ww2_A20120518=(w_s_A20120518.w_sm_A20120518{1,2});
ww3_A20120518=(w_s_A20120518.w_sm_A20120518{1,3});
ww4_A20120518=(w_s_A20120518.w_sm_A20120518{1,4});
%%
SI1_A20120518=geomean(ww1_A20120518)/mean(ww1_A20120518);
SI2_A20120518=geomean(ww2_A20120518)/mean(ww2_A20120518);
SI3_A20120518=geomean(ww3_A20120518)/mean(ww3_A20120518);
SI4_A20120518=geomean(ww4_A20120518)/mean(ww4_A20120518);
%% smoothness index squared modulus  A20120518
w_modu_A20120518=table(w_mod_A20120518);
%%
ww_mod1_A20120518=(w_modu_A20120518.w_mod_A20120518{1,1});
ww_mod2_A20120518=(w_modu_A20120518.w_mod_A20120518{1,2});
ww_mod3_A20120518=(w_modu_A20120518.w_mod_A20120518{1,3});
ww_mod4_A20120518=(w_modu_A20120518.w_mod_A20120518{1,4});
%%
SI_mod1_A20120518=geomean(ww_mod1_A20120518)/mean(ww_mod1_A20120518);
SI_mod2_A20120518=geomean(ww_mod2_A20120518)/mean(ww_mod2_A20120518);
SI_mod3_A20120518=geomean(ww_mod3_A20120518)/mean(ww_mod3_A20120518);
SI_mod4_A20120518=geomean(ww_mod4_A20120518)/mean(ww_mod4_A20120518);
%% smoothness index energy spectrum  A20120518
w_s_A20120518=table(w_spec_A20120518);
%%
ww_rat1_A20120518=abs(w_s_A20120518.w_spec_A20120518{1,1});
ww_rat2_A20120518=abs(w_s_A20120518.w_spec_A20120518{1,2});
ww_rat3_A20120518=abs(w_s_A20120518.w_spec_A20120518{1,3});
ww_rat4_A20120518=abs(w_s_A20120518.w_spec_A20120518{1,4});
%%
new1_A20120518=abs(ww1_A20120518.*ww_rat1_A20120518);
new2_A20120518=abs(ww2_A20120518.*ww_rat2_A20120518);
new3_A20120518=abs(ww3_A20120518.*ww_rat3_A20120518);
new4_A20120518=abs(ww4_A20120518.*ww_rat4_A20120518);
%%
SI_rat1_A20120518=geomean(new1_A20120518)/mean(new1_A20120518);
SI_rat2_A20120518=geomean(new2_A20120518)/mean(new2_A20120518);
SI_rat3_A20120518=geomean(new3_A20120518)/mean(new3_A20120518);
SI_rat4_A20120518=geomean(new4_A20120518)/mean(new4_A20120518);
%% Max  A20120518
max1_A20120518=max(ww1_A20120518);
max2_A20120518=max(ww2_A20120518);
max3_A20120518=max(ww3_A20120518);
max4_A20120518=max(ww4_A20120518);
 
max_mod1_A20120518=max(ww_mod1_A20120518);
max_mod2_A20120518=max(ww_mod2_A20120518);
max_mod3_A20120518=max(ww_mod3_A20120518);
max_mod4_A20120518=max(ww_mod4_A20120518);
%% RMS  A20120518
rms1_A20120518=rms(ww1_A20120518);
rms2_A20120518=rms(ww2_A20120518);
rms3_A20120518=rms(ww3_A20120518);
rms4_A20120518=rms(ww4_A20120518);
 
rms_mod1_A20120518=rms(ww_mod1_A20120518);
rms_mod2_A20120518=rms(ww_mod2_A20120518);
rms_mod3_A20120518=rms(ww_mod3_A20120518);
rms_mod4_A20120518=rms(ww_mod4_A20120518);
%% Crest Factor  A20120518
CF1_A20120518=max1_A20120518/rms1_A20120518;
CF2_A20120518=max2_A20120518/rms2_A20120518;
CF3_A20120518=max3_A20120518/rms3_A20120518;
CF4_A20120518=max4_A20120518/rms4_A20120518;
CF_ort_A20120518=(CF1_A20120518+CF2_A20120518+CF3_A20120518+CF4_A20120518)/4;
 
CF_mod1_A20120518=max_mod1_A20120518/rms_mod1_A20120518;
CF_mod2_A20120518=max_mod2_A20120518/rms_mod2_A20120518;
CF_mod3_A20120518=max_mod3_A20120518/rms_mod3_A20120518;
CF_mod4_A20120518=max_mod4_A20120518/rms_mod4_A20120518;
CF_modort_A20120518=(CF_mod1_A20120518+CF_mod2_A20120518+CF_mod3_A20120518+CF_mod4_A20120518)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120521
w_s_A20120521=table(w_sm_A20120521);
%% 
ww1_A20120521=(w_s_A20120521.w_sm_A20120521{1,1});
ww2_A20120521=(w_s_A20120521.w_sm_A20120521{1,2});
ww3_A20120521=(w_s_A20120521.w_sm_A20120521{1,3});
ww4_A20120521=(w_s_A20120521.w_sm_A20120521{1,4});
%%
SI1_A20120521=geomean(ww1_A20120521)/mean(ww1_A20120521);
SI2_A20120521=geomean(ww2_A20120521)/mean(ww2_A20120521);
SI3_A20120521=geomean(ww3_A20120521)/mean(ww3_A20120521);
SI4_A20120521=geomean(ww4_A20120521)/mean(ww4_A20120521);
%% smoothness index squared modulus  A20120521
w_modu_A20120521=table(w_mod_A20120521);
%%
ww_mod1_A20120521=(w_modu_A20120521.w_mod_A20120521{1,1});
ww_mod2_A20120521=(w_modu_A20120521.w_mod_A20120521{1,2});
ww_mod3_A20120521=(w_modu_A20120521.w_mod_A20120521{1,3});
ww_mod4_A20120521=(w_modu_A20120521.w_mod_A20120521{1,4});
%%
SI_mod1_A20120521=geomean(ww_mod1_A20120521)/mean(ww_mod1_A20120521);
SI_mod2_A20120521=geomean(ww_mod2_A20120521)/mean(ww_mod2_A20120521);
SI_mod3_A20120521=geomean(ww_mod3_A20120521)/mean(ww_mod3_A20120521);
SI_mod4_A20120521=geomean(ww_mod4_A20120521)/mean(ww_mod4_A20120521);
%% smoothness index energy spectrum  A20120521
w_s_A20120521=table(w_spec_A20120521);
%%
ww_rat1_A20120521=abs(w_s_A20120521.w_spec_A20120521{1,1});
ww_rat2_A20120521=abs(w_s_A20120521.w_spec_A20120521{1,2});
ww_rat3_A20120521=abs(w_s_A20120521.w_spec_A20120521{1,3});
ww_rat4_A20120521=abs(w_s_A20120521.w_spec_A20120521{1,4});
%%
new1_A20120521=abs(ww1_A20120521.*ww_rat1_A20120521);
new2_A20120521=abs(ww2_A20120521.*ww_rat2_A20120521);
new3_A20120521=abs(ww3_A20120521.*ww_rat3_A20120521);
new4_A20120521=abs(ww4_A20120521.*ww_rat4_A20120521);
%%
SI_rat1_A20120521=geomean(new1_A20120521)/mean(new1_A20120521);
SI_rat2_A20120521=geomean(new2_A20120521)/mean(new2_A20120521);
SI_rat3_A20120521=geomean(new3_A20120521)/mean(new3_A20120521);
SI_rat4_A20120521=geomean(new4_A20120521)/mean(new4_A20120521);
%% Max  A20120521
max1_A20120521=max(ww1_A20120521);
max2_A20120521=max(ww2_A20120521);
max3_A20120521=max(ww3_A20120521);
max4_A20120521=max(ww4_A20120521);
 
max_mod1_A20120521=max(ww_mod1_A20120521);
max_mod2_A20120521=max(ww_mod2_A20120521);
max_mod3_A20120521=max(ww_mod3_A20120521);
max_mod4_A20120521=max(ww_mod4_A20120521);
%% RMS  A20120521
rms1_A20120521=rms(ww1_A20120521);
rms2_A20120521=rms(ww2_A20120521);
rms3_A20120521=rms(ww3_A20120521);
rms4_A20120521=rms(ww4_A20120521);
 
rms_mod1_A20120521=rms(ww_mod1_A20120521);
rms_mod2_A20120521=rms(ww_mod2_A20120521);
rms_mod3_A20120521=rms(ww_mod3_A20120521);
rms_mod4_A20120521=rms(ww_mod4_A20120521);
%% Crest Factor  A20120521
CF1_A20120521=max1_A20120521/rms1_A20120521;
CF2_A20120521=max2_A20120521/rms2_A20120521;
CF3_A20120521=max3_A20120521/rms3_A20120521;
CF4_A20120521=max4_A20120521/rms4_A20120521;
CF_ort_A20120521=(CF1_A20120521+CF2_A20120521+CF3_A20120521+CF4_A20120521)/4;
 
CF_mod1_A20120521=max_mod1_A20120521/rms_mod1_A20120521;
CF_mod2_A20120521=max_mod2_A20120521/rms_mod2_A20120521;
CF_mod3_A20120521=max_mod3_A20120521/rms_mod3_A20120521;
CF_mod4_A20120521=max_mod4_A20120521/rms_mod4_A20120521;
CF_modort_A20120521=(CF_mod1_A20120521+CF_mod2_A20120521+CF_mod3_A20120521+CF_mod4_A20120521)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120522
w_s_A20120522=table(w_sm_A20120522);
%% 
ww1_A20120522=(w_s_A20120522.w_sm_A20120522{1,1});
ww2_A20120522=(w_s_A20120522.w_sm_A20120522{1,2});
ww3_A20120522=(w_s_A20120522.w_sm_A20120522{1,3});
ww4_A20120522=(w_s_A20120522.w_sm_A20120522{1,4});
%%
SI1_A20120522=geomean(ww1_A20120522)/mean(ww1_A20120522);
SI2_A20120522=geomean(ww2_A20120522)/mean(ww2_A20120522);
SI3_A20120522=geomean(ww3_A20120522)/mean(ww3_A20120522);
SI4_A20120522=geomean(ww4_A20120522)/mean(ww4_A20120522);
%% smoothness index squared modulus  A20120522
w_modu_A20120522=table(w_mod_A20120522);
%%
ww_mod1_A20120522=(w_modu_A20120522.w_mod_A20120522{1,1});
ww_mod2_A20120522=(w_modu_A20120522.w_mod_A20120522{1,2});
ww_mod3_A20120522=(w_modu_A20120522.w_mod_A20120522{1,3});
ww_mod4_A20120522=(w_modu_A20120522.w_mod_A20120522{1,4});
%%
SI_mod1_A20120522=geomean(ww_mod1_A20120522)/mean(ww_mod1_A20120522);
SI_mod2_A20120522=geomean(ww_mod2_A20120522)/mean(ww_mod2_A20120522);
SI_mod3_A20120522=geomean(ww_mod3_A20120522)/mean(ww_mod3_A20120522);
SI_mod4_A20120522=geomean(ww_mod4_A20120522)/mean(ww_mod4_A20120522);
%% smoothness index energy spectrum  A20120522
w_s_A20120522=table(w_spec_A20120522);
%%
ww_rat1_A20120522=abs(w_s_A20120522.w_spec_A20120522{1,1});
ww_rat2_A20120522=abs(w_s_A20120522.w_spec_A20120522{1,2});
ww_rat3_A20120522=abs(w_s_A20120522.w_spec_A20120522{1,3});
ww_rat4_A20120522=abs(w_s_A20120522.w_spec_A20120522{1,4});
%%
new1_A20120522=abs(ww1_A20120522.*ww_rat1_A20120522);
new2_A20120522=abs(ww2_A20120522.*ww_rat2_A20120522);
new3_A20120522=abs(ww3_A20120522.*ww_rat3_A20120522);
new4_A20120522=abs(ww4_A20120522.*ww_rat4_A20120522);
%%
SI_rat1_A20120522=geomean(new1_A20120522)/mean(new1_A20120522);
SI_rat2_A20120522=geomean(new2_A20120522)/mean(new2_A20120522);
SI_rat3_A20120522=geomean(new3_A20120522)/mean(new3_A20120522);
SI_rat4_A20120522=geomean(new4_A20120522)/mean(new4_A20120522);
%% Max  A20120522
max1_A20120522=max(ww1_A20120522);
max2_A20120522=max(ww2_A20120522);
max3_A20120522=max(ww3_A20120522);
max4_A20120522=max(ww4_A20120522);
 
max_mod1_A20120522=max(ww_mod1_A20120522);
max_mod2_A20120522=max(ww_mod2_A20120522);
max_mod3_A20120522=max(ww_mod3_A20120522);
max_mod4_A20120522=max(ww_mod4_A20120522);
%% RMS  A20120522
rms1_A20120522=rms(ww1_A20120522);
rms2_A20120522=rms(ww2_A20120522);
rms3_A20120522=rms(ww3_A20120522);
rms4_A20120522=rms(ww4_A20120522);
 
rms_mod1_A20120522=rms(ww_mod1_A20120522);
rms_mod2_A20120522=rms(ww_mod2_A20120522);
rms_mod3_A20120522=rms(ww_mod3_A20120522);
rms_mod4_A20120522=rms(ww_mod4_A20120522);
%% Crest Factor  A20120522
CF1_A20120522=max1_A20120522/rms1_A20120522;
CF2_A20120522=max2_A20120522/rms2_A20120522;
CF3_A20120522=max3_A20120522/rms3_A20120522;
CF4_A20120522=max4_A20120522/rms4_A20120522;
CF_ort_A20120522=(CF1_A20120522+CF2_A20120522+CF3_A20120522+CF4_A20120522)/4;
 
CF_mod1_A20120522=max_mod1_A20120522/rms_mod1_A20120522;
CF_mod2_A20120522=max_mod2_A20120522/rms_mod2_A20120522;
CF_mod3_A20120522=max_mod3_A20120522/rms_mod3_A20120522;
CF_mod4_A20120522=max_mod4_A20120522/rms_mod4_A20120522;
CF_modort_A20120522=(CF_mod1_A20120522+CF_mod2_A20120522+CF_mod3_A20120522+CF_mod4_A20120522)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120523
w_s_A20120523=table(w_sm_A20120523);
%% 
ww1_A20120523=(w_s_A20120523.w_sm_A20120523{1,1});
ww2_A20120523=(w_s_A20120523.w_sm_A20120523{1,2});
ww3_A20120523=(w_s_A20120523.w_sm_A20120523{1,3});
ww4_A20120523=(w_s_A20120523.w_sm_A20120523{1,4});
%%
SI1_A20120523=geomean(ww1_A20120523)/mean(ww1_A20120523);
SI2_A20120523=geomean(ww2_A20120523)/mean(ww2_A20120523);
SI3_A20120523=geomean(ww3_A20120523)/mean(ww3_A20120523);
SI4_A20120523=geomean(ww4_A20120523)/mean(ww4_A20120523);
%% smoothness index squared modulus  A20120523
w_modu_A20120523=table(w_mod_A20120523);
%%
ww_mod1_A20120523=(w_modu_A20120523.w_mod_A20120523{1,1});
ww_mod2_A20120523=(w_modu_A20120523.w_mod_A20120523{1,2});
ww_mod3_A20120523=(w_modu_A20120523.w_mod_A20120523{1,3});
ww_mod4_A20120523=(w_modu_A20120523.w_mod_A20120523{1,4});
%%
SI_mod1_A20120523=geomean(ww_mod1_A20120523)/mean(ww_mod1_A20120523);
SI_mod2_A20120523=geomean(ww_mod2_A20120523)/mean(ww_mod2_A20120523);
SI_mod3_A20120523=geomean(ww_mod3_A20120523)/mean(ww_mod3_A20120523);
SI_mod4_A20120523=geomean(ww_mod4_A20120523)/mean(ww_mod4_A20120523);
%% smoothness index energy spectrum  A20120523
w_s_A20120523=table(w_spec_A20120523);
%%
ww_rat1_A20120523=abs(w_s_A20120523.w_spec_A20120523{1,1});
ww_rat2_A20120523=abs(w_s_A20120523.w_spec_A20120523{1,2});
ww_rat3_A20120523=abs(w_s_A20120523.w_spec_A20120523{1,3});
ww_rat4_A20120523=abs(w_s_A20120523.w_spec_A20120523{1,4});
%%
new1_A20120523=abs(ww1_A20120523.*ww_rat1_A20120523);
new2_A20120523=abs(ww2_A20120523.*ww_rat2_A20120523);
new3_A20120523=abs(ww3_A20120523.*ww_rat3_A20120523);
new4_A20120523=abs(ww4_A20120523.*ww_rat4_A20120523);
%%
SI_rat1_A20120523=geomean(new1_A20120523)/mean(new1_A20120523);
SI_rat2_A20120523=geomean(new2_A20120523)/mean(new2_A20120523);
SI_rat3_A20120523=geomean(new3_A20120523)/mean(new3_A20120523);
SI_rat4_A20120523=geomean(new4_A20120523)/mean(new4_A20120523);
%% Max  A20120523
max1_A20120523=max(ww1_A20120523);
max2_A20120523=max(ww2_A20120523);
max3_A20120523=max(ww3_A20120523);
max4_A20120523=max(ww4_A20120523);
 
max_mod1_A20120523=max(ww_mod1_A20120523);
max_mod2_A20120523=max(ww_mod2_A20120523);
max_mod3_A20120523=max(ww_mod3_A20120523);
max_mod4_A20120523=max(ww_mod4_A20120523);
%% RMS  A20120523
rms1_A20120523=rms(ww1_A20120523);
rms2_A20120523=rms(ww2_A20120523);
rms3_A20120523=rms(ww3_A20120523);
rms4_A20120523=rms(ww4_A20120523);
 
rms_mod1_A20120523=rms(ww_mod1_A20120523);
rms_mod2_A20120523=rms(ww_mod2_A20120523);
rms_mod3_A20120523=rms(ww_mod3_A20120523);
rms_mod4_A20120523=rms(ww_mod4_A20120523);
%% Crest Factor  A20120523
CF1_A20120523=max1_A20120523/rms1_A20120523;
CF2_A20120523=max2_A20120523/rms2_A20120523;
CF3_A20120523=max3_A20120523/rms3_A20120523;
CF4_A20120523=max4_A20120523/rms4_A20120523;
CF_ort_A20120523=(CF1_A20120523+CF2_A20120523+CF3_A20120523+CF4_A20120523)/4;
 
CF_mod1_A20120523=max_mod1_A20120523/rms_mod1_A20120523;
CF_mod2_A20120523=max_mod2_A20120523/rms_mod2_A20120523;
CF_mod3_A20120523=max_mod3_A20120523/rms_mod3_A20120523;
CF_mod4_A20120523=max_mod4_A20120523/rms_mod4_A20120523;
CF_modort_A20120523=(CF_mod1_A20120523+CF_mod2_A20120523+CF_mod3_A20120523+CF_mod4_A20120523)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120619
w_s_A20120619=table(w_sm_A20120619);
%% 
ww1_A20120619=(w_s_A20120619.w_sm_A20120619{1,1});
ww2_A20120619=(w_s_A20120619.w_sm_A20120619{1,2});
ww3_A20120619=(w_s_A20120619.w_sm_A20120619{1,3});
ww4_A20120619=(w_s_A20120619.w_sm_A20120619{1,4});
%%
SI1_A20120619=geomean(ww1_A20120619)/mean(ww1_A20120619);
SI2_A20120619=geomean(ww2_A20120619)/mean(ww2_A20120619);
SI3_A20120619=geomean(ww3_A20120619)/mean(ww3_A20120619);
SI4_A20120619=geomean(ww4_A20120619)/mean(ww4_A20120619);
%% smoothness index squared modulus  A20120619
w_modu_A20120619=table(w_mod_A20120619);
%%
ww_mod1_A20120619=(w_modu_A20120619.w_mod_A20120619{1,1});
ww_mod2_A20120619=(w_modu_A20120619.w_mod_A20120619{1,2});
ww_mod3_A20120619=(w_modu_A20120619.w_mod_A20120619{1,3});
ww_mod4_A20120619=(w_modu_A20120619.w_mod_A20120619{1,4});
%%
SI_mod1_A20120619=geomean(ww_mod1_A20120619)/mean(ww_mod1_A20120619);
SI_mod2_A20120619=geomean(ww_mod2_A20120619)/mean(ww_mod2_A20120619);
SI_mod3_A20120619=geomean(ww_mod3_A20120619)/mean(ww_mod3_A20120619);
SI_mod4_A20120619=geomean(ww_mod4_A20120619)/mean(ww_mod4_A20120619);
%% smoothness index energy spectrum  A20120619
w_s_A20120619=table(w_spec_A20120619);
%%
ww_rat1_A20120619=abs(w_s_A20120619.w_spec_A20120619{1,1});
ww_rat2_A20120619=abs(w_s_A20120619.w_spec_A20120619{1,2});
ww_rat3_A20120619=abs(w_s_A20120619.w_spec_A20120619{1,3});
ww_rat4_A20120619=abs(w_s_A20120619.w_spec_A20120619{1,4});
%%
new1_A20120619=abs(ww1_A20120619.*ww_rat1_A20120619);
new2_A20120619=abs(ww2_A20120619.*ww_rat2_A20120619);
new3_A20120619=abs(ww3_A20120619.*ww_rat3_A20120619);
new4_A20120619=abs(ww4_A20120619.*ww_rat4_A20120619);
%%
SI_rat1_A20120619=geomean(new1_A20120619)/mean(new1_A20120619);
SI_rat2_A20120619=geomean(new2_A20120619)/mean(new2_A20120619);
SI_rat3_A20120619=geomean(new3_A20120619)/mean(new3_A20120619);
SI_rat4_A20120619=geomean(new4_A20120619)/mean(new4_A20120619);
%% Max  A20120619
max1_A20120619=max(ww1_A20120619);
max2_A20120619=max(ww2_A20120619);
max3_A20120619=max(ww3_A20120619);
max4_A20120619=max(ww4_A20120619);
 
max_mod1_A20120619=max(ww_mod1_A20120619);
max_mod2_A20120619=max(ww_mod2_A20120619);
max_mod3_A20120619=max(ww_mod3_A20120619);
max_mod4_A20120619=max(ww_mod4_A20120619);
%% RMS  A20120619
rms1_A20120619=rms(ww1_A20120619);
rms2_A20120619=rms(ww2_A20120619);
rms3_A20120619=rms(ww3_A20120619);
rms4_A20120619=rms(ww4_A20120619);
 
rms_mod1_A20120619=rms(ww_mod1_A20120619);
rms_mod2_A20120619=rms(ww_mod2_A20120619);
rms_mod3_A20120619=rms(ww_mod3_A20120619);
rms_mod4_A20120619=rms(ww_mod4_A20120619);
%% Crest Factor  A20120619
CF1_A20120619=max1_A20120619/rms1_A20120619;
CF2_A20120619=max2_A20120619/rms2_A20120619;
CF3_A20120619=max3_A20120619/rms3_A20120619;
CF4_A20120619=max4_A20120619/rms4_A20120619;
CF_ort_A20120619=(CF1_A20120619+CF2_A20120619+CF3_A20120619+CF4_A20120619)/4;
 
CF_mod1_A20120619=max_mod1_A20120619/rms_mod1_A20120619;
CF_mod2_A20120619=max_mod2_A20120619/rms_mod2_A20120619;
CF_mod3_A20120619=max_mod3_A20120619/rms_mod3_A20120619;
CF_mod4_A20120619=max_mod4_A20120619/rms_mod4_A20120619;
CF_modort_A20120619=(CF_mod1_A20120619+CF_mod2_A20120619+CF_mod3_A20120619+CF_mod4_A20120619)/4;
 
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  A20120731
w_s_A20120731=table(w_sm_A20120731);
%% 
ww1_A20120731=(w_s_A20120731.w_sm_A20120731{1,1});
ww2_A20120731=(w_s_A20120731.w_sm_A20120731{1,2});
ww3_A20120731=(w_s_A20120731.w_sm_A20120731{1,3});
ww4_A20120731=(w_s_A20120731.w_sm_A20120731{1,4});
%%
SI1_A20120731=geomean(ww1_A20120731)/mean(ww1_A20120731);
SI2_A20120731=geomean(ww2_A20120731)/mean(ww2_A20120731);
SI3_A20120731=geomean(ww3_A20120731)/mean(ww3_A20120731);
SI4_A20120731=geomean(ww4_A20120731)/mean(ww4_A20120731);
%% smoothness index squared modulus  A20120731
w_modu_A20120731=table(w_mod_A20120731);
%%
ww_mod1_A20120731=(w_modu_A20120731.w_mod_A20120731{1,1});
ww_mod2_A20120731=(w_modu_A20120731.w_mod_A20120731{1,2});
ww_mod3_A20120731=(w_modu_A20120731.w_mod_A20120731{1,3});
ww_mod4_A20120731=(w_modu_A20120731.w_mod_A20120731{1,4});
%%
SI_mod1_A20120731=geomean(ww_mod1_A20120731)/mean(ww_mod1_A20120731);
SI_mod2_A20120731=geomean(ww_mod2_A20120731)/mean(ww_mod2_A20120731);
SI_mod3_A20120731=geomean(ww_mod3_A20120731)/mean(ww_mod3_A20120731);
SI_mod4_A20120731=geomean(ww_mod4_A20120731)/mean(ww_mod4_A20120731);
%% smoothness index energy spectrum  A20120731
w_s_A20120731=table(w_spec_A20120731);
%%
ww_rat1_A20120731=abs(w_s_A20120731.w_spec_A20120731{1,1});
ww_rat2_A20120731=abs(w_s_A20120731.w_spec_A20120731{1,2});
ww_rat3_A20120731=abs(w_s_A20120731.w_spec_A20120731{1,3});
ww_rat4_A20120731=abs(w_s_A20120731.w_spec_A20120731{1,4});
%%
new1_A20120731=abs(ww1_A20120731.*ww_rat1_A20120731);
new2_A20120731=abs(ww2_A20120731.*ww_rat2_A20120731);
new3_A20120731=abs(ww3_A20120731.*ww_rat3_A20120731);
new4_A20120731=abs(ww4_A20120731.*ww_rat4_A20120731);
%%
SI_rat1_A20120731=geomean(new1_A20120731)/mean(new1_A20120731);
SI_rat2_A20120731=geomean(new2_A20120731)/mean(new2_A20120731);
SI_rat3_A20120731=geomean(new3_A20120731)/mean(new3_A20120731);
SI_rat4_A20120731=geomean(new4_A20120731)/mean(new4_A20120731);
%% Max  A20120731
max1_A20120731=max(ww1_A20120731);
max2_A20120731=max(ww2_A20120731);
max3_A20120731=max(ww3_A20120731);
max4_A20120731=max(ww4_A20120731);
 
max_mod1_A20120731=max(ww_mod1_A20120731);
max_mod2_A20120731=max(ww_mod2_A20120731);
max_mod3_A20120731=max(ww_mod3_A20120731);
max_mod4_A20120731=max(ww_mod4_A20120731);
%% RMS  A20120731
rms1_A20120731=rms(ww1_A20120731);
rms2_A20120731=rms(ww2_A20120731);
rms3_A20120731=rms(ww3_A20120731);
rms4_A20120731=rms(ww4_A20120731);
 
rms_mod1_A20120731=rms(ww_mod1_A20120731);
rms_mod2_A20120731=rms(ww_mod2_A20120731);
rms_mod3_A20120731=rms(ww_mod3_A20120731);
rms_mod4_A20120731=rms(ww_mod4_A20120731);
%% Crest Factor  A20120731
CF1_A20120731=max1_A20120731/rms1_A20120731;
CF2_A20120731=max2_A20120731/rms2_A20120731;
CF3_A20120731=max3_A20120731/rms3_A20120731;
CF4_A20120731=max4_A20120731/rms4_A20120731;
CF_ort_A20120731=(CF1_A20120731+CF2_A20120731+CF3_A20120731+CF4_A20120731)/4;
 
CF_mod1_A20120731=max_mod1_A20120731/rms_mod1_A20120731;
CF_mod2_A20120731=max_mod2_A20120731/rms_mod2_A20120731;
CF_mod3_A20120731=max_mod3_A20120731/rms_mod3_A20120731;
CF_mod4_A20120731=max_mod4_A20120731/rms_mod4_A20120731;
CF_modort_A20120731=(CF_mod1_A20120731+CF_mod2_A20120731+CF_mod3_A20120731+CF_mod4_A20120731)/4;
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% 
%% summary
%%%%%%%%%%%%%%%%%
Time_nA=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('21.05.2012');datetime('21.05.2012');datetime('21.05.2012');datetime('21.05.2012');datetime('22.05.2012');datetime('22.05.2012');datetime('22.05.2012');datetime('22.05.2012');datetime('23.05.2012');datetime('23.05.2012');datetime('23.05.2012');datetime('23.05.2012');datetime('19.06.2012');datetime('19.06.2012');datetime('19.06.2012');datetime('19.06.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012')];
Time_A=datenum(Time_nA);

A_CF_modulus_failure1=[2.68685190363635;2.42068695881037;2.36531117087498;1.68487369933395];
A_CF_modulus_failure2=[3.81537794205145;3.94879426188183;2.72162916027221;2.69402028921970];

AA_CF_modulus=[CF1_A20110614;CF2_A20110614;CF3_A20110614;CF4_A20110614;CF1_A20110914;CF2_A20110914;CF3_A20110914;CF4_A20110914;CF1_A20111213;CF2_A20111213;CF3_A20111213;CF4_A20111213;CF1_A20111228;CF2_A20111228;CF3_A20111228;CF4_A20111228;CF1_A20120105;CF2_A20120105;CF3_A20120105;CF4_A20120105;CF1_A20120118;CF2_A20120118;CF3_A20120118;CF4_A20120118;CF1_A20120131;CF2_A20120131;CF3_A20120131;CF4_A20120131;CF1_A20120306;CF2_A20120306;CF3_A20120306;CF4_A20120306;CF1_A20120518;CF2_A20120518;CF3_A20120518;CF4_A20120518;CF1_A20120521;CF2_A20120521;CF3_A20120521;CF4_A20120521;CF1_A20120522;CF2_A20120522;CF3_A20120522;CF4_A20120522;CF1_A20120523;CF2_A20120523;CF3_A20120523;CF4_A20120523;CF1_A20120619;CF2_A20120619;CF3_A20120619;CF4_A20120619;CF1_A20120731;CF2_A20120731;CF3_A20120731;CF4_A20120731];
A_CF_sqmodulus=[CF_mod1_A20110614 CF_mod2_A20110614 CF_mod3_A20110614 CF_mod4_A20110614;CF_mod1_A20110914 CF_mod2_A20110914 CF_mod3_A20110914 CF_mod4_A20110914;CF_mod1_A20111213 CF_mod2_A20111213 CF_mod3_A20111213 CF_mod4_A20111213;CF_mod1_A20111228 CF_mod2_A20111228 CF_mod3_A20111228 CF_mod4_A20111228;CF_mod1_A20120105 CF_mod2_A20120105 CF_mod3_A20120105 CF_mod4_A20120105;CF_mod1_A20120118 CF_mod2_A20120118 CF_mod3_A20120118 CF_mod4_A20120118;CF_mod1_A20120131 CF_mod2_A20120131 CF_mod3_A20120131 CF_mod4_A20120131;CF_mod1_A20120306 CF_mod2_A20120306 CF_mod3_A20120306 CF_mod4_A20120306;CF_mod1_A20120518 CF_mod2_A20120518 CF_mod3_A20120518 CF_mod4_A20120518;CF_mod1_A20120521 CF_mod2_A20120521 CF_mod3_A20120521 CF_mod4_A20120521;CF_mod1_A20120522 CF_mod2_A20120522 CF_mod3_A20120522 CF_mod4_A20120522;CF_mod1_A20120523 CF_mod2_A20120523 CF_mod3_A20120523 CF_mod4_A20120523;CF_mod1_A20120619 CF_mod2_A20120619 CF_mod3_A20120619 CF_mod4_A20120619;CF_mod1_A20120731 CF_mod2_A20120731 CF_mod3_A20120731 CF_mod4_A20120731]
AA_SI_modulus_A=[SI1_A20110614 SI2_A20110614 SI3_A20110614 SI4_A20110614;SI1_A20110914 SI2_A20110914 SI3_A20110914 SI4_A20110914;SI1_A20111213 SI2_A20111213 SI3_A20111213 SI4_A20111213;SI1_A20111228 SI2_A20111228 SI3_A20111228 SI4_A20111228;SI1_A20120105 SI2_A20120105 SI3_A20120105 SI4_A20120105;SI1_A20120118 SI2_A20120118 SI3_A20120118 SI4_A20120118;SI1_A20120131 SI2_A20120131 SI3_A20120131 SI4_A20120131;SI1_A20120306 SI2_A20120306 SI3_A20120306 SI4_A20120306;SI1_A20120518 SI2_A20120518 SI3_A20120518 SI4_A20120518;SI1_A20120521 SI2_A20120521 SI3_A20120521 SI4_A20120521;SI1_A20120522 SI2_A20120522 SI3_A20120522 SI4_A20120522;SI1_A20120523 SI2_A20120523 SI3_A20120523 SI4_A20120523;SI1_A20120619 SI2_A20120619 SI3_A20120619 SI4_A20120619;SI1_A20120731 SI2_A20120731 SI3_A20120731 SI4_A20120731]
AA_SI_sqmodulus_A=[SI_mod1_A20110614 SI_mod2_A20110614 SI_mod3_A20110614 SI_mod4_A20110614;SI_mod1_A20110914 SI_mod2_A20110914 SI_mod3_A20110914 SI_mod4_A20110914;SI_mod1_A20111213 SI_mod2_A20111213 SI_mod3_A20111213 SI_mod4_A20111213;SI_mod1_A20111228 SI_mod2_A20111228 SI_mod3_A20111228 SI_mod4_A20111228;SI_mod1_A20120105 SI_mod2_A20120105 SI_mod3_A20120105 SI_mod4_A20120105;SI_mod1_A20120118 SI_mod2_A20120118 SI_mod3_A20120118 SI_mod4_A20120118;SI_mod1_A20120131 SI_mod2_A20120131 SI_mod3_A20120131 SI_mod4_A20120131;SI_mod1_A20120306 SI_mod2_A20120306 SI_mod3_A20120306 SI_mod4_A20120306;SI_mod1_A20120518 SI_mod2_A20120518 SI_mod3_A20120518 SI_mod4_A20120518;SI_mod1_A20120521 SI_mod2_A20120521 SI_mod3_A20120521 SI_mod4_A20120521;SI_mod1_A20120522 SI_mod2_A20120522 SI_mod3_A20120522 SI_mod4_A20120522;SI_mod1_A20120523 SI_mod2_A20120523 SI_mod3_A20120523 SI_mod4_A20120523;SI_mod1_A20120619 SI_mod2_A20120619 SI_mod3_A20120619 SI_mod4_A20120619;SI_mod1_A20120731 SI_mod2_A20120731 SI_mod3_A20120731 SI_mod4_A20120731]
AA_SI_new_A=[SI_rat1_A20110614 SI_rat2_A20110614 SI_rat3_A20110614 SI_rat4_A20110614;SI_rat1_A20110914 SI_rat2_A20110914 SI_rat3_A20110914 SI_rat4_A20110914;SI_rat1_A20111213 SI_rat2_A20111213 SI_rat3_A20111213 SI_rat4_A20111213;SI_rat1_A20111228 SI_rat2_A20111228 SI_rat3_A20111228 SI_rat4_A20111228;SI_rat1_A20120105 SI_rat2_A20120105 SI_rat3_A20120105 SI_rat4_A20120105;SI_rat1_A20120118 SI_rat2_A20120118 SI_rat3_A20120118 SI_rat4_A20120118;SI_rat1_A20120131 SI_rat2_A20120131 SI_rat3_A20120131 SI_rat4_A20120131;SI_rat1_A20120306 SI_rat2_A20120306 SI_rat3_A20120306 SI_rat4_A20120306;SI_rat1_A20120518 SI_rat2_A20120518 SI_rat3_A20120518 SI_rat4_A20120518;SI_rat1_A20120521 SI_rat2_A20120521 SI_rat3_A20120521 SI_rat4_A20120521;SI_rat1_A20120522 SI_rat2_A20120522 SI_rat3_A20120522 SI_rat4_A20120522;SI_rat1_A20120523 SI_rat2_A20120523 SI_rat3_A20120523 SI_rat4_A20120523;SI_rat1_A20120619 SI_rat2_A20120619 SI_rat3_A20120619 SI_rat4_A20120619;SI_rat1_A20120731 SI_rat2_A20120731 SI_rat3_A20120731 SI_rat4_A20120731]
 %%
%Load_Forecast=fittedmodel(Time_A,A_CF)
%% Feature extraction
Time_f_nA=[datetime('14.06.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('21.05.2012');datetime('22.05.2012');datetime('23.05.2012');datetime('19.06.2012');datetime('31.07.2012')];
Time_f_A=datenum(Time_f_nA);

CF_modulus_ave_A20110614=(CF1_A20110614+CF2_A20110614+CF3_A20110614+CF4_A20110614)/4;
CF_modulus_ave_A20110914=(CF1_A20110914+CF2_A20110914+CF3_A20110914+CF4_A20110914)/4;
CF_modulus_ave_A20111213=(CF1_A20111213+CF2_A20111213+CF3_A20111213+CF4_A20111213)/4;
CF_modulus_ave_A20111228=(CF1_A20111228+CF2_A20111228+CF3_A20111228+CF4_A20111228)/4;
CF_modulus_ave_A20120105=(CF1_A20120105+CF2_A20120105+CF3_A20120105+CF4_A20120105)/4;
CF_modulus_ave_A20120118=(CF1_A20120118+CF2_A20120118+CF3_A20120118+CF4_A20120118)/4;
CF_modulus_ave_A20120131=(CF1_A20120131+CF2_A20120131+CF3_A20120131+CF4_A20120131)/4;
CF_modulus_ave_A20120306=(CF1_A20120306+CF2_A20120306+CF3_A20120306+CF4_A20120306)/4;
CF_modulus_ave_A20120518=(CF1_A20120518+CF2_A20120518+CF3_A20120518+CF4_A20120518)/4;
CF_modulus_ave_A20120521=(CF1_A20120521+CF2_A20120521+CF3_A20120521+CF4_A20120521)/4;
CF_modulus_ave_A20120522=(CF1_A20120522+CF2_A20120522+CF3_A20120522+CF4_A20120522)/4;
CF_modulus_ave_A20120523=(CF1_A20120523+CF2_A20120523+CF3_A20120523+CF4_A20120523)/4;
CF_modulus_ave_A20120619=(CF1_A20120619+CF2_A20120619+CF3_A20120619+CF4_A20120619)/4;
CF_modulus_ave_A20120731=(CF1_A20120731+CF2_A20120731+CF3_A20120731+CF4_A20120731)/4;

SI_modulus_ave_A20110614=(SI1_A20110614+SI2_A20110614+SI3_A20110614+SI4_A20110614)/4;
SI_modulus_ave_A20110914=(SI1_A20110914+SI2_A20110914+SI3_A20110914+SI4_A20110914)/4;
SI_modulus_ave_A20111213=(SI1_A20111213+SI2_A20111213+SI3_A20111213+SI4_A20111213)/4;
SI_modulus_ave_A20111228=(SI1_A20111228+SI2_A20111228+SI3_A20111228+SI4_A20111228)/4;
SI_modulus_ave_A20120105=(SI1_A20120105+SI2_A20120105+SI3_A20120105+SI4_A20120105)/4;
SI_modulus_ave_A20120118=(SI1_A20120118+SI2_A20120118+SI3_A20120118+SI4_A20120118)/4;
SI_modulus_ave_A20120131=(SI1_A20120131+SI2_A20120131+SI3_A20120131+SI4_A20120131)/4;
SI_modulus_ave_A20120306=(SI1_A20120306+SI2_A20120306+SI3_A20120306+SI4_A20120306)/4;
SI_modulus_ave_A20120518=(SI1_A20120518+SI2_A20120518+SI3_A20120518+SI4_A20120518)/4;
SI_modulus_ave_A20120521=(SI1_A20120521+SI2_A20120521+SI3_A20120521+SI4_A20120521)/4;
SI_modulus_ave_A20120522=(SI1_A20120522+SI2_A20120522+SI3_A20120522+SI4_A20120522)/4;
SI_modulus_ave_A20120523=(SI1_A20120523+SI2_A20120523+SI3_A20120523+SI4_A20120523)/4;
SI_modulus_ave_A20120619=(SI1_A20120619+SI2_A20120619+SI3_A20120619+SI4_A20120619)/4;
SI_modulus_ave_A20120731=(SI1_A20120731+SI2_A20120731+SI3_A20120731+SI4_A20120731)/4;

CF_sqmodulus_ave_A20110614=(CF1_A20110614+CF2_A20110614+CF3_A20110614+CF4_A20110614)/4;
CF_sqmodulus_ave_A20110914=(CF1_A20110914+CF2_A20110914+CF3_A20110914+CF4_A20110914)/4;
CF_sqmodulus_ave_A20111213=(CF1_A20111213+CF2_A20111213+CF3_A20111213+CF4_A20111213)/4;
CF_sqmodulus_ave_A20111228=(CF1_A20111228+CF2_A20111228+CF3_A20111228+CF4_A20111228)/4;
CF_sqmodulus_ave_A20120105=(CF1_A20120105+CF2_A20120105+CF3_A20120105+CF4_A20120105)/4;
CF_sqmodulus_ave_A20120118=(CF1_A20120118+CF2_A20120118+CF3_A20120118+CF4_A20120118)/4;
CF_sqmodulus_ave_A20120131=(CF1_A20120131+CF2_A20120131+CF3_A20120131+CF4_A20120131)/4;
CF_sqmodulus_ave_A20120306=(CF1_A20120306+CF2_A20120306+CF3_A20120306+CF4_A20120306)/4;
CF_sqmodulus_ave_A20120518=(CF1_A20120518+CF2_A20120518+CF3_A20120518+CF4_A20120518)/4;
CF_sqmodulus_ave_A20120521=(CF1_A20120521+CF2_A20120521+CF3_A20120521+CF4_A20120521)/4;
CF_sqmodulus_ave_A20120522=(CF1_A20120522+CF2_A20120522+CF3_A20120522+CF4_A20120522)/4;
CF_sqmodulus_ave_A20120523=(CF1_A20120523+CF2_A20120523+CF3_A20120523+CF4_A20120523)/4;
CF_sqmodulus_ave_A20120619=(CF1_A20120619+CF2_A20120619+CF3_A20120619+CF4_A20120619)/4;
CF_sqmodulus_ave_A20120731=(CF1_A20120731+CF2_A20120731+CF3_A20120731+CF4_A20120731)/4;
 
SI_sqmodulus_ave_A20110614=(SI_mod1_A20110614+SI_mod2_A20110614+SI_mod3_A20110614+SI_mod4_A20110614)/4;
SI_sqmodulus_ave_A20110914=(SI_mod1_A20110914+SI_mod2_A20110914+SI_mod3_A20110914+SI_mod4_A20110914)/4;
SI_sqmodulus_ave_A20111213=(SI_mod1_A20111213+SI_mod2_A20111213+SI_mod3_A20111213+SI_mod4_A20111213)/4;
SI_sqmodulus_ave_A20111228=(SI_mod1_A20111228+SI_mod2_A20111228+SI_mod3_A20111228+SI_mod4_A20111228)/4;
SI_sqmodulus_ave_A20120105=(SI_mod1_A20120105+SI_mod2_A20120105+SI_mod3_A20120105+SI_mod4_A20120105)/4;
SI_sqmodulus_ave_A20120118=(SI_mod1_A20120118+SI_mod2_A20120118+SI_mod3_A20120118+SI_mod4_A20120118)/4;
SI_sqmodulus_ave_A20120131=(SI_mod1_A20120131+SI_mod2_A20120131+SI_mod3_A20120131+SI_mod4_A20120131)/4;
SI_sqmodulus_ave_A20120306=(SI_mod1_A20120306+SI_mod2_A20120306+SI_mod3_A20120306+SI_mod4_A20120306)/4;
SI_sqmodulus_ave_A20120518=(SI_mod1_A20120518+SI_mod2_A20120518+SI_mod3_A20120518+SI_mod4_A20120518)/4;
SI_sqmodulus_ave_A20120521=(SI_mod1_A20120521+SI_mod2_A20120521+SI_mod3_A20120521+SI_mod4_A20120521)/4;
SI_sqmodulus_ave_A20120522=(SI_mod1_A20120522+SI_mod2_A20120522+SI_mod3_A20120522+SI_mod4_A20120522)/4;
SI_sqmodulus_ave_A20120523=(SI_mod1_A20120523+SI_mod2_A20120523+SI_mod3_A20120523+SI_mod4_A20120523)/4;
SI_sqmodulus_ave_A20120619=(SI_mod1_A20120619+SI_mod2_A20120619+SI_mod3_A20120619+SI_mod4_A20120619)/4;
SI_sqmodulus_ave_A20120731=(SI_mod1_A20120731+SI_mod2_A20120731+SI_mod3_A20120731+SI_mod4_A20120731)/4;

SI_rat_ave_A20110614=(SI_rat1_A20110614+SI_rat2_A20110614+SI_rat3_A20110614+SI_rat4_A20110614)/4;
SI_rat_ave_A20110914=(SI_rat1_A20110914+SI_rat2_A20110914+SI_rat3_A20110914+SI_rat4_A20110914)/4;
SI_rat_ave_A20111213=(SI_rat1_A20111213+SI_rat2_A20111213+SI_rat3_A20111213+SI_rat4_A20111213)/4;
SI_rat_ave_A20111228=(SI_rat1_A20111228+SI_rat2_A20111228+SI_rat3_A20111228+SI_rat4_A20111228)/4;
SI_rat_ave_A20120105=(SI_rat1_A20120105+SI_rat2_A20120105+SI_rat3_A20120105+SI_rat4_A20120105)/4;
SI_rat_ave_A20120118=(SI_rat1_A20120118+SI_rat2_A20120118+SI_rat3_A20120118+SI_rat4_A20120118)/4;
SI_rat_ave_A20120131=(SI_rat1_A20120131+SI_rat2_A20120131+SI_rat3_A20120131+SI_rat4_A20120131)/4;
SI_rat_ave_A20120306=(SI_rat1_A20120306+SI_rat2_A20120306+SI_rat3_A20120306+SI_rat4_A20120306)/4;
SI_rat_ave_A20120518=(SI_rat1_A20120518+SI_rat2_A20120518+SI_rat3_A20120518+SI_rat4_A20120518)/4;
SI_rat_ave_A20120521=(SI_rat1_A20120521+SI_rat2_A20120521+SI_rat3_A20120521+SI_rat4_A20120521)/4;
SI_rat_ave_A20120522=(SI_rat1_A20120522+SI_rat2_A20120522+SI_rat3_A20120522+SI_rat4_A20120522)/4;
SI_rat_ave_A20120523=(SI_rat1_A20120523+SI_rat2_A20120523+SI_rat3_A20120523+SI_rat4_A20120523)/4;
SI_rat_ave_A20120619=(SI_rat1_A20120619+SI_rat2_A20120619+SI_rat3_A20120619+SI_rat4_A20120619)/4;
SI_rat_ave_A20120731=(SI_rat1_A20120731+SI_rat2_A20120731+SI_rat3_A20120731+SI_rat4_A20120731)/4;

AAA_SI_rat_ave=[SI_rat_ave_A20110614;SI_rat_ave_A20110914;SI_rat_ave_A20111213;SI_rat_ave_A20111228;SI_rat_ave_A20120105;SI_rat_ave_A20120118;SI_rat_ave_A20120131;SI_rat_ave_A20120306;SI_rat_ave_A20120518;SI_rat_ave_A20120521;SI_rat_ave_A20120522;SI_rat_ave_A20120523;SI_rat_ave_A20120619;SI_rat_ave_A20120731];
SI_rat_feature_A=[Time_f_A AAA_SI_rat_ave];

AAA_SI_sqmodulus_ave=[SI_sqmodulus_ave_A20110614;SI_sqmodulus_ave_A20110914;SI_sqmodulus_ave_A20111213;SI_sqmodulus_ave_A20111228;SI_sqmodulus_ave_A20120105;SI_sqmodulus_ave_A20120118;SI_sqmodulus_ave_A20120131;SI_sqmodulus_ave_A20120306;SI_sqmodulus_ave_A20120518;SI_sqmodulus_ave_A20120521;SI_sqmodulus_ave_A20120522;SI_sqmodulus_ave_A20120523;SI_sqmodulus_ave_A20120619;SI_sqmodulus_ave_A20120731];
SI_sqmodulus_feature_A=[Time_f_A AAA_SI_sqmodulus_ave];
 
AAA_CF_sqmodulus_ave=[CF_sqmodulus_ave_A20110614;CF_sqmodulus_ave_A20110914;CF_sqmodulus_ave_A20111213;CF_sqmodulus_ave_A20111228;CF_sqmodulus_ave_A20120105;CF_sqmodulus_ave_A20120118;CF_sqmodulus_ave_A20120131;CF_sqmodulus_ave_A20120306;CF_sqmodulus_ave_A20120518;CF_sqmodulus_ave_A20120521;CF_sqmodulus_ave_A20120522;CF_sqmodulus_ave_A20120523;CF_sqmodulus_ave_A20120619;CF_sqmodulus_ave_A20120731];
CF_sqmodulus_feature_A=[Time_f_A AAA_CF_sqmodulus_ave];
 
AAA_SI_modulus_ave=[SI_modulus_ave_A20110614;SI_modulus_ave_A20110914;SI_modulus_ave_A20111213;SI_modulus_ave_A20111228;SI_modulus_ave_A20120105;SI_modulus_ave_A20120118;SI_modulus_ave_A20120131;SI_modulus_ave_A20120306;SI_modulus_ave_A20120518;SI_modulus_ave_A20120521;SI_modulus_ave_A20120522;SI_modulus_ave_A20120523;SI_modulus_ave_A20120619;SI_modulus_ave_A20120731];
AAA_SI_modulus_feature_A=[Time_f_A AAA_SI_modulus_ave];

AAA_CF_modulus_ave=[CF_modulus_ave_A20110614;CF_modulus_ave_A20110914;CF_modulus_ave_A20111213;CF_modulus_ave_A20111228;CF_modulus_ave_A20120105;CF_modulus_ave_A20120118;CF_modulus_ave_A20120131;CF_modulus_ave_A20120306;CF_modulus_ave_A20120518;CF_modulus_ave_A20120521;CF_modulus_ave_A20120522;CF_modulus_ave_A20120523;CF_modulus_ave_A20120619;CF_modulus_ave_A20120731];
AAA_CF_modulus_feature_A=[Time_f_A AAA_CF_modulus_ave];

%%
 %After feature extraction
Time_af_nA=[datetime('14.09.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('21.05.2012');datetime('22.05.2012');datetime('23.05.2012');datetime('19.06.2012');datetime('31.07.2012')];
Time_af_A=datenum(Time_af_nA);
CF_modulus_af_ave=[CF_modulus_ave_A20110914;CF_modulus_ave_A20111213;CF_modulus_ave_A20111228;CF_modulus_ave_A20120105;CF_modulus_ave_A20120118;CF_modulus_ave_A20120131;CF_modulus_ave_A20120306;CF_modulus_ave_A20120518;CF_modulus_ave_A20120521;CF_modulus_ave_A20120522;CF_modulus_ave_A20120523;CF_modulus_ave_A20120619;CF_modulus_ave_A20120731];
CF_feature_af_A=[Time_af_A CF_modulus_af_ave];

 %%
[fitresult, gof] = createFit(Time_A,AA_CF_modulus)
