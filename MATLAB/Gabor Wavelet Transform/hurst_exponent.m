%%
C_20110614 = load('C:\Users\user\Documents\MATLAB\C_Acc_Body_CASE_1_20110614_B.txt');

%%
Hurst(C_20110614)
%%
C_20110914 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20110914_B.txt');

%%
Hurst(C_20110914)
%% Haar level 3 unscaled
C_20110914_den_haar_level3_unscaled=func_denoise_dwhaar_level3_unscaled(C_20110914)
C_trans_haar_level3_unscaled=transpose(C_20110914_den_haar_level3_unscaled);
H1=Hurst(C_trans_haar_level3_unscaled)
%% Haar level 3 scaled
C_20110914_den_haar_level3_scaled=func_denoise_dwhaar_level3_scaled(C_20110914)
C_trans_haar_level3_scaled=transpose(C_20110914_den_haar_level3_scaled);
H2=Hurst(C_trans_haar_level3_scaled)
%% Haar level 3 nonwhite
C_20110914_den_haar_level3_nonwhite=func_denoise_dwhaar_level3_nonwhite(C_20110914)
C_trans_haar_level3_nonwhite=transpose(C_20110914_den_haar_level3_nonwhite);
H3=Hurst(C_trans_haar_level3_nonwhite)
%% Haar level 4 unscaled
C_20110914_den_haar_level4_unscaled=func_denoise_dwhaar_level4_unscaled(C_20110914)
C_trans_haar_level4_unscaled=transpose(C_20110914_den_haar_level4_unscaled);
H4=Hurst(C_trans_haar_level4_unscaled)
%% Haar level 4 scaled
C_20110914_den_haar_level4_scaled=func_denoise_dwhaar_level4_scaled(C_20110914)
C_trans_haar_level4_scaled=transpose(C_20110914_den_haar_level4_scaled);
H5=Hurst(C_trans_haar_level4_scaled)
%% Haar level 4 nonwhite
C_20110914_den_haar_level4_nonwhite=func_denoise_dwhaar_level4_nonwhite(C_20110914)
C_trans_haar_level4_nonwhite=transpose(C_20110914_den_haar_level4_nonwhite);
H6=Hurst(C_trans_haar_level4_nonwhite)
%% Haar level 5 unscaled
C_20110914_den_haar_level5_unscaled=func_denoise_dwhaar_level5_unscaled(C_20110914)
C_trans_haar_level5_unscaled=transpose(C_20110914_den_haar_level5_unscaled);
H7=Hurst(C_trans_haar_level5_unscaled)
%% Haar level 5 scaled
C_20110914_den_haar_level5_scaled=func_denoise_dwhaar_level5_scaled(C_20110914)
C_trans_haar_level5_scaled=transpose(C_20110914_den_haar_level5_scaled);
H8=Hurst(C_trans_haar_level5_scaled)
%% Haar level 5 nonwhite
C_20110914_den_haar_level5_nonwhite=func_denoise_dwhaar_level5_nonwhite(C_20110914)
C_trans_haar_level5_nonwhite=transpose(C_20110914_den_haar_level5_nonwhite);
H9=Hurst(C_trans_haar_level5_nonwhite)

