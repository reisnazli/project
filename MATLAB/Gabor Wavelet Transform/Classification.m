%%
D_20110614 = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_MTR_I_B_20110614_B.txt');
D_20110614_1=D_20110614(1:1024,:);
D_20110614_2=D_20110614(1025:2048,:);
D_20110614_3=D_20110614(2049:3072,:);
D_20110614_4=D_20110614(3073:4096,:);

%%
D_20110914 = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_MTR_I_B_20110914_B.txt');
D_20110914_1=D_20110914(1:1024,:);
D_20110914_2=D_20110914(1025:2048,:);
D_20110914_3=D_20110914(2049:3072,:);
D_20110914_4=D_20110914(3073:4096,:);

%% Idle
D_20120924 = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_MTR_I_B_20120924_B.txt');
D_20120924_1=D_20120924(1:1024,:);
D_20120924_2=D_20120924(1025:2048,:);
D_20120924_3=D_20120924(2049:3072,:);
D_20120924_4=D_20120924(3073:4096,:);

%% Loading
D_20120926 = load('C:\Users\user\Desktop\data\train\training_D\Velo\D_Velo_MTR_I_B_20120926_B.txt');
D_20120926_1=D_20120926(1:1024,:);
D_20120926_2=D_20120926(1025:2048,:);
D_20120926_3=D_20120926(2049:3072,:);
D_20120926_4=D_20120926(3073:4096,:);

%%
%C_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\C_Failure.csv','ReadVariableNames',true);
D_Failure=readtable('C:\Users\user\Desktop\data\train\training_D\Velo\D_hurstexp.csv','ReadVariableNames',true);
%F_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\F_Failure.csv','ReadVariableNames',true);
%%
%CDF_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\CDF_Failure.csv','ReadVariableNames',true);
%%
A_Test=readtable('C:\Users\user\Desktop\data2\A_hurstexp.csv','ReadVariableNames',true);
%B_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\B_hurstexp.csv','ReadVariableNames',true);
%E_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\E_hurstexp.csv','ReadVariableNames',true);
%% ENSEMBLE TRAIN
%[trainedClassifier_ENS_CDF, validationAccuracy_ENS_CDF] = trainClassifier(CDF_Failure)
%[trainedClassifier_ENS_C, validationAccuracy_ENS_C] = trainClassifier(C_Failure)
[trainedClassifier_ENS_D, validationAccuracy_ENS_D] = trainClassifier(D_Failure)
%[trainedClassifier_ENS_F, validationAccuracy_ENS_F] = trainClassifier(F_Failure)

%% ENSEMBLE FIT
yfit_ENS_CDF_A = trainedClassifier_ENS_CDF.predictFcn(A_Test)
yfit_ENS_C_A = trainedClassifier_ENS_C.predictFcn(A_Test)
yfit_ENS_D_A = trainedClassifier_ENS_D.predictFcn(A_Test)
yfit_ENS_F_A = trainedClassifier_ENS_F.predictFcn(A_Test)

yfit_ENS_CDF_B = trainedClassifier_ENS_CDF.predictFcn(B_Test)
yfit_ENS_C_B = trainedClassifier_ENS_C.predictFcn(B_Test)
yfit_ENS_D_B = trainedClassifier_ENS_D.predictFcn(B_Test)
yfit_ENS_F_B = trainedClassifier_ENS_F.predictFcn(B_Test)

yfit_ENS_CDF_E = trainedClassifier_ENS_CDF.predictFcn(E_Test)
yfit_ENS_C_E = trainedClassifier_ENS_C.predictFcn(E_Test)
yfit_ENS_D_E = trainedClassifier_ENS_D.predictFcn(E_Test)
yfit_ENS_F_E = trainedClassifier_ENS_F.predictFcn(E_Test)

%%
yfit_ENS_A=[yfit_ENS_C_A yfit_ENS_D_A yfit_ENS_F_A]
yfit_ENS_B=[yfit_ENS_C_B yfit_ENS_D_B yfit_ENS_F_B]
yfit_ENS_E=[yfit_ENS_C_E yfit_ENS_D_E yfit_ENS_F_E]

%%
yfit_ENS_A=[yfit_ENS_C_A yfit_ENS_D_A yfit_ENS_F_A]

