clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
alpha=4;
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% summary
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Time_nC=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_C=datenum(Time_nC);
AC_SI_sqmodulus=[SI_mod1_C20110614;SI_mod2_C20110614;SI_mod3_C20110614;SI_mod4_C20110614;SI_mod1_C20110914;SI_mod2_C20110914;SI_mod3_C20110914;SI_mod4_C20110914;SI_mod1_C20111213;SI_mod2_C20111213;SI_mod3_C20111213;SI_mod4_C20111213;SI_mod1_C20111228;SI_mod2_C20111228;SI_mod3_C20111228;SI_mod4_C20111228;SI_mod1_C20120105;SI_mod2_C20120105;SI_mod3_C20120105;SI_mod4_C20120105;SI_mod1_C20120118;SI_mod2_C20120118;SI_mod3_C20120118;SI_mod4_C20120118;SI_mod1_C20120131;SI_mod2_C20120131;SI_mod3_C20120131;SI_mod4_C20120131;SI_mod1_C20120306;SI_mod2_C20120306;SI_mod3_C20120306;SI_mod4_C20120306;SI_mod1_C20120518;SI_mod2_C20120518;SI_mod3_C20120518;SI_mod4_C20120518;SI_mod1_C20120530;SI_mod2_C20120530;SI_mod3_C20120530;SI_mod4_C20120530;SI_mod1_C20120621;SI_mod2_C20120621;SI_mod3_C20120621;SI_mod4_C20120621;SI_mod1_C20120726;SI_mod2_C20120726;SI_mod3_C20120726;SI_mod4_C20120726;SI_mod1_C20120731;SI_mod2_C20120731;SI_mod3_C20120731;SI_mod4_C20120731;SI_mod1_C20120924;SI_mod2_C20120924;SI_mod3_C20120924;SI_mod4_C20120924;SI_mod1_C20120926;SI_mod2_C20120926;SI_mod3_C20120926;SI_mod4_C20120926;SI_mod1_C20130118;SI_mod2_C20130118;SI_mod3_C20130118;SI_mod4_C20130118;SI_mod1_C20130311;SI_mod2_C20130311;SI_mod3_C20130311;SI_mod4_C20130311;SI_mod1_C20130612;SI_mod2_C20130612;SI_mod3_C20130612;SI_mod4_C20130612]

ALL_C=[Time_C AC_SI_sqmodulus];