%% Daubechies 4 level 3 unscaled
C_20110914_den_db4_level3_unscaled=func_denoise_db4_level3_unscaled(C_20110914)
C_trans_db4_level3_unscaled=transpose(C_20110914_den_db4_level3_unscaled);
H11=Hurst(C_trans_db4_level3_unscaled)
%% Daubechies 4 level 3 scaled
C_20110914_den_db4_level3_scaled=func_denoise_db4_level3_scaled(C_20110914)
C_trans_db4_level3_scaled=transpose(C_20110914_den_db4_level3_scaled);
H12=Hurst(C_trans_db4_level3_scaled)
%% Daubechies 4 level 3 nonwhite
C_20110914_den_db4_level3_nonwhite=func_denoise_db4_level3_nonwhite(C_20110914)
C_trans_db4_level3_nonwhite=transpose(C_20110914_den_db4_level3_nonwhite);
H13=Hurst(C_trans_db4_level3_nonwhite)
%% Daubechies 4 level 4 unscaled
C_20110914_den_db4_level4_unscaled=func_denoise_db4_level4_unscaled(C_20110914)
C_trans_db4_level4_unscaled=transpose(C_20110914_den_db4_level4_unscaled);
H14=Hurst(C_trans_db4_level4_unscaled)
%% Daubechies 4 level 4 scaled
C_20110914_den_db4_level4_scaled=func_denoise_db4_level4_scaled(C_20110914)
C_trans_db4_level4_scaled=transpose(C_20110914_den_db4_level4_scaled);
H15=Hurst(C_trans_db4_level4_scaled)
%% Daubechies 4 level 4 nonwhite
C_20110914_den_db4_level4_nonwhite=func_denoise_db4_level4_nonwhite(C_20110914)
C_trans_db4_level4_nonwhite=transpose(C_20110914_den_db4_level4_nonwhite);
H16=Hurst(C_trans_db4_level4_nonwhite)
%% Daubechies 4 level 5 unscaled
C_20110914_den_db4_level5_unscaled=func_denoise_db4_level5_unscaled(C_20110914)
C_trans_db4_level5_unscaled=transpose(C_20110914_den_db4_level5_unscaled);
H17=Hurst(C_trans_db4_level5_unscaled)
%% Daubechies 4 level 5 scaled
C_20110914_den_db4_level5_scaled=func_denoise_db4_level5_scaled(C_20110914)
C_trans_db4_level5_scaled=transpose(C_20110914_den_db4_level5_scaled);
H18=Hurst(C_trans_db4_level5_scaled)
%% Daubechies 4 level 5 nonwhite
C_20110914_den_db4_level5_nonwhite=func_denoise_db4_level5_nonwhite(C_20110914)
C_trans_db4_level5_nonwhite=transpose(C_20110914_den_db4_level5_nonwhite);
H19=Hurst(C_trans_db4_level5_nonwhite)

%% For C Pulverizer
time_2011=[datetime(2011,6,14);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
time_2012=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,5,30);datetime(2012,6,21);datetime(2012,7,26);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26)];
time_2013=[datetime(2013,1,18);datetime(2013,3,11);datetime(2013,6,12)];
%%
y=readtable('C:\Users\user\Desktop\data\train\training_C\Acc\C_hurstexp.csv');
%%
y_2011=y(1:4,2);
y_2012=y(5:15,2);
y_2013=y(16:18,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
hurst_2013=table2array(y_2013);
%%
subplot(1,3,1)
plot(time_2011,hurst_2011)
subplot(1,3,2)
plot(time_2012,hurst_2012)
subplot(1,3,3)
plot(time_2013,hurst_2013)

%% For D Pulverizer
time_2011=[datetime(2011,6,14);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
time_2012=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,6,21);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26)];
time_2013=[datetime(2013,1,18);datetime(2013,3,11);datetime(2013,6,12)];
%%
y=readtable('C:\Users\user\Desktop\data\train\training_C\Acc\C_hurstexp.csv');
%%
y_2011=y(1:4,2);
y_2012=y(5:13,2);
y_2013=y(14:16,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
hurst_2013=table2array(y_2013);
%%
subplot(1,3,1)
plot(time_2011,hurst_2011)
subplot(1,3,2)
plot(time_2012,hurst_2012)
subplot(1,3,3)
plot(time_2013,hurst_2013)

%% For F Pulverizer
time_2011=[datetime(2011,6,14);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
time_2012=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,6,21);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26)];
time_2013=[datetime(2013,1,18);datetime(2013,3,11);datetime(2013,6,12)];
%%
y=readtable('C:\Users\user\Desktop\data\train\training_F\Acc\F_hurstexp.csv');
%%
y_2011=y(1:4,2);
y_2012=y(5:13,2);
y_2013=y(14:16,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
hurst_2013=table2array(y_2013);
%%
subplot(1,3,1)
plot(time_2011,hurst_2011)
title('Hurst Exponent of F Pulverizer,2011')
subplot(1,3,2)
plot(time_2012,hurst_2012)
title('Hurst Exponent of F Pulverizer,2012')
subplot(1,3,3)
plot(time_2013,hurst_2013)
title('Hurst Exponent of F Pulverizer,2013')

%% For F Pulverizer
time=[datetime(2011,6,14);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28);datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,6,21);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26);datetime(2013,1,18);datetime(2013,3,11);datetime(2013,6,12)];
%%
y=readtable('C:\Users\user\Desktop\data\train\training_F\Acc\F_hurstexp.csv');
%%
y_cut=y(1:16,2);
hurst_y=table2array(y_cut);
%%
scatter(time,hurst_y)
line(time,hurst_y)
title('Hurst Exponent of F Pulverizer')
xlabel('Date')
ylabel('Hurst Exponent')