%% SVM TRAIN
[trainedClassifier_SVM_CDF, validationAccuracy_SVM_CDF] = trainClassifier_SVM(CDF_Failure)
[trainedClassifier_SVM_C, validationAccuracy_SVM_C] = trainClassifier_SVM(C_Failure)
[trainedClassifier_SVM_D, validationAccuracy_SVM_D] = trainClassifier_SVM(D_Failure)
[trainedClassifier_SVM_F, validationAccuracy_SVM_F] = trainClassifier_SVM(F_Failure)

%% SVM FIT
yfit_SVM_CDF_A = trainedClassifier_SVM_CDF.predictFcn(A_Test)
yfit_SVM_C_A = trainedClassifier_SVM_C.predictFcn(A_Test)
yfit_SVM_D_A = trainedClassifier_SVM_D.predictFcn(A_Test)
yfit_SVM_F_A = trainedClassifier_SVM_F.predictFcn(A_Test)

yfit_SVM_CDF_B = trainedClassifier_SVM_CDF.predictFcn(B_Test)
yfit_SVM_C_B = trainedClassifier_SVM_C.predictFcn(B_Test)
yfit_SVM_D_B = trainedClassifier_SVM_D.predictFcn(B_Test)
yfit_SVM_F_B = trainedClassifier_SVM_F.predictFcn(B_Test)

yfit_SVM_CDF_E = trainedClassifier_SVM_CDF.predictFcn(E_Test)
yfit_SVM_C_E = trainedClassifier_SVM_C.predictFcn(E_Test)
yfit_SVM_D_E = trainedClassifier_SVM_D.predictFcn(E_Test)
yfit_SVM_F_E = trainedClassifier_SVM_F.predictFcn(E_Test)

%%
yfit_SVM_A=[yfit_SVM_C_A yfit_SVM_D_A yfit_SVM_F_A]
yfit_SVM_B=[yfit_SVM_C_B yfit_SVM_D_B yfit_SVM_F_B]
yfit_SVM_E=[yfit_SVM_C_E yfit_SVM_D_E yfit_SVM_F_E]


%% KNN TRAIN
[trainedClassifier_KNN_CDF, validationAccuracy_KNN_CDF] = trainClassifier_KNN(CDF_Failure)
[trainedClassifier_KNN_C, validationAccuracy_KNN_C] = trainClassifier_KNN(C_Failure)
[trainedClassifier_KNN_D, validationAccuracy_KNN_D] = trainClassifier_KNN(D_Failure)
[trainedClassifier_KNN_F, validationAccuracy_KNN_F] = trainClassifier_KNN(F_Failure)

%% KNN FIT
yfit_KNN_CDF_A = trainedClassifier_KNN_CDF.predictFcn(A_Test)
yfit_KNN_C_A = trainedClassifier_KNN_C.predictFcn(A_Test)
yfit_KNN_D_A = trainedClassifier_KNN_D.predictFcn(A_Test)
yfit_KNN_F_A = trainedClassifier_KNN_F.predictFcn(A_Test)

yfit_KNN_CDF_B = trainedClassifier_KNN_CDF.predictFcn(B_Test)
yfit_KNN_C_B = trainedClassifier_KNN_C.predictFcn(B_Test)
yfit_KNN_D_B = trainedClassifier_KNN_D.predictFcn(B_Test)
yfit_KNN_F_B = trainedClassifier_KNN_F.predictFcn(B_Test)

yfit_KNN_CDF_E = trainedClassifier_KNN_CDF.predictFcn(E_Test)
yfit_KNN_C_E = trainedClassifier_KNN_C.predictFcn(E_Test)
yfit_KNN_D_E = trainedClassifier_KNN_D.predictFcn(E_Test)
yfit_KNN_F_E = trainedClassifier_KNN_F.predictFcn(E_Test)

