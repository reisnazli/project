%%
C_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\C_Failure.csv','ReadVariableNames',true);
D_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\D_Failure.csv','ReadVariableNames',true);
F_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\F_Failure.csv','ReadVariableNames',true);
%%
CDF_Failure=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\CDF_Failure.csv','ReadVariableNames',true);
%%
A_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\A_hurstexp.csv','ReadVariableNames',true);
B_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\B_hurstexp.csv','ReadVariableNames',true);
E_Test=readtable('C:\Users\user\Desktop\Hurst Exponent Data\Hurst_Fail_9\E_hurstexp.csv','ReadVariableNames',true);
%% ENSEMBLE TRAIN
[trainedClassifier_ENS_CDF, validationAccuracy_ENS_CDF] = trainClassifier(CDF_Failure)
[trainedClassifier_ENS_C, validationAccuracy_ENS_C] = trainClassifier(C_Failure)
[trainedClassifier_ENS_D, validationAccuracy_ENS_D] = trainClassifier(D_Failure)
[trainedClassifier_ENS_F, validationAccuracy_ENS_F] = trainClassifier(F_Failure)

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