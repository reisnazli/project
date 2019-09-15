clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0;         % default 
alpha=7;
% level of decomposition
J=4;
M  = 4096; 
%% input signal 
%% Pulverizer D
f_reaF_F20110614 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110614_B.txt');
f_reaF_F20110914 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20110914_B.txt');
f_reaF_F20111213 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111213_B.txt');
f_reaF_F20111228 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20111228_B.txt');
f_reaF_F20120105 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120105_B.txt');
f_reaF_F20120118 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120118_B.txt');
f_reaF_F20120131 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120131_B.txt');
f_reaF_F20120306 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120306_B.txt');
f_reaF_F20120518 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120518_B.txt');
f_reaF_F20120621 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120621_B.txt');
f_reaF_F20120731 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120731_B.txt');
f_reaF_F20120924 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120924_B.txt');
f_reaF_F20120926 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20120926_B.txt');
f_reaF_F20130118 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130118_B.txt');
f_reaF_F20130311 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130311_B.txt');
f_reaF_F20130612 = load('C:\Users\user\Desktop\data\train\training_F\Acc\F_Acc_Body_CASE_1_20130612_B.txt');

f_F20110614=transpose(f_reaF_F20110614);
f_F20110914=transpose(f_reaF_F20110914);
f_F20111213=transpose(f_reaF_F20111213);
f_F20111228=transpose(f_reaF_F20111228);
f_F20120105=transpose(f_reaF_F20120105);
f_F20120118=transpose(f_reaF_F20120118);
f_F20120131=transpose(f_reaF_F20120131);
f_F20120306=transpose(f_reaF_F20120306);
f_F20120518=transpose(f_reaF_F20120518);
f_F20120621=transpose(f_reaF_F20120621);
f_F20120731=transpose(f_reaF_F20120731);
f_F20120924=transpose(f_reaF_F20120924);
f_F20120926=transpose(f_reaF_F20120926);
f_F20130118=transpose(f_reaF_F20130118);
f_F20130311=transpose(f_reaF_F20130311);
f_F20130612=transpose(f_reaF_F20130612);