%%
yfit_KNN_A=[yfit_KNN_C_A yfit_KNN_D_A yfit_KNN_F_A]
yfit_KNN_B=[yfit_KNN_C_B yfit_KNN_D_B yfit_KNN_F_B]
yfit_KNN_E=[yfit_KNN_C_E yfit_KNN_D_E yfit_KNN_F_E]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Failure 1
%%
C_Failure_1=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\C_Failure_1.csv','ReadVariableNames',true);
D_Failure_1=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\D_Failure_1.csv','ReadVariableNames',true);
F_Failure_1=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\F_Failure_1.csv','ReadVariableNames',true);
%%
CDF_Failure_1=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\CDF_Failure_1.csv','ReadVariableNames',true);
%%
A_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\A_hurstexp.csv','ReadVariableNames',true);
B_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\B_hurstexp.csv','ReadVariableNames',true);
E_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\E_hurstexp.csv','ReadVariableNames',true);
%% ENSEMBLE TRAIN
[trainedClassifier_ENS_1_CDF, validationAccuracy_ENS_1_CDF] = trainClassifier(CDF_Failure_1)
[trainedClassifier_ENS_1_C, validationAccuracy_ENS_1_C] = trainClassifier(C_Failure_1)
[trainedClassifier_ENS_1_D, validationAccuracy_ENS_1_D] = trainClassifier(D_Failure_1)
[trainedClassifier_ENS_1_F, validationAccuracy_ENS_1_F] = trainClassifier(F_Failure_1)

%% ENSEMBLE FIT
yfit_ENS_CDF_1_A = trainedClassifier_ENS_1_CDF.predictFcn(A_Test)
yfit_ENS_C_1_A = trainedClassifier_ENS_1_C.predictFcn(A_Test)
yfit_ENS_D_1_A = trainedClassifier_ENS_1_D.predictFcn(A_Test)
yfit_ENS_F_1_A = trainedClassifier_ENS_1_F.predictFcn(A_Test)

yfit_ENS_1_CDF_B = trainedClassifier_ENS_1_CDF.predictFcn(B_Test)
yfit_ENS_1_C_B = trainedClassifier_ENS_1_C.predictFcn(B_Test)
yfit_ENS_1_D_B = trainedClassifier_ENS_1_D.predictFcn(B_Test)
yfit_ENS_1_F_B = trainedClassifier_ENS_1_F.predictFcn(B_Test)

yfit_ENS_1_CDF_E = trainedClassifier_ENS_1_CDF.predictFcn(E_Test)
yfit_ENS_1_C_E = trainedClassifier_ENS_1_C.predictFcn(E_Test)
yfit_ENS_1_D_E = trainedClassifier_ENS_1_D.predictFcn(E_Test)
yfit_ENS_1_F_E = trainedClassifier_ENS_1_F.predictFcn(E_Test)


%% SVM TRAIN
[trainedClassifier_SVM_1_CDF, validationAccuracy_SVM_1_CDF] = trainClassifier_SVM(CDF_Failure_1)
[trainedClassifier_SVM_1_C, validationAccuracy_SVM_1_C] = trainClassifier_SVM(C_Failure_1)
[trainedClassifier_SVM_1_D, validationAccuracy_SVM_1_D] = trainClassifier_SVM(D_Failure_1)
[trainedClassifier_SVM_1_F, validationAccuracy_SVM_1_F] = trainClassifier_SVM(F_Failure_1)

%% SVM FIT
yfit_SVM_1_CDF_A = trainedClassifier_SVM_1_CDF.predictFcn(A_Test)
yfit_SVM_1_C_A = trainedClassifier_SVM_1_C.predictFcn(A_Test)
yfit_SVM_1_D_A = trainedClassifier_SVM_1_D.predictFcn(A_Test)
yfit_SVM_1_F_A = trainedClassifier_SVM_1_F.predictFcn(A_Test)

yfit_SVM_1_CDF_B = trainedClassifier_SVM_1_CDF.predictFcn(B_Test)
yfit_SVM_1_C_B = trainedClassifier_SVM_1_C.predictFcn(B_Test)
yfit_SVM_1_D_B = trainedClassifier_SVM_1_D.predictFcn(B_Test)
yfit_SVM_1_F_B = trainedClassifier_SVM_1_F.predictFcn(B_Test)

yfit_SVM_1_CDF_E = trainedClassifier_SVM_1_CDF.predictFcn(E_Test)
yfit_SVM_1_C_E = trainedClassifier_SVM_1_C.predictFcn(E_Test)
yfit_SVM_1_D_E = trainedClassifier_SVM_1_D.predictFcn(E_Test)
yfit_SVM_1_F_E = trainedClassifier_SVM_1_F.predictFcn(E_Test)