%% For A Pulverizer
time_2011=[datetime(2011,6,14);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
time_2012=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,5,21);datetime(2012,5,22);datetime(2012,5,23);datetime(2012,6,19);datetime(2012,7,31)];
%%
y=readtable('C:\Users\user\Desktop\data\test\Pulverizer A\Acc\A_hurstexp.csv');
%%
y_2011=y(1:4,2);
y_2012=y(5:14,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
%%
subplot(1,2,1)
plot(time_2011,hurst_2011)
subplot(1,2,2)
plot(time_2012,hurst_2012)

%% For B Pulverizer
time_2011=[datetime(2011,9,08);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
time_2012=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,6,21);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26)];
time_2013=[datetime(2013,1,18);datetime(2013,3,11);datetime(2013,6,12)];
%%
y=readtable('C:\Users\user\Desktop\data\test\Pulverizer B\Acc\B_hurstexp.csv');
%%
y_2011=y(1:4,2);
y_2012=y(5:13,2);
y_2013=y(14:16,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
hurst_2013=table2array(y_2013);
%%
subplot(1,3,1)
plot(time_2011,hurst_2011)
subplot(1,3,2)
plot(time_2012,hurst_2012)
subplot(1,3,3)
plot(time_2013,hurst_2013)

%% For E Pulverizer
time_2011=[datetime(2011,6,14);datetime(2011,9,9);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
time_2012=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,5,30);datetime(2012,6,21);datetime(2012,7,12);datetime(2012,7,13);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26)];
time_2013=[datetime(2013,1,18);datetime(2013,3,11);datetime(2013,6,12);datetime(2013,7,31)];
%%
y=readtable('C:\Users\user\Desktop\data\test\Pulverizer E\Acc\E_hurstexp.csv');
%%
y_2011=y(1:5,2);
y_2012=y(6:17,2);
y_2013=y(18:21,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
hurst_2013=table2array(y_2013);
%%
subplot(1,3,1)
plot(time_2011,hurst_2011)
subplot(1,3,2)
plot(time_2012,hurst_2012)
subplot(1,3,3)
plot(time_2013,hurst_2013)

%% For Failure Pulverizer
Failure1=[datetime(2011,9,08);datetime(2011,9,14);datetime(2011,12,13);datetime(2011,12,28)];
Failure_2=[datetime(2012,1,5);datetime(2012,1,18);datetime(2012,1,31);datetime(2012,3,6);datetime(2012,5,18);datetime(2012,6,21);datetime(2012,7,31);datetime(2012,9,24);datetime(2012,9,26)];
%%
y=readtable('C:\Users\user\Desktop\data\failure\Acc\Failure_hurstexp.csv');
%%
y_failure1=y(1,2);
y_failure2=y(2,2);
%%
hurst_2011=table2array(y_2011);
hurst_2012=table2array(y_2012);
%%
subplot(1,3,1)
plot(Failure1,hurst_2011)
subplot(1,3,2)
plot(Failure_2,hurst_2012)