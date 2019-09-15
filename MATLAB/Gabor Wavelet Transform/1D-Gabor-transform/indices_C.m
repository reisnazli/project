clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0.63;         % default 
alpha=7.9091;
% level of decomposition
J=1;
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
[w_C20110614,w_mod_C20110614] = analysisforind(f_C20110614, J, alpha, tau);
[w_C20110914,w_mod_C20110914] = analysisforind(f_C20110914, J, alpha, tau);
[w_C20111213,w_mod_C20111213] = analysisforind(f_C20111213, J, alpha, tau);
[w_C20111228,w_mod_C20111228] = analysisforind(f_C20111228, J, alpha, tau);
[w_C20120105,w_mod_C20120105] = analysisforind(f_C20120105, J, alpha, tau);
[w_C20120118,w_mod_C20120118] = analysisforind(f_C20120118, J, alpha, tau);
[w_C20120131,w_mod_C20120131] = analysisforind(f_C20120131, J, alpha, tau);
[w_C20120306,w_mod_C20120306] = analysisforind(f_C20120306, J, alpha, tau);
[w_C20120518,w_mod_C20120518] = analysisforind(f_C20120518, J, alpha, tau);
[w_C20120530,w_mod_C20120530] = analysisforind(f_C20120530, J, alpha, tau);
[w_C20120621,w_mod_C20120621] = analysisforind(f_C20120621, J, alpha, tau);
[w_C20120726,w_mod_C20120726] = analysisforind(f_C20120726, J, alpha, tau);
[w_C20120731,w_mod_C20120731] = analysisforind(f_C20120731, J, alpha, tau);
[w_C20120924,w_mod_C20120924] = analysisforind(f_C20120924, J, alpha, tau);
[w_C20120926,w_mod_C20120926] = analysisforind(f_C20120926, J, alpha, tau);
[w_C20130118,w_mod_C20130118] = analysisforind(f_C20130118, J, alpha, tau);
[w_C20130311,w_mod_C20130311] = analysisforind(f_C20130311, J, alpha, tau);
[w_C20130612,w_mod_C20130612] = analysisforind(f_C20130612, J, alpha, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20110914=table(w_C20110914);
%% 
ww1_C20110914=(w_s_C20110914.w_C20110914{1,1});
%%
SI1_C20110914=geomean(ww1_C20110914)/mean(ww1_C20110914);
%% smoothness index squared modulus  C20110914
w_modu_C20110914=table(w_mod_C20110914);
%%
ww_mod1_C20110914=(w_modu_C20110914.w_mod_C20110914{1,1});
%%
SI_mod1_C20110914=geomean(ww_mod1_C20110914)/mean(ww_mod1_C20110914);
%% Max  C20110914
max1_C20110914=max(ww1_C20110914);
 
max_mod1_C20110914=max(ww_mod1_C20110914);
%% RMS  C20110914
rms1_C20110914=rms(ww1_C20110914);
 
rms_mod1_C20110914=rms(ww_mod1_C20110914);
%% Crest Factor  C20110914
CF1_C20110914=max1_C20110914/rms1_C20110914;
 
CF_mod1_C20110914=max_mod1_C20110914/rms_mod1_C20110914;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20111213=table(w_C20111213);
%% 
ww1_C20111213=(w_s_C20111213.w_C20111213{1,1});
%%
SI1_C20111213=geomean(ww1_C20111213)/mean(ww1_C20111213);
%% smoothness index squared modulus  C20111213
w_modu_C20111213=table(w_mod_C20111213);
%%
ww_mod1_C20111213=(w_modu_C20111213.w_mod_C20111213{1,1});
%%
SI_mod1_C20111213=geomean(ww_mod1_C20111213)/mean(ww_mod1_C20111213);
%% Max  C20111213
max1_C20111213=max(ww1_C20111213);
 
max_mod1_C20111213=max(ww_mod1_C20111213);
%% RMS  C20111213
rms1_C20111213=rms(ww1_C20111213);
 
rms_mod1_C20111213=rms(ww_mod1_C20111213);
%% Crest Factor  C20111213
CF1_C20111213=max1_C20111213/rms1_C20111213;

CF_mod1_C20111213=max_mod1_C20111213/rms_mod1_C20111213;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20111228=table(w_C20111228);
%% 
ww1_C20111228=(w_s_C20111228.w_C20111228{1,1});
%%
SI1_C20111228=geomean(ww1_C20111228)/mean(ww1_C20111228);
%% smoothness index squared modulus  C20111228
w_modu_C20111228=table(w_mod_C20111228);
%%
ww_mod1_C20111228=(w_modu_C20111228.w_mod_C20111228{1,1});
%%
SI_mod1_C20111228=geomean(ww_mod1_C20111228)/mean(ww_mod1_C20111228);
%% Max  C20111228
max1_C20111228=max(ww1_C20111228);
 
max_mod1_C20111228=max(ww_mod1_C20111228);
%% RMS  C20111228
rms1_C20111228=rms(ww1_C20111228);
 
rms_mod1_C20111228=rms(ww_mod1_C20111228);
%% Crest Factor  C20111228
CF1_C20111228=max1_C20111228/rms1_C20111228;
 
CF_mod1_C20111228=max_mod1_C20111228/rms_mod1_C20111228;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120105=table(w_C20120105);
%% 
ww1_C20120105=(w_s_C20120105.w_C20120105{1,1});
%%
SI1_C20120105=geomean(ww1_C20120105)/mean(ww1_C20120105);
%% smoothness index squared modulus  C20120105
w_modu_C20120105=table(w_mod_C20120105);
%%
ww_mod1_C20120105=(w_modu_C20120105.w_mod_C20120105{1,1});
%%
SI_mod1_C20120105=geomean(ww_mod1_C20120105)/mean(ww_mod1_C20120105);
%% Max  C20120105
max1_C20120105=max(ww1_C20120105);
 
max_mod1_C20120105=max(ww_mod1_C20120105);
%% RMS  C20120105
rms1_C20120105=rms(ww1_C20120105);
 
rms_mod1_C20120105=rms(ww_mod1_C20120105);
%% Crest Factor  C20120105
CF1_C20120105=max1_C20120105/rms1_C20120105;
 
CF_mod1_C20120105=max_mod1_C20120105/rms_mod1_C20120105;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120118=table(w_C20120118);
%% 
ww1_C20120118=(w_s_C20120118.w_C20120118{1,1});
%%
SI1_C20120118=geomean(ww1_C20120118)/mean(ww1_C20120118);
%% smoothness index squared modulus  C20120118
w_modu_C20120118=table(w_mod_C20120118);
%%
ww_mod1_C20120118=(w_modu_C20120118.w_mod_C20120118{1,1});
%%
SI_mod1_C20120118=geomean(ww_mod1_C20120118)/mean(ww_mod1_C20120118);
%% Max  C20120118
max1_C20120118=max(ww1_C20120118);
 
max_mod1_C20120118=max(ww_mod1_C20120118);
%% RMS  C20120118
rms1_C20120118=rms(ww1_C20120118);
 
rms_mod1_C20120118=rms(ww_mod1_C20120118);
%% Crest Factor  C20120118
CF1_C20120118=max1_C20120118/rms1_C20120118;
 
CF_mod1_C20120118=max_mod1_C20120118/rms_mod1_C20120118;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120131=table(w_C20120131);
%% 
ww1_C20120131=(w_s_C20120131.w_C20120131{1,1});
%%
SI1_C20120131=geomean(ww1_C20120131)/mean(ww1_C20120131);
%% smoothness index squared modulus  C20120131
w_modu_C20120131=table(w_mod_C20120131);
%%
ww_mod1_C20120131=(w_modu_C20120131.w_mod_C20120131{1,1});
%%
SI_mod1_C20120131=geomean(ww_mod1_C20120131)/mean(ww_mod1_C20120131);
%% Max  C20120131
max1_C20120131=max(ww1_C20120131);
 
max_mod1_C20120131=max(ww_mod1_C20120131);
%% RMS  C20120131
rms1_C20120131=rms(ww1_C20120131);
 
rms_mod1_C20120131=rms(ww_mod1_C20120131);
%% Crest Factor  C20120131
CF1_C20120131=max1_C20120131/rms1_C20120131;
 
CF_mod1_C20120131=max_mod1_C20120131/rms_mod1_C20120131;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120306=table(w_C20120306);
%% 
ww1_C20120306=(w_s_C20120306.w_C20120306{1,1});
%%
SI1_C20120306=geomean(ww1_C20120306)/mean(ww1_C20120306);
%% smoothness index squared modulus  C20120306
w_modu_C20120306=table(w_mod_C20120306);
%%
ww_mod1_C20120306=(w_modu_C20120306.w_mod_C20120306{1,1});
%%
SI_mod1_C20120306=geomean(ww_mod1_C20120306)/mean(ww_mod1_C20120306);
%% Max  C20120306
max1_C20120306=max(ww1_C20120306);
 
max_mod1_C20120306=max(ww_mod1_C20120306);
%% RMS  C20120306
rms1_C20120306=rms(ww1_C20120306);
 
rms_mod1_C20120306=rms(ww_mod1_C20120306);
%% Crest Factor  C20120306
CF1_C20120306=max1_C20120306/rms1_C20120306;
 
CF_mod1_C20120306=max_mod1_C20120306/rms_mod1_C20120306;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120518=table(w_C20120518);
%% 
ww1_C20120518=(w_s_C20120518.w_C20120518{1,1});
%%
SI1_C20120518=geomean(ww1_C20120518)/mean(ww1_C20120518);
%% smoothness index squared modulus  C20120518
w_modu_C20120518=table(w_mod_C20120518);
%%
ww_mod1_C20120518=(w_modu_C20120518.w_mod_C20120518{1,1});
%%
SI_mod1_C20120518=geomean(ww_mod1_C20120518)/mean(ww_mod1_C20120518);
%% Max  C20120518
max1_C20120518=max(ww1_C20120518);
 
max_mod1_C20120518=max(ww_mod1_C20120518);
%% RMS  C20120518
rms1_C20120518=rms(ww1_C20120518);
 
rms_mod1_C20120518=rms(ww_mod1_C20120518);
%% Crest Factor  C20120518
CF1_C20120518=max1_C20120518/rms1_C20120518;
 
CF_mod1_C20120518=max_mod1_C20120518/rms_mod1_C20120518;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120530=table(w_C20120530);
%% 
ww1_C20120530=(w_s_C20120530.w_C20120530{1,1});
%%
SI1_C20120530=geomean(ww1_C20120530)/mean(ww1_C20120530);
%% smoothness index squared modulus  C20120530
w_modu_C20120530=table(w_mod_C20120530);
%%
ww_mod1_C20120530=(w_modu_C20120530.w_mod_C20120530{1,1});
%%
SI_mod1_C20120530=geomean(ww_mod1_C20120530)/mean(ww_mod1_C20120530);
%% Max  C20120530
max1_C20120530=max(ww1_C20120530);
 
max_mod1_C20120530=max(ww_mod1_C20120530);
%% RMS  C20120530
rms1_C20120530=rms(ww1_C20120530);
 
rms_mod1_C20120530=rms(ww_mod1_C20120530);
%% Crest Factor  C20120530
CF1_C20120530=max1_C20120530/rms1_C20120530;
 
CF_mod1_C20120530=max_mod1_C20120530/rms_mod1_C20120530;
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120621=table(w_C20120621);
%% 
ww1_C20120621=(w_s_C20120621.w_C20120621{1,1});
%%
SI1_C20120621=geomean(ww1_C20120621)/mean(ww1_C20120621);
%% smoothness index squared modulus  C20120621
w_modu_C20120621=table(w_mod_C20120621);
%%
ww_mod1_C20120621=(w_modu_C20120621.w_mod_C20120621{1,1});
%%
SI_mod1_C20120621=geomean(ww_mod1_C20120621)/mean(ww_mod1_C20120621);
%% Max  C20120621
max1_C20120621=max(ww1_C20120621);
 
max_mod1_C20120621=max(ww_mod1_C20120621);
%% RMS  C20120621
rms1_C20120621=rms(ww1_C20120621);
 
rms_mod1_C20120621=rms(ww_mod1_C20120621);
%% Crest Factor  C20120621
CF1_C20120621=max1_C20120621/rms1_C20120621;
 
CF_mod1_C20120621=max_mod1_C20120621/rms_mod1_C20120621;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120726=table(w_C20120726);
%% 
ww1_C20120726=(w_s_C20120726.w_C20120726{1,1});
%%
SI1_C20120726=geomean(ww1_C20120726)/mean(ww1_C20120726);
%% smoothness index squared modulus  C20120726
w_modu_C20120726=table(w_mod_C20120726);
%%
ww_mod1_C20120726=(w_modu_C20120726.w_mod_C20120726{1,1});
%%
SI_mod1_C20120726=geomean(ww_mod1_C20120726)/mean(ww_mod1_C20120726);
%% Max  C20120726
max1_C20120726=max(ww1_C20120726);
 
max_mod1_C20120726=max(ww_mod1_C20120726);
%% RMS  C20120726
rms1_C20120726=rms(ww1_C20120726);
 
rms_mod1_C20120726=rms(ww_mod1_C20120726);
%% Crest Factor  C20120726
CF1_C20120726=max1_C20120726/rms1_C20120726;
 
CF_mod1_C20120726=max_mod1_C20120726/rms_mod1_C20120726;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120731=table(w_C20120731);
%% 
ww1_C20120731=(w_s_C20120731.w_C20120731{1,1});
%%
SI1_C20120731=geomean(ww1_C20120731)/mean(ww1_C20120731);
%% smoothness index squared modulus  C20120731
w_modu_C20120731=table(w_mod_C20120731);
%%
ww_mod1_C20120731=(w_modu_C20120731.w_mod_C20120731{1,1});
%%
SI_mod1_C20120731=geomean(ww_mod1_C20120731)/mean(ww_mod1_C20120731);
%% Max  C20120731
max1_C20120731=max(ww1_C20120731);
 
max_mod1_C20120731=max(ww_mod1_C20120731);
%% RMS  C20120731
rms1_C20120731=rms(ww1_C20120731);
 
rms_mod1_C20120731=rms(ww_mod1_C20120731);
%% Crest Factor  C20120731
CF1_C20120731=max1_C20120731/rms1_C20120731;
 
CF_mod1_C20120731=max_mod1_C20120731/rms_mod1_C20120731;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120926=table(w_C20120926);
%% 
ww1_C20120926=(w_s_C20120926.w_C20120926{1,1});
%%
SI1_C20120926=geomean(ww1_C20120926)/mean(ww1_C20120926);
%% smoothness index squared modulus  C20120926
w_modu_C20120926=table(w_mod_C20120926);
%%
ww_mod1_C20120926=(w_modu_C20120926.w_mod_C20120926{1,1});
%%
SI_mod1_C20120926=geomean(ww_mod1_C20120926)/mean(ww_mod1_C20120926);
%% Max  C20120926
max1_C20120926=max(ww1_C20120926);
 
max_mod1_C20120926=max(ww_mod1_C20120926);
%% RMS  C20120926
rms1_C20120926=rms(ww1_C20120926);
 
rms_mod1_C20120926=rms(ww_mod1_C20120926);
%% Crest Factor  C20120926
CF1_C20120926=max1_C20120926/rms1_C20120926;
 
CF_mod1_C20120926=max_mod1_C20120926/rms_mod1_C20120926;

%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130118=table(w_C20130118);
%% 
ww1_C20130118=(w_s_C20130118.w_C20130118{1,1});
%%
SI1_C20130118=geomean(ww1_C20130118)/mean(ww1_C20130118);
%% smoothness index squared modulus  C20130118
w_modu_C20130118=table(w_mod_C20130118);
%%
ww_mod1_C20130118=(w_modu_C20130118.w_mod_C20130118{1,1});
%%
SI_mod1_C20130118=geomean(ww_mod1_C20130118)/mean(ww_mod1_C20130118);
%% Max  C20130118
max1_C20130118=max(ww1_C20130118);
 
max_mod1_C20130118=max(ww_mod1_C20130118);
%% RMS  C20130118
rms1_C20130118=rms(ww1_C20130118);
 
rms_mod1_C20130118=rms(ww_mod1_C20130118);
%% Crest Factor  C20130118
CF1_C20130118=max1_C20130118/rms1_C20130118;
 
CF_mod1_C20130118=max_mod1_C20130118/rms_mod1_C20130118;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130311=table(w_C20130311);
%% 
ww1_C20130311=(w_s_C20130311.w_C20130311{1,1});
%%
SI1_C20130311=geomean(ww1_C20130311)/mean(ww1_C20130311);
%% smoothness index squared modulus  C20130311
w_modu_C20130311=table(w_mod_C20130311);
%%
ww_mod1_C20130311=(w_modu_C20130311.w_mod_C20130311{1,1});
%%
SI_mod1_C20130311=geomean(ww_mod1_C20130311)/mean(ww_mod1_C20130311);
%% Max  C20130311
max1_C20130311=max(ww1_C20130311);
 
max_mod1_C20130311=max(ww_mod1_C20130311);
%% RMS  C20130311
rms1_C20130311=rms(ww1_C20130311);
 
rms_mod1_C20130311=rms(ww_mod1_C20130311);
%% Crest Factor  C20130311
CF1_C20130311=max1_C20130311/rms1_C20130311;
 
CF_mod1_C20130311=max_mod1_C20130311/rms_mod1_C20130311;

%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130612=table(w_C20130612);
%% 
ww1_C20130612=(w_s_C20130612.w_C20130612{1,1});
%%
SI1_C20130612=geomean(ww1_C20130612)/mean(ww1_C20130612);
%% smoothness index squared modulus  C20130612
w_modu_C20130612=table(w_mod_C20130612);
%%
ww_mod1_C20130612=(w_modu_C20130612.w_mod_C20130612{1,1});
%%
SI_mod1_C20130612=geomean(ww_mod1_C20130612)/mean(ww_mod1_C20130612);
%% Max  C20130612
max1_C20130612=max(ww1_C20130612);
 
max_mod1_C20130612=max(ww_mod1_C20130612);
%% RMS  C20130612
rms1_C20130612=rms(ww1_C20130612);
 
rms_mod1_C20130612=rms(ww_mod1_C20130612);
%% Crest Factor  C20130612
CF1_C20130612=max1_C20130612/rms1_C20130612;
 
CF_mod1_C20130612=max_mod1_C20130612/rms_mod1_C20130612;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% summary
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Time_nC=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_C=datenum(Time_nC);
AC_CF_modulus=[CF1_C20110914;CF1_C20111213;CF1_C20111228;CF1_C20120105;CF1_C20120118;CF1_C20120131;CF1_C20120306;CF1_C20120518;CF1_C20120530;CF1_C20120621;CF1_C20120726;CF1_C20120731;CF1_C20120926;CF1_C20130118;CF1_C20130311;CF1_C20130612];

AC_CF_sqmodulus=[CF_mod1_C20110914;CF_mod1_C20111213;CF_mod1_C20111228;CF_mod1_C20120105;CF_mod1_C20120118;CF_mod1_C20120131;CF_mod1_C20120306;CF_mod1_C20120518;CF_mod1_C20120530;CF_mod1_C20120621;CF_mod1_C20120726;CF_mod1_C20120731;CF_mod1_C20120926;CF_mod1_C20130118;CF_mod1_C20130311;CF_mod1_C20130612];

AC_SI_modulus=[SI1_C20110914;SI1_C20111213;SI1_C20111228;SI1_C20120105;SI1_C20120118;SI1_C20120131;SI1_C20120306;SI1_C20120518;SI1_C20120530;SI1_C20120621;SI1_C20120726;SI1_C20120731;SI1_C20120926;SI1_C20130118;SI1_C20130311;SI1_C20130612];

AC_SI_sqmodulus=[SI_mod1_C20110914;SI_mod1_C20111213;SI_mod1_C20111228;SI_mod1_C20120105;SI_mod1_C20120118;SI_mod1_C20120131;SI_mod1_C20120306;SI_mod1_C20120518;SI_mod1_C20120530;SI_mod1_C20120621;SI_mod1_C20120726;SI_mod1_C20120731;SI_mod1_C20120926;SI_mod1_C20130118;SI_mod1_C20130311;SI_mod1_C20130612];

ALL_C=[AC_CF_modulus AC_CF_sqmodulus AC_SI_modulus AC_SI_sqmodulus];
%%
f= load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
%% Kurtosis
KRT_C20111213=kurtosis(f_read_C20111213);
KRT_C20120105=kurtosis(f_read_C20120105);
KRT_C20120131=kurtosis(f_read_C20120131);
KRT_C20120306=kurtosis(f_read_C20120306);
KRT_C20120518=kurtosis(f_read_C20120518);
KRT_C20120530=kurtosis(f_read_C20120530);
KRT_C20120621=kurtosis(f_read_C20120621);
KRT_C20120726=kurtosis(f_read_C20120726);
KRT_C20120926=kurtosis(f_read_C20120926);
KRT_C20130118=kurtosis(f_read_C20130118);
KRT_C20130311=kurtosis(f_read_C20130311);
KRT_failure=kurtosis(f);
%%
KRT_gab_C20111213=kurtosis(ww1_C20111213);
KRT_gab_C20120105=kurtosis(ww1_C20120105);
KRT_gab_C20120131=kurtosis(ww1_C20120131);
KRT_gab_C20120306=kurtosis(ww1_C20120306);
KRT_gab_C20120518=kurtosis(ww1_C20120518);
KRT_gab_C20120530=kurtosis(ww1_C20120530);
KRT_gab_C20120621=kurtosis(ww1_C20120621);
KRT_gab_C20120726=kurtosis(ww1_C20120726);
KRT_gab_C20120926=kurtosis(ww1_C20120926);
KRT_gab_C20130118=kurtosis(ww1_C20130118);
KRT_gab_C20130311=kurtosis(ww1_C20130311);
KRT_gab_failure=kurtosis(ww1);