%% KNN TRAIN
[trainedClassifier_KNN_1_CDF, validationAccuracy_KNN_1_CDF] = trainClassifier_KNN(CDF_Failure_1)
[trainedClassifier_KNN_1_C, validationAccuracy_KNN_1_C] = trainClassifier_KNN(C_Failure_1)
[trainedClassifier_KNN_1_D, validationAccuracy_KNN_1_D] = trainClassifier_KNN(D_Failure_1)
[trainedClassifier_KNN_1_F, validationAccuracy_KNN_1_F] = trainClassifier_KNN(F_Failure_1)

%% KNN FIT
yfit_KNN_1_CDF_A = trainedClassifier_KNN_1_CDF.predictFcn(A_Test)
yfit_KNN_1_C_A = trainedClassifier_KNN_1_C.predictFcn(A_Test)
yfit_KNN_1_D_A = trainedClassifier_KNN_1_D.predictFcn(A_Test)
yfit_KNN_1_F_A = trainedClassifier_KNN_1_F.predictFcn(A_Test)

yfit_KNN_1_CDF_B = trainedClassifier_KNN_1_CDF.predictFcn(B_Test)
yfit_KNN_1_C_B = trainedClassifier_KNN_1_C.predictFcn(B_Test)
yfit_KNN_1_D_B = trainedClassifier_KNN_1_D.predictFcn(B_Test)
yfit_KNN_1_F_B = trainedClassifier_KNN_1_F.predictFcn(B_Test)

yfit_KNN_1_CDF_E = trainedClassifier_KNN_1_CDF.predictFcn(E_Test)
yfit_KNN_1_C_E = trainedClassifier_KNN_1_C.predictFcn(E_Test)
yfit_KNN_1_D_E = trainedClassifier_KNN_1_D.predictFcn(E_Test)
yfit_KNN_1_F_E = trainedClassifier_KNN_1_F.predictFcn(E_Test)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Failure 2
%%
C_Failure_2=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\C_Failure_2.csv','ReadVariableNames',true);
D_Failure_2=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\D_Failure_2.csv','ReadVariableNames',true);
F_Failure_2=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\F_Failure_2.csv','ReadVariableNames',true);
%%
CDF_Failure_2=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail\CDF_Failure_2.csv','ReadVariableNames',true);
%%
A_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\A_hurstexp.csv','ReadVariableNames',true);
B_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\B_hurstexp.csv','ReadVariableNames',true);
E_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\E_hurstexp.csv','ReadVariableNames',true);
%% ENSEMBLE TRAIN
[trainedClassifier_ENS_2_CDF, validationAccuracy_ENS_2_CDF] = trainClassifier(CDF_Failure_2)
[trainedClassifier_ENS_2_C, validationAccuracy_ENS_2_C] = trainClassifier(C_Failure_2)
[trainedClassifier_ENS_2_D, validationAccuracy_ENS_2_D] = trainClassifier(D_Failure_2)
[trainedClassifier_ENS_2_F, validationAccuracy_ENS_2_F] = trainClassifier(F_Failure_2)

%% ENSEMBLE FIT
yfit_ENS_CDF_2_A = trainedClassifier_ENS_2_CDF.predictFcn(A_Test)
yfit_ENS_C_2_A = trainedClassifier_ENS_2_C.predictFcn(A_Test)
yfit_ENS_D_2_A = trainedClassifier_ENS_2_D.predictFcn(A_Test)
yfit_ENS_F_2_A = trainedClassifier_ENS_2_F.predictFcn(A_Test)

yfit_ENS_2_CDF_B = trainedClassifier_ENS_2_CDF.predictFcn(B_Test)
yfit_ENS_2_C_B = trainedClassifier_ENS_2_C.predictFcn(B_Test)
yfit_ENS_2_D_B = trainedClassifier_ENS_2_D.predictFcn(B_Test)
yfit_ENS_2_F_B = trainedClassifier_ENS_2_F.predictFcn(B_Test)

yfit_ENS_2_CDF_E = trainedClassifier_ENS_2_CDF.predictFcn(E_Test)
yfit_ENS_2_C_E = trainedClassifier_ENS_2_C.predictFcn(E_Test)
yfit_ENS_2_D_E = trainedClassifier_ENS_2_D.predictFcn(E_Test)
yfit_ENS_2_F_E = trainedClassifier_ENS_2_F.predictFcn(E_Test)


%% SVM TRAIN
[trainedClassifier_SVM_2_CDF, validationAccuracy_SVM_2_CDF] = trainClassifier_SVM(CDF_Failure_2)
[trainedClassifier_SVM_2_C, validationAccuracy_SVM_2_C] = trainClassifier_SVM(C_Failure_2)
[trainedClassifier_SVM_2_D, validationAccuracy_SVM_2_D] = trainClassifier_SVM(D_Failure_2)
[trainedClassifier_SVM_2_F, validationAccuracy_SVM_2_F] = trainClassifier_SVM(F_Failure_2)

%% SVM FIT
yfit_SVM_2_CDF_A = trainedClassifier_SVM_2_CDF.predictFcn(A_Test)
yfit_SVM_2_C_A = trainedClassifier_SVM_2_C.predictFcn(A_Test)
yfit_SVM_2_D_A = trainedClassifier_SVM_2_D.predictFcn(A_Test)
yfit_SVM_2_F_A = trainedClassifier_SVM_2_F.predictFcn(A_Test)

yfit_SVM_2_CDF_B = trainedClassifier_SVM_2_CDF.predictFcn(B_Test)
yfit_SVM_2_C_B = trainedClassifier_SVM_2_C.predictFcn(B_Test)
yfit_SVM_2_D_B = trainedClassifier_SVM_2_D.predictFcn(B_Test)
yfit_SVM_2_F_B = trainedClassifier_SVM_2_F.predictFcn(B_Test)

yfit_SVM_2_CDF_E = trainedClassifier_SVM_2_CDF.predictFcn(E_Test)
yfit_SVM_2_C_E = trainedClassifier_SVM_2_C.predictFcn(E_Test)
yfit_SVM_2_D_E = trainedClassifier_SVM_2_D.predictFcn(E_Test)
yfit_SVM_2_F_E = trainedClassifier_SVM_2_F.predictFcn(E_Test)

%% KNN TRAIN
[trainedClassifier_KNN_2_CDF, validationAccuracy_KNN_2_CDF] = trainClassifier_KNN(CDF_Failure_2)
[trainedClassifier_KNN_2_C, validationAccuracy_KNN_2_C] = trainClassifier_KNN(C_Failure_2)
[trainedClassifier_KNN_2_D, validationAccuracy_KNN_2_D] = trainClassifier_KNN(D_Failure_2)
[trainedClassifier_KNN_2_F, validationAccuracy_KNN_2_F] = trainClassifier_KNN(F_Failure_2)

%% KNN FIT
yfit_KNN_2_CDF_A = trainedClassifier_KNN_2_CDF.predictFcn(A_Test)
yfit_KNN_2_C_A = trainedClassifier_KNN_2_C.predictFcn(A_Test)
yfit_KNN_2_D_A = trainedClassifier_KNN_2_D.predictFcn(A_Test)
yfit_KNN_2_F_A = trainedClassifier_KNN_2_F.predictFcn(A_Test)

yfit_KNN_2_CDF_B = trainedClassifier_KNN_2_CDF.predictFcn(B_Test)
yfit_KNN_2_C_B = trainedClassifier_KNN_2_C.predictFcn(B_Test)
yfit_KNN_2_D_B = trainedClassifier_KNN_2_D.predictFcn(B_Test)
yfit_KNN_2_F_B = trainedClassifier_KNN_2_F.predictFcn(B_Test)

yfit_KNN_2_CDF_E = trainedClassifier_KNN_2_CDF.predictFcn(E_Test)
yfit_KNN_2_C_E = trainedClassifier_KNN_2_C.predictFcn(E_Test)
yfit_KNN_2_D_E = trainedClassifier_KNN_2_D.predictFcn(E_Test)
yfit_KNN_2_F_E = trainedClassifier_KNN_2_F.predictFcn(E_Test)