%% analysis failure 1
[w_F20110614,w_moF_F20110614,w_sm_F20110614,w_spec_F20110614] = analysisforind(f_F20110614, J, alpha, tau);
[w_F20110914,w_moF_F20110914,w_sm_F20110914,w_spec_F20110914] = analysisforind(f_F20110914, J, alpha, tau);
[w_F20111213,w_moF_F20111213,w_sm_F20111213,w_spec_F20111213] = analysisforind(f_F20111213, J, alpha, tau);
[w_F20111228,w_moF_F20111228,w_sm_F20111228,w_spec_F20111228] = analysisforind(f_F20111228, J, alpha, tau);
[w_F20120105,w_moF_F20120105,w_sm_F20120105,w_spec_F20120105] = analysisforind(f_F20120105, J, alpha, tau);
[w_F20120118,w_moF_F20120118,w_sm_F20120118,w_spec_F20120118] = analysisforind(f_F20120118, J, alpha, tau);
[w_F20120131,w_moF_F20120131,w_sm_F20120131,w_spec_F20120131] = analysisforind(f_F20120131, J, alpha, tau);
[w_F20120306,w_moF_F20120306,w_sm_F20120306,w_spec_F20120306] = analysisforind(f_F20120306, J, alpha, tau);
[w_F20120518,w_moF_F20120518,w_sm_F20120518,w_spec_F20120518] = analysisforind(f_F20120518, J, alpha, tau);
[w_F20120621,w_moF_F20120621,w_sm_F20120621,w_spec_F20120621] = analysisforind(f_F20120621, J, alpha, tau);
[w_F20120731,w_moF_F20120731,w_sm_F20120731,w_spec_F20120731] = analysisforind(f_F20120731, J, alpha, tau);
[w_F20120924,w_moF_F20120924,w_sm_F20120924,w_spec_F20120924] = analysisforind(f_F20120924, J, alpha, tau);
[w_F20120926,w_moF_F20120926,w_sm_F20120926,w_spec_F20120926] = analysisforind(f_F20120926, J, alpha, tau);
[w_F20130118,w_moF_F20130118,w_sm_F20130118,w_spec_F20130118] = analysisforind(f_F20130118, J, alpha, tau);
[w_F20130311,w_moF_F20130311,w_sm_F20130311,w_spec_F20130311] = analysisforind(f_F20130311, J, alpha, tau);
[w_F20130612,w_moF_F20130612,w_sm_F20130612,w_spec_F20130612] = analysisforind(f_F20130612, J, alpha, tau);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20110614
w_s_F20110614=table(w_sm_F20110614);
%% 
ww1_F20110614=(w_s_F20110614.w_sm_F20110614{1,1});
ww2_F20110614=(w_s_F20110614.w_sm_F20110614{1,2});
ww3_F20110614=(w_s_F20110614.w_sm_F20110614{1,3});
ww4_F20110614=(w_s_F20110614.w_sm_F20110614{1,4});
%% Max  F20110614
max1_F20110614=max(ww1_F20110614);
max2_F20110614=max(ww2_F20110614);
max3_F20110614=max(ww3_F20110614);
max4_F20110614=max(ww4_F20110614);
%% RMS  F20110614
rms1_F20110614=rms(ww1_F20110614);
rms2_F20110614=rms(ww2_F20110614);
rms3_F20110614=rms(ww3_F20110614);
rms4_F20110614=rms(ww4_F20110614);
%% Crest Factor  F20110614
CF1_F20110614=max1_F20110614/rms1_F20110614;
CF2_F20110614=max2_F20110614/rms2_F20110614;
CF3_F20110614=max3_F20110614/rms3_F20110614;
CF4_F20110614=max4_F20110614/rms4_F20110614;
CF_ort_F20110614=(CF1_F20110614+CF2_F20110614+CF3_F20110614+CF4_F20110614)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20110914
w_s_F20110914=table(w_sm_F20110914);
%% 
ww1_F20110914=(w_s_F20110914.w_sm_F20110914{1,1});
ww2_F20110914=(w_s_F20110914.w_sm_F20110914{1,2});
ww3_F20110914=(w_s_F20110914.w_sm_F20110914{1,3});
ww4_F20110914=(w_s_F20110914.w_sm_F20110914{1,4});
%% Max  F20110914
max1_F20110914=max(ww1_F20110914);
max2_F20110914=max(ww2_F20110914);
max3_F20110914=max(ww3_F20110914);
max4_F20110914=max(ww4_F20110914);
%% RMS  F20110914
rms1_F20110914=rms(ww1_F20110914);
rms2_F20110914=rms(ww2_F20110914);
rms3_F20110914=rms(ww3_F20110914);
rms4_F20110914=rms(ww4_F20110914);
%% Crest Factor  F20110914
CF1_F20110914=max1_F20110914/rms1_F20110914;
CF2_F20110914=max2_F20110914/rms2_F20110914;
CF3_F20110914=max3_F20110914/rms3_F20110914;
CF4_F20110914=max4_F20110914/rms4_F20110914;
CF_ort_F20110914=(CF1_F20110914+CF2_F20110914+CF3_F20110914+CF4_F20110914)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20111213
w_s_F20111213=table(w_sm_F20111213);
%% 
ww1_F20111213=(w_s_F20111213.w_sm_F20111213{1,1});
ww2_F20111213=(w_s_F20111213.w_sm_F20111213{1,2});
ww3_F20111213=(w_s_F20111213.w_sm_F20111213{1,3});
ww4_F20111213=(w_s_F20111213.w_sm_F20111213{1,4});
%% Max  F20111213
max1_F20111213=max(ww1_F20111213);
max2_F20111213=max(ww2_F20111213);
max3_F20111213=max(ww3_F20111213);
max4_F20111213=max(ww4_F20111213);
%% RMS  F20111213
rms1_F20111213=rms(ww1_F20111213);
rms2_F20111213=rms(ww2_F20111213);
rms3_F20111213=rms(ww3_F20111213);
rms4_F20111213=rms(ww4_F20111213);
%% Crest Factor  F20111213
CF1_F20111213=max1_F20111213/rms1_F20111213;
CF2_F20111213=max2_F20111213/rms2_F20111213;
CF3_F20111213=max3_F20111213/rms3_F20111213;
CF4_F20111213=max4_F20111213/rms4_F20111213;
CF_ort_F20111213=(CF1_F20111213+CF2_F20111213+CF3_F20111213+CF4_F20111213)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20111228
w_s_F20111228=table(w_sm_F20111228);
%% 
ww1_F20111228=(w_s_F20111228.w_sm_F20111228{1,1});
ww2_F20111228=(w_s_F20111228.w_sm_F20111228{1,2});
ww3_F20111228=(w_s_F20111228.w_sm_F20111228{1,3});
ww4_F20111228=(w_s_F20111228.w_sm_F20111228{1,4});
%% Max  F20111228
max1_F20111228=max(ww1_F20111228);
max2_F20111228=max(ww2_F20111228);
max3_F20111228=max(ww3_F20111228);
max4_F20111228=max(ww4_F20111228);
%% RMS  F20111228
rms1_F20111228=rms(ww1_F20111228);
rms2_F20111228=rms(ww2_F20111228);
rms3_F20111228=rms(ww3_F20111228);
rms4_F20111228=rms(ww4_F20111228);
%% Crest Factor  F20111228
CF1_F20111228=max1_F20111228/rms1_F20111228;
CF2_F20111228=max2_F20111228/rms2_F20111228;
CF3_F20111228=max3_F20111228/rms3_F20111228;
CF4_F20111228=max4_F20111228/rms4_F20111228;
CF_ort_F20111228=(CF1_F20111228+CF2_F20111228+CF3_F20111228+CF4_F20111228)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120105
w_s_F20120105=table(w_sm_F20120105);
%% 
ww1_F20120105=(w_s_F20120105.w_sm_F20120105{1,1});
ww2_F20120105=(w_s_F20120105.w_sm_F20120105{1,2});
ww3_F20120105=(w_s_F20120105.w_sm_F20120105{1,3});
ww4_F20120105=(w_s_F20120105.w_sm_F20120105{1,4});
%% Max  F20120105
max1_F20120105=max(ww1_F20120105);
max2_F20120105=max(ww2_F20120105);
max3_F20120105=max(ww3_F20120105);
max4_F20120105=max(ww4_F20120105);
%% RMS  F20120105
rms1_F20120105=rms(ww1_F20120105);
rms2_F20120105=rms(ww2_F20120105);
rms3_F20120105=rms(ww3_F20120105);
rms4_F20120105=rms(ww4_F20120105);
%% Crest Factor  F20120105
CF1_F20120105=max1_F20120105/rms1_F20120105;
CF2_F20120105=max2_F20120105/rms2_F20120105;
CF3_F20120105=max3_F20120105/rms3_F20120105;
CF4_F20120105=max4_F20120105/rms4_F20120105;
CF_ort_F20120105=(CF1_F20120105+CF2_F20120105+CF3_F20120105+CF4_F20120105)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120118
w_s_F20120118=table(w_sm_F20120118);
%% 
ww1_F20120118=(w_s_F20120118.w_sm_F20120118{1,1});
ww2_F20120118=(w_s_F20120118.w_sm_F20120118{1,2});
ww3_F20120118=(w_s_F20120118.w_sm_F20120118{1,3});
ww4_F20120118=(w_s_F20120118.w_sm_F20120118{1,4});
%% Max  F20120118
max1_F20120118=max(ww1_F20120118);
max2_F20120118=max(ww2_F20120118);
max3_F20120118=max(ww3_F20120118);
max4_F20120118=max(ww4_F20120118);
%% RMS  F20120118
rms1_F20120118=rms(ww1_F20120118);
rms2_F20120118=rms(ww2_F20120118);
rms3_F20120118=rms(ww3_F20120118);
rms4_F20120118=rms(ww4_F20120118);
%% Crest Factor  F20120118
CF1_F20120118=max1_F20120118/rms1_F20120118;
CF2_F20120118=max2_F20120118/rms2_F20120118;
CF3_F20120118=max3_F20120118/rms3_F20120118;
CF4_F20120118=max4_F20120118/rms4_F20120118;
CF_ort_F20120118=(CF1_F20120118+CF2_F20120118+CF3_F20120118+CF4_F20120118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120131
w_s_F20120131=table(w_sm_F20120131);
%% 
ww1_F20120131=(w_s_F20120131.w_sm_F20120131{1,1});
ww2_F20120131=(w_s_F20120131.w_sm_F20120131{1,2});
ww3_F20120131=(w_s_F20120131.w_sm_F20120131{1,3});
ww4_F20120131=(w_s_F20120131.w_sm_F20120131{1,4});
%% Max  F20120131
max1_F20120131=max(ww1_F20120131);
max2_F20120131=max(ww2_F20120131);
max3_F20120131=max(ww3_F20120131);
max4_F20120131=max(ww4_F20120131);
%% RMS  F20120131
rms1_F20120131=rms(ww1_F20120131);
rms2_F20120131=rms(ww2_F20120131);
rms3_F20120131=rms(ww3_F20120131);
rms4_F20120131=rms(ww4_F20120131);
%% Crest Factor  F20120131
CF1_F20120131=max1_F20120131/rms1_F20120131;
CF2_F20120131=max2_F20120131/rms2_F20120131;
CF3_F20120131=max3_F20120131/rms3_F20120131;
CF4_F20120131=max4_F20120131/rms4_F20120131;
CF_ort_F20120131=(CF1_F20120131+CF2_F20120131+CF3_F20120131+CF4_F20120131)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120306
w_s_F20120306=table(w_sm_F20120306);
%% 
ww1_F20120306=(w_s_F20120306.w_sm_F20120306{1,1});
ww2_F20120306=(w_s_F20120306.w_sm_F20120306{1,2});
ww3_F20120306=(w_s_F20120306.w_sm_F20120306{1,3});
ww4_F20120306=(w_s_F20120306.w_sm_F20120306{1,4});
%% Max  F20120306
max1_F20120306=max(ww1_F20120306);
max2_F20120306=max(ww2_F20120306);
max3_F20120306=max(ww3_F20120306);
max4_F20120306=max(ww4_F20120306);
%% RMS  F20120306
rms1_F20120306=rms(ww1_F20120306);
rms2_F20120306=rms(ww2_F20120306);
rms3_F20120306=rms(ww3_F20120306);
rms4_F20120306=rms(ww4_F20120306);
%% Crest Factor  F20120306
CF1_F20120306=max1_F20120306/rms1_F20120306;
CF2_F20120306=max2_F20120306/rms2_F20120306;
CF3_F20120306=max3_F20120306/rms3_F20120306;
CF4_F20120306=max4_F20120306/rms4_F20120306;
CF_ort_F20120306=(CF1_F20120306+CF2_F20120306+CF3_F20120306+CF4_F20120306)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120518
w_s_F20120518=table(w_sm_F20120518);
%% 
ww1_F20120518=(w_s_F20120518.w_sm_F20120518{1,1});
ww2_F20120518=(w_s_F20120518.w_sm_F20120518{1,2});
ww3_F20120518=(w_s_F20120518.w_sm_F20120518{1,3});
ww4_F20120518=(w_s_F20120518.w_sm_F20120518{1,4});
%% Max  F20120518
max1_F20120518=max(ww1_F20120518);
max2_F20120518=max(ww2_F20120518);
max3_F20120518=max(ww3_F20120518);
max4_F20120518=max(ww4_F20120518);
%% RMS  F20120518
rms1_F20120518=rms(ww1_F20120518);
rms2_F20120518=rms(ww2_F20120518);
rms3_F20120518=rms(ww3_F20120518);
rms4_F20120518=rms(ww4_F20120518);
%% Crest Factor  F20120518
CF1_F20120518=max1_F20120518/rms1_F20120518;
CF2_F20120518=max2_F20120518/rms2_F20120518;
CF3_F20120518=max3_F20120518/rms3_F20120518;
CF4_F20120518=max4_F20120518/rms4_F20120518;
CF_ort_F20120518=(CF1_F20120518+CF2_F20120518+CF3_F20120518+CF4_F20120518)/4;
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
%% Max  F20120621
max1_F20120621=max(ww1_F20120621);
max2_F20120621=max(ww2_F20120621);
max3_F20120621=max(ww3_F20120621);
max4_F20120621=max(ww4_F20120621);
%% RMS  F20120621
rms1_F20120621=rms(ww1_F20120621);
rms2_F20120621=rms(ww2_F20120621);
rms3_F20120621=rms(ww3_F20120621);
rms4_F20120621=rms(ww4_F20120621);
%% Crest Factor  F20120621
CF1_F20120621=max1_F20120621/rms1_F20120621;
CF2_F20120621=max2_F20120621/rms2_F20120621;
CF3_F20120621=max3_F20120621/rms3_F20120621;
CF4_F20120621=max4_F20120621/rms4_F20120621;
CF_ort_F20120621=(CF1_F20120621+CF2_F20120621+CF3_F20120621+CF4_F20120621)/4;
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
%% Max  F20120731
max1_F20120731=max(ww1_F20120731);
max2_F20120731=max(ww2_F20120731);
max3_F20120731=max(ww3_F20120731);
max4_F20120731=max(ww4_F20120731);
%% RMS  F20120731
rms1_F20120731=rms(ww1_F20120731);
rms2_F20120731=rms(ww2_F20120731);
rms3_F20120731=rms(ww3_F20120731);
rms4_F20120731=rms(ww4_F20120731);
%% Crest Factor  F20120731
CF1_F20120731=max1_F20120731/rms1_F20120731;
CF2_F20120731=max2_F20120731/rms2_F20120731;
CF3_F20120731=max3_F20120731/rms3_F20120731;
CF4_F20120731=max4_F20120731/rms4_F20120731;
CF_ort_F20120731=(CF1_F20120731+CF2_F20120731+CF3_F20120731+CF4_F20120731)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120924
w_s_F20120924=table(w_sm_F20120924);
%% 
ww1_F20120924=(w_s_F20120924.w_sm_F20120924{1,1});
ww2_F20120924=(w_s_F20120924.w_sm_F20120924{1,2});
ww3_F20120924=(w_s_F20120924.w_sm_F20120924{1,3});
ww4_F20120924=(w_s_F20120924.w_sm_F20120924{1,4});
%% Max  F20120924
max1_F20120924=max(ww1_F20120924);
max2_F20120924=max(ww2_F20120924);
max3_F20120924=max(ww3_F20120924);
max4_F20120924=max(ww4_F20120924);
%% RMS  F20120924
rms1_F20120924=rms(ww1_F20120924);
rms2_F20120924=rms(ww2_F20120924);
rms3_F20120924=rms(ww3_F20120924);
rms4_F20120924=rms(ww4_F20120924);
%% Crest Factor  F20120924
CF1_F20120924=max1_F20120924/rms1_F20120924;
CF2_F20120924=max2_F20120924/rms2_F20120924;
CF3_F20120924=max3_F20120924/rms3_F20120924;
CF4_F20120924=max4_F20120924/rms4_F20120924;
CF_ort_F20120924=(CF1_F20120924+CF2_F20120924+CF3_F20120924+CF4_F20120924)/4;
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20120926
w_s_F20120926=table(w_sm_F20120926);
%% 
ww1_F20120926=(w_s_F20120926.w_sm_F20120926{1,1});
ww2_F20120926=(w_s_F20120926.w_sm_F20120926{1,2});
ww3_F20120926=(w_s_F20120926.w_sm_F20120926{1,3});
ww4_F20120926=(w_s_F20120926.w_sm_F20120926{1,4});
%% Max  F20120926
max1_F20120926=max(ww1_F20120926);
max2_F20120926=max(ww2_F20120926);
max3_F20120926=max(ww3_F20120926);
max4_F20120926=max(ww4_F20120926);
%% RMS  F20120926
rms1_F20120926=rms(ww1_F20120926);
rms2_F20120926=rms(ww2_F20120926);
rms3_F20120926=rms(ww3_F20120926);
rms4_F20120926=rms(ww4_F20120926);
%% Crest Factor  F20120926
CF1_F20120926=max1_F20120926/rms1_F20120926;
CF2_F20120926=max2_F20120926/rms2_F20120926;
CF3_F20120926=max3_F20120926/rms3_F20120926;
CF4_F20120926=max4_F20120926/rms4_F20120926;
CF_ort_F20120926=(CF1_F20120926+CF2_F20120926+CF3_F20120926+CF4_F20120926)/4;
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20130118
w_s_F20130118=table(w_sm_F20130118);
%% 
ww1_F20130118=(w_s_F20130118.w_sm_F20130118{1,1});
ww2_F20130118=(w_s_F20130118.w_sm_F20130118{1,2});
ww3_F20130118=(w_s_F20130118.w_sm_F20130118{1,3});
ww4_F20130118=(w_s_F20130118.w_sm_F20130118{1,4});
%% Max  F20130118
max1_F20130118=max(ww1_F20130118);
max2_F20130118=max(ww2_F20130118);
max3_F20130118=max(ww3_F20130118);
max4_F20130118=max(ww4_F20130118);
%% RMS  F20130118
rms1_F20130118=rms(ww1_F20130118);
rms2_F20130118=rms(ww2_F20130118);
rms3_F20130118=rms(ww3_F20130118);
rms4_F20130118=rms(ww4_F20130118);
%% Crest Factor  F20130118
CF1_F20130118=max1_F20130118/rms1_F20130118;
CF2_F20130118=max2_F20130118/rms2_F20130118;
CF3_F20130118=max3_F20130118/rms3_F20130118;
CF4_F20130118=max4_F20130118/rms4_F20130118;
CF_ort_F20130118=(CF1_F20130118+CF2_F20130118+CF3_F20130118+CF4_F20130118)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20130311
w_s_F20130311=table(w_sm_F20130311);
%% 
ww1_F20130311=(w_s_F20130311.w_sm_F20130311{1,1});
ww2_F20130311=(w_s_F20130311.w_sm_F20130311{1,2});
ww3_F20130311=(w_s_F20130311.w_sm_F20130311{1,3});
ww4_F20130311=(w_s_F20130311.w_sm_F20130311{1,4});
%% Max  F20130311
max1_F20130311=max(ww1_F20130311);
max2_F20130311=max(ww2_F20130311);
max3_F20130311=max(ww3_F20130311);
max4_F20130311=max(ww4_F20130311);
%% RMS  F20130311
rms1_F20130311=rms(ww1_F20130311);
rms2_F20130311=rms(ww2_F20130311);
rms3_F20130311=rms(ww3_F20130311);
rms4_F20130311=rms(ww4_F20130311);
%% Crest Factor  F20130311
CF1_F20130311=max1_F20130311/rms1_F20130311;
CF2_F20130311=max2_F20130311/rms2_F20130311;
CF3_F20130311=max3_F20130311/rms3_F20130311;
CF4_F20130311=max4_F20130311/rms4_F20130311;
CF_ort_F20130311=(CF1_F20130311+CF2_F20130311+CF3_F20130311+CF4_F20130311)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  F20130612
w_s_F20130612=table(w_sm_F20130612);
%% 
ww1_F20130612=(w_s_F20130612.w_sm_F20130612{1,1});
ww2_F20130612=(w_s_F20130612.w_sm_F20130612{1,2});
ww3_F20130612=(w_s_F20130612.w_sm_F20130612{1,3});
ww4_F20130612=(w_s_F20130612.w_sm_F20130612{1,4});
%% Max  F20130612
max1_F20130612=max(ww1_F20130612);
max2_F20130612=max(ww2_F20130612);
max3_F20130612=max(ww3_F20130612);
max4_F20130612=max(ww4_F20130612);
%% RMS  F20130612
rms1_F20130612=rms(ww1_F20130612);
rms2_F20130612=rms(ww2_F20130612);
rms3_F20130612=rms(ww3_F20130612);
rms4_F20130612=rms(ww4_F20130612);
%% Crest Factor  F20130612
CF1_F20130612=max1_F20130612/rms1_F20130612;
CF2_F20130612=max2_F20130612/rms2_F20130612;
CF3_F20130612=max3_F20130612/rms3_F20130612;
CF4_F20130612=max4_F20130612/rms4_F20130612;
CF_ort_F20130612=(CF1_F20130612+CF2_F20130612+CF3_F20130612+CF4_F20130612)/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% summary
%%%%%%%%%%%%%%%%%%%%
Time_nD=[datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.06.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('14.09.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('13.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('28.12.2011');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('05.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('18.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('31.01.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('06.03.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('18.05.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('21.06.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('31.07.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('24.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('26.09.2012');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('18.01.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('11.03.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013');datetime('12.06.2013')];
Time_F=datenum(Time_nD);
AF_CF_modulus=[CF1_F20110614;CF2_F20110614;CF3_F20110614;CF4_F20110614;CF1_F20110914;CF2_F20110914;CF3_F20110914;CF4_F20110914;CF1_F20111213;CF2_F20111213;CF3_F20111213;CF4_F20111213;CF1_F20111228;CF2_F20111228;CF3_F20111228;CF4_F20111228;CF1_F20120105;CF2_F20120105;CF3_F20120105;CF4_F20120105;CF1_F20120118;CF2_F20120118;CF3_F20120118;CF4_F20120118;CF1_F20120131;CF2_F20120131;CF3_F20120131;CF4_F20120131;CF1_F20120306;CF2_F20120306;CF3_F20120306;CF4_F20120306;CF1_F20120518;CF2_F20120518;CF3_F20120518;CF4_F20120518;CF1_F20120621;CF2_F20120621;CF3_F20120621;CF4_F20120621;CF1_F20120731;CF2_F20120731;CF3_F20120731;CF4_F20120731;CF1_F20120924;CF2_F20120924;CF3_F20120924;CF4_F20120924;CF1_F20120926;CF2_F20120926;CF3_F20120926;CF4_F20120926;CF1_F20130118;CF2_F20130118;CF3_F20130118;CF4_F20130118;CF1_F20130311;CF2_F20130311;CF3_F20130311;CF4_F20130311;CF1_F20130612;CF2_F20130612;CF3_F20130612;CF4_F20130612]

ALL_F=[Time_F AF_CF_modulus];