clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
alpha=7;
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
%% Max  C20110614
max1_C20110614=max(ww1_C20110614);
max2_C20110614=max(ww2_C20110614);
max3_C20110614=max(ww3_C20110614);
max4_C20110614=max(ww4_C20110614);
%% RMS  C20110614
rms1_C20110614=rms(ww1_C20110614);
rms2_C20110614=rms(ww2_C20110614);
rms3_C20110614=rms(ww3_C20110614);
rms4_C20110614=rms(ww4_C20110614);
%% Crest Factor  C20110614
CF1_C20110614=max1_C20110614/rms1_C20110614;
CF2_C20110614=max2_C20110614/rms2_C20110614;
CF3_C20110614=max3_C20110614/rms3_C20110614;
CF4_C20110614=max4_C20110614/rms4_C20110614;
CF_ort_C20110614=(CF1_C20110614+CF2_C20110614+CF3_C20110614+CF4_C20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20110914=table(w_sm_C20110914);
%% 
ww1_C20110914=(w_s_C20110914.w_sm_C20110914{1,1});
ww2_C20110914=(w_s_C20110914.w_sm_C20110914{1,2});
ww3_C20110914=(w_s_C20110914.w_sm_C20110914{1,3});
ww4_C20110914=(w_s_C20110914.w_sm_C20110914{1,4});
%% Max  C20110914
max1_C20110914=max(ww1_C20110914);
max2_C20110914=max(ww2_C20110914);
max3_C20110914=max(ww3_C20110914);
max4_C20110914=max(ww4_C20110914);
%% RMS  C20110914
rms1_C20110914=rms(ww1_C20110914);
rms2_C20110914=rms(ww2_C20110914);
rms3_C20110914=rms(ww3_C20110914);
rms4_C20110914=rms(ww4_C20110914);
%% Crest Factor  C20110914
CF1_C20110914=max1_C20110914/rms1_C20110914;
CF2_C20110914=max2_C20110914/rms2_C20110914;
CF3_C20110914=max3_C20110914/rms3_C20110914;
CF4_C20110914=max4_C20110914/rms4_C20110914;
CF_ort_C20110914=(CF1_C20110914+CF2_C20110914+CF3_C20110914+CF4_C20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20111213=table(w_sm_C20111213);
%% 
ww1_C20111213=(w_s_C20111213.w_sm_C20111213{1,1});
ww2_C20111213=(w_s_C20111213.w_sm_C20111213{1,2});
ww3_C20111213=(w_s_C20111213.w_sm_C20111213{1,3});
ww4_C20111213=(w_s_C20111213.w_sm_C20111213{1,4});
%% Max  C20111213
max1_C20111213=max(ww1_C20111213);
max2_C20111213=max(ww2_C20111213);
max3_C20111213=max(ww3_C20111213);
max4_C20111213=max(ww4_C20111213);
%% RMS  C20111213
rms1_C20111213=rms(ww1_C20111213);
rms2_C20111213=rms(ww2_C20111213);
rms3_C20111213=rms(ww3_C20111213);
rms4_C20111213=rms(ww4_C20111213);
%% Crest Factor  C20111213
CF1_C20111213=max1_C20111213/rms1_C20111213;
CF2_C20111213=max2_C20111213/rms2_C20111213;
CF3_C20111213=max3_C20111213/rms3_C20111213;
CF4_C20111213=max4_C20111213/rms4_C20111213;
CF_ort_C20111213=(CF1_C20111213+CF2_C20111213+CF3_C20111213+CF4_C20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20111228=table(w_sm_C20111228);
%% 
ww1_C20111228=(w_s_C20111228.w_sm_C20111228{1,1});
ww2_C20111228=(w_s_C20111228.w_sm_C20111228{1,2});
ww3_C20111228=(w_s_C20111228.w_sm_C20111228{1,3});
ww4_C20111228=(w_s_C20111228.w_sm_C20111228{1,4});
%% Max  C20111228
max1_C20111228=max(ww1_C20111228);
max2_C20111228=max(ww2_C20111228);
max3_C20111228=max(ww3_C20111228);
max4_C20111228=max(ww4_C20111228);
%% RMS  C20111228
rms1_C20111228=rms(ww1_C20111228);
rms2_C20111228=rms(ww2_C20111228);
rms3_C20111228=rms(ww3_C20111228);
rms4_C20111228=rms(ww4_C20111228);
%% Crest Factor  C20111228
CF1_C20111228=max1_C20111228/rms1_C20111228;
CF2_C20111228=max2_C20111228/rms2_C20111228;
CF3_C20111228=max3_C20111228/rms3_C20111228;
CF4_C20111228=max4_C20111228/rms4_C20111228;
CF_ort_C20111228=(CF1_C20111228+CF2_C20111228+CF3_C20111228+CF4_C20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120105=table(w_sm_C20120105);
%% 
ww1_C20120105=(w_s_C20120105.w_sm_C20120105{1,1});
ww2_C20120105=(w_s_C20120105.w_sm_C20120105{1,2});
ww3_C20120105=(w_s_C20120105.w_sm_C20120105{1,3});
ww4_C20120105=(w_s_C20120105.w_sm_C20120105{1,4});
%% Max  C20120105
max1_C20120105=max(ww1_C20120105);
max2_C20120105=max(ww2_C20120105);
max3_C20120105=max(ww3_C20120105);
max4_C20120105=max(ww4_C20120105);
%% RMS  C20120105
rms1_C20120105=rms(ww1_C20120105);
rms2_C20120105=rms(ww2_C20120105);
rms3_C20120105=rms(ww3_C20120105);
rms4_C20120105=rms(ww4_C20120105);
%% Crest Factor  C20120105
CF1_C20120105=max1_C20120105/rms1_C20120105;
CF2_C20120105=max2_C20120105/rms2_C20120105;
CF3_C20120105=max3_C20120105/rms3_C20120105;
CF4_C20120105=max4_C20120105/rms4_C20120105;
CF_ort_C20120105=(CF1_C20120105+CF2_C20120105+CF3_C20120105+CF4_C20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120118=table(w_sm_C20120118);
%% 
ww1_C20120118=(w_s_C20120118.w_sm_C20120118{1,1});
ww2_C20120118=(w_s_C20120118.w_sm_C20120118{1,2});
ww3_C20120118=(w_s_C20120118.w_sm_C20120118{1,3});
ww4_C20120118=(w_s_C20120118.w_sm_C20120118{1,4});
%% Max  C20120118
max1_C20120118=max(ww1_C20120118);
max2_C20120118=max(ww2_C20120118);
max3_C20120118=max(ww3_C20120118);
max4_C20120118=max(ww4_C20120118);
%% RMS  C20120118
rms1_C20120118=rms(ww1_C20120118);
rms2_C20120118=rms(ww2_C20120118);
rms3_C20120118=rms(ww3_C20120118);
rms4_C20120118=rms(ww4_C20120118);
%% Crest Factor  C20120118
CF1_C20120118=max1_C20120118/rms1_C20120118;
CF2_C20120118=max2_C20120118/rms2_C20120118;
CF3_C20120118=max3_C20120118/rms3_C20120118;
CF4_C20120118=max4_C20120118/rms4_C20120118;
CF_ort_C20120118=(CF1_C20120118+CF2_C20120118+CF3_C20120118+CF4_C20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120131=table(w_sm_C20120131);
%% 
ww1_C20120131=(w_s_C20120131.w_sm_C20120131{1,1});
ww2_C20120131=(w_s_C20120131.w_sm_C20120131{1,2});
ww3_C20120131=(w_s_C20120131.w_sm_C20120131{1,3});
ww4_C20120131=(w_s_C20120131.w_sm_C20120131{1,4});
%% Max  C20120131
max1_C20120131=max(ww1_C20120131);
max2_C20120131=max(ww2_C20120131);
max3_C20120131=max(ww3_C20120131);
max4_C20120131=max(ww4_C20120131);
%% RMS  C20120131
rms1_C20120131=rms(ww1_C20120131);
rms2_C20120131=rms(ww2_C20120131);
rms3_C20120131=rms(ww3_C20120131);
rms4_C20120131=rms(ww4_C20120131);
%% Crest Factor  C20120131
CF1_C20120131=max1_C20120131/rms1_C20120131;
CF2_C20120131=max2_C20120131/rms2_C20120131;
CF3_C20120131=max3_C20120131/rms3_C20120131;
CF4_C20120131=max4_C20120131/rms4_C20120131;
CF_ort_C20120131=(CF1_C20120131+CF2_C20120131+CF3_C20120131+CF4_C20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120306=table(w_sm_C20120306);
%% 
ww1_C20120306=(w_s_C20120306.w_sm_C20120306{1,1});
ww2_C20120306=(w_s_C20120306.w_sm_C20120306{1,2});
ww3_C20120306=(w_s_C20120306.w_sm_C20120306{1,3});
ww4_C20120306=(w_s_C20120306.w_sm_C20120306{1,4});
%% Max  C20120306
max1_C20120306=max(ww1_C20120306);
max2_C20120306=max(ww2_C20120306);
max3_C20120306=max(ww3_C20120306);
max4_C20120306=max(ww4_C20120306);
%% RMS  C20120306
rms1_C20120306=rms(ww1_C20120306);
rms2_C20120306=rms(ww2_C20120306);
rms3_C20120306=rms(ww3_C20120306);
rms4_C20120306=rms(ww4_C20120306);
%% Crest Factor  C20120306
CF1_C20120306=max1_C20120306/rms1_C20120306;
CF2_C20120306=max2_C20120306/rms2_C20120306;
CF3_C20120306=max3_C20120306/rms3_C20120306;
CF4_C20120306=max4_C20120306/rms4_C20120306;
CF_ort_C20120306=(CF1_C20120306+CF2_C20120306+CF3_C20120306+CF4_C20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120518=table(w_sm_C20120518);
%% 
ww1_C20120518=(w_s_C20120518.w_sm_C20120518{1,1});
ww2_C20120518=(w_s_C20120518.w_sm_C20120518{1,2});
ww3_C20120518=(w_s_C20120518.w_sm_C20120518{1,3});
ww4_C20120518=(w_s_C20120518.w_sm_C20120518{1,4});
%% Max  C20120518
max1_C20120518=max(ww1_C20120518);
max2_C20120518=max(ww2_C20120518);
max3_C20120518=max(ww3_C20120518);
max4_C20120518=max(ww4_C20120518);
%% RMS  C20120518
rms1_C20120518=rms(ww1_C20120518);
rms2_C20120518=rms(ww2_C20120518);
rms3_C20120518=rms(ww3_C20120518);
rms4_C20120518=rms(ww4_C20120518);
%% Crest Factor  C20120518
CF1_C20120518=max1_C20120518/rms1_C20120518;
CF2_C20120518=max2_C20120518/rms2_C20120518;
CF3_C20120518=max3_C20120518/rms3_C20120518;
CF4_C20120518=max4_C20120518/rms4_C20120518;
CF_ort_C20120518=(CF1_C20120518+CF2_C20120518+CF3_C20120518+CF4_C20120518)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120530=table(w_sm_C20120530);
%% 
ww1_C20120530=(w_s_C20120530.w_sm_C20120530{1,1});
ww2_C20120530=(w_s_C20120530.w_sm_C20120530{1,2});
ww3_C20120530=(w_s_C20120530.w_sm_C20120530{1,3});
ww4_C20120530=(w_s_C20120530.w_sm_C20120530{1,4});
%% Max  C20120530
max1_C20120530=max(ww1_C20120530);
max2_C20120530=max(ww2_C20120530);
max3_C20120530=max(ww3_C20120530);
max4_C20120530=max(ww4_C20120530);
%% RMS  C20120530
rms1_C20120530=rms(ww1_C20120530);
rms2_C20120530=rms(ww2_C20120530);
rms3_C20120530=rms(ww3_C20120530);
rms4_C20120530=rms(ww4_C20120530);
%% Crest Factor  C20120530
CF1_C20120530=max1_C20120530/rms1_C20120530;
CF2_C20120530=max2_C20120530/rms2_C20120530;
CF3_C20120530=max3_C20120530/rms3_C20120530;
CF4_C20120530=max4_C20120530/rms4_C20120530;
CF_ort_C20120530=(CF1_C20120530+CF2_C20120530+CF3_C20120530+CF4_C20120530)/4;
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120621=table(w_sm_C20120621);
%% 
ww1_C20120621=(w_s_C20120621.w_sm_C20120621{1,1});
ww2_C20120621=(w_s_C20120621.w_sm_C20120621{1,2});
ww3_C20120621=(w_s_C20120621.w_sm_C20120621{1,3});
ww4_C20120621=(w_s_C20120621.w_sm_C20120621{1,4});
%% Max  C20120621
max1_C20120621=max(ww1_C20120621);
max2_C20120621=max(ww2_C20120621);
max3_C20120621=max(ww3_C20120621);
max4_C20120621=max(ww4_C20120621);
%% RMS  C20120621
rms1_C20120621=rms(ww1_C20120621);
rms2_C20120621=rms(ww2_C20120621);
rms3_C20120621=rms(ww3_C20120621);
rms4_C20120621=rms(ww4_C20120621);
%% Crest Factor  C20120621
CF1_C20120621=max1_C20120621/rms1_C20120621;
CF2_C20120621=max2_C20120621/rms2_C20120621;
CF3_C20120621=max3_C20120621/rms3_C20120621;
CF4_C20120621=max4_C20120621/rms4_C20120621;
CF_ort_C20120621=(CF1_C20120621+CF2_C20120621+CF3_C20120621+CF4_C20120621)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120726=table(w_sm_C20120726);
%% 
ww1_C20120726=(w_s_C20120726.w_sm_C20120726{1,1});
ww2_C20120726=(w_s_C20120726.w_sm_C20120726{1,2});
ww3_C20120726=(w_s_C20120726.w_sm_C20120726{1,3});
ww4_C20120726=(w_s_C20120726.w_sm_C20120726{1,4});
%% Max  C20120726
max1_C20120726=max(ww1_C20120726);
max2_C20120726=max(ww2_C20120726);
max3_C20120726=max(ww3_C20120726);
max4_C20120726=max(ww4_C20120726);
%% RMS  C20120726
rms1_C20120726=rms(ww1_C20120726);
rms2_C20120726=rms(ww2_C20120726);
rms3_C20120726=rms(ww3_C20120726);
rms4_C20120726=rms(ww4_C20120726);
%% Crest Factor  C20120726
CF1_C20120726=max1_C20120726/rms1_C20120726;
CF2_C20120726=max2_C20120726/rms2_C20120726;
CF3_C20120726=max3_C20120726/rms3_C20120726;
CF4_C20120726=max4_C20120726/rms4_C20120726;
CF_ort_C20120726=(CF1_C20120726+CF2_C20120726+CF3_C20120726+CF4_C20120726)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120731=table(w_sm_C20120731);
%% 
ww1_C20120731=(w_s_C20120731.w_sm_C20120731{1,1});
ww2_C20120731=(w_s_C20120731.w_sm_C20120731{1,2});
ww3_C20120731=(w_s_C20120731.w_sm_C20120731{1,3});
ww4_C20120731=(w_s_C20120731.w_sm_C20120731{1,4});
%% Max  C20120731
max1_C20120731=max(ww1_C20120731);
max2_C20120731=max(ww2_C20120731);
max3_C20120731=max(ww3_C20120731);
max4_C20120731=max(ww4_C20120731);
%% RMS  C20120731
rms1_C20120731=rms(ww1_C20120731);
rms2_C20120731=rms(ww2_C20120731);
rms3_C20120731=rms(ww3_C20120731);
rms4_C20120731=rms(ww4_C20120731);
%% Crest Factor  C20120731
CF1_C20120731=max1_C20120731/rms1_C20120731;
CF2_C20120731=max2_C20120731/rms2_C20120731;
CF3_C20120731=max3_C20120731/rms3_C20120731;
CF4_C20120731=max4_C20120731/rms4_C20120731;
CF_ort_C20120731=(CF1_C20120731+CF2_C20120731+CF3_C20120731+CF4_C20120731)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120924=table(w_sm_C20120924);
%% 
ww1_C20120924=(w_s_C20120924.w_sm_C20120924{1,1});
ww2_C20120924=(w_s_C20120924.w_sm_C20120924{1,2});
ww3_C20120924=(w_s_C20120924.w_sm_C20120924{1,3});
ww4_C20120924=(w_s_C20120924.w_sm_C20120924{1,4});
%% Max  C20120924
max1_C20120924=max(ww1_C20120924);
max2_C20120924=max(ww2_C20120924);
max3_C20120924=max(ww3_C20120924);
max4_C20120924=max(ww4_C20120924);
%% RMS  C20120924
rms1_C20120924=rms(ww1_C20120924);
rms2_C20120924=rms(ww2_C20120924);
rms3_C20120924=rms(ww3_C20120924);
rms4_C20120924=rms(ww4_C20120924);
%% Crest Factor  C20120924
CF1_C20120924=max1_C20120924/rms1_C20120924;
CF2_C20120924=max2_C20120924/rms2_C20120924;
CF3_C20120924=max3_C20120924/rms3_C20120924;
CF4_C20120924=max4_C20120924/rms4_C20120924;
CF_ort_C20120924=(CF1_C20120924+CF2_C20120924+CF3_C20120924+CF4_C20120924)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20120926=table(w_sm_C20120926);
%% 
ww1_C20120926=(w_s_C20120926.w_sm_C20120926{1,1});
ww2_C20120926=(w_s_C20120926.w_sm_C20120926{1,2});
ww3_C20120926=(w_s_C20120926.w_sm_C20120926{1,3});
ww4_C20120926=(w_s_C20120926.w_sm_C20120926{1,4});
%% Max  C20120926
max1_C20120926=max(ww1_C20120926);
max2_C20120926=max(ww2_C20120926);
max3_C20120926=max(ww3_C20120926);
max4_C20120926=max(ww4_C20120926);
%% RMS  C20120926
rms1_C20120926=rms(ww1_C20120926);
rms2_C20120926=rms(ww2_C20120926);
rms3_C20120926=rms(ww3_C20120926);
rms4_C20120926=rms(ww4_C20120926);
%% Crest Factor  C20120926
CF1_C20120926=max1_C20120926/rms1_C20120926;
CF2_C20120926=max2_C20120926/rms2_C20120926;
CF3_C20120926=max3_C20120926/rms3_C20120926;
CF4_C20120926=max4_C20120926/rms4_C20120926;
CF_ort_C20120926=(CF1_C20120926+CF2_C20120926+CF3_C20120926+CF4_C20120926)/4;
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130118=table(w_sm_C20130118);
%% 
ww1_C20130118=(w_s_C20130118.w_sm_C20130118{1,1});
ww2_C20130118=(w_s_C20130118.w_sm_C20130118{1,2});
ww3_C20130118=(w_s_C20130118.w_sm_C20130118{1,3});
ww4_C20130118=(w_s_C20130118.w_sm_C20130118{1,4});
%% Max  C20130118
max1_C20130118=max(ww1_C20130118);
max2_C20130118=max(ww2_C20130118);
max3_C20130118=max(ww3_C20130118);
max4_C20130118=max(ww4_C20130118);
%% RMS  C20130118
rms1_C20130118=rms(ww1_C20130118);
rms2_C20130118=rms(ww2_C20130118);
rms3_C20130118=rms(ww3_C20130118);
rms4_C20130118=rms(ww4_C20130118);
%% Crest Factor  C20130118
CF1_C20130118=max1_C20130118/rms1_C20130118;
CF2_C20130118=max2_C20130118/rms2_C20130118;
CF3_C20130118=max3_C20130118/rms3_C20130118;
CF4_C20130118=max4_C20130118/rms4_C20130118;
CF_ort_C20130118=(CF1_C20130118+CF2_C20130118+CF3_C20130118+CF4_C20130118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130311=table(w_sm_C20130311);
%% 
ww1_C20130311=(w_s_C20130311.w_sm_C20130311{1,1});
ww2_C20130311=(w_s_C20130311.w_sm_C20130311{1,2});
ww3_C20130311=(w_s_C20130311.w_sm_C20130311{1,3});
ww4_C20130311=(w_s_C20130311.w_sm_C20130311{1,4});
%% Max  C20130311
max1_C20130311=max(ww1_C20130311);
max2_C20130311=max(ww2_C20130311);
max3_C20130311=max(ww3_C20130311);
max4_C20130311=max(ww4_C20130311);
%% RMS  C20130311
rms1_C20130311=rms(ww1_C20130311);
rms2_C20130311=rms(ww2_C20130311);
rms3_C20130311=rms(ww3_C20130311);
rms4_C20130311=rms(ww4_C20130311);
%% Crest Factor  C20130311
CF1_C20130311=max1_C20130311/rms1_C20130311;
CF2_C20130311=max2_C20130311/rms2_C20130311;
CF3_C20130311=max3_C20130311/rms3_C20130311;
CF4_C20130311=max4_C20130311/rms4_C20130311;
CF_ort_C20130311=(CF1_C20130311+CF2_C20130311+CF3_C20130311+CF4_C20130311)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_C20130612=table(w_sm_C20130612);
%% 
ww1_C20130612=(w_s_C20130612.w_sm_C20130612{1,1});
ww2_C20130612=(w_s_C20130612.w_sm_C20130612{1,2});
ww3_C20130612=(w_s_C20130612.w_sm_C20130612{1,3});
ww4_C20130612=(w_s_C20130612.w_sm_C20130612{1,4});
%% Max  C20130612
max1_C20130612=max(ww1_C20130612);
max2_C20130612=max(ww2_C20130612);
max3_C20130612=max(ww3_C20130612);
max4_C20130612=max(ww4_C20130612);
%% RMS  C20130612
rms1_C20130612=rms(ww1_C20130612);
rms2_C20130612=rms(ww2_C20130612);
rms3_C20130612=rms(ww3_C20130612);
rms4_C20130612=rms(ww4_C20130612);
%% Crest Factor  C20130612
CF1_C20130612=max1_C20130612/rms1_C20130612;
CF2_C20130612=max2_C20130612/rms2_C20130612;
CF3_C20130612=max3_C20130612/rms3_C20130612;
CF4_C20130612=max4_C20130612/rms4_C20130612;
CF_ort_C20130612=(CF1_C20130612+CF2_C20130612+CF3_C20130612+CF4_C20130612)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% summary
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Time_nC=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('30.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('26.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_C=datenum(Time_nC);
AC_CF_modulus=[CF1_C20110614; CF2_C20110614; CF3_C20110614; CF4_C20110614;CF1_C20110914; CF2_C20110914; CF3_C20110914; CF4_C20110914;CF1_C20111213; CF2_C20111213; CF3_C20111213; CF4_C20111213;CF1_C20111228; CF2_C20111228; CF3_C20111228; CF4_C20111228;CF1_C20120105; CF2_C20120105; CF3_C20120105; CF4_C20120105;CF1_C20120118; CF2_C20120118; CF3_C20120118; CF4_C20120118;CF1_C20120131; CF2_C20120131; CF3_C20120131; CF4_C20120131;CF1_C20120306; CF2_C20120306; CF3_C20120306; CF4_C20120306;CF1_C20120518; CF2_C20120518; CF3_C20120518; CF4_C20120518;CF1_C20120530; CF2_C20120530; CF3_C20120530; CF4_C20120530;CF1_C20120621; CF2_C20120621; CF3_C20120621; CF4_C20120621;CF1_C20120726; CF2_C20120726; CF3_C20120726; CF4_C20120726;CF1_C20120731; CF2_C20120731; CF3_C20120731; CF4_C20120731;CF1_C20120924; CF2_C20120924; CF3_C20120924; CF4_C20120924;CF1_C20120926; CF2_C20120926; CF3_C20120926; CF4_C20120926;CF1_C20130118; CF2_C20130118; CF3_C20130118; CF4_C20130118;CF1_C20130311; CF2_C20130311; CF3_C20130311; CF4_C20130311;CF1_C20130612; CF2_C20130612; CF3_C20130612; CF4_C20130612]

ALL_C=[Time_C AC_CF_modulus];