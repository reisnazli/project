%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Failure
%%
C_Failure=readtable('C:\Users\user\Desktop\SI\SI_class_C.csv','ReadVariableNames',true);
D_Failure=readtable('C:\Users\user\Desktop\SI\SI_class_D.csv','ReadVariableNames',true);
F_Failure=readtable('C:\Users\user\Desktop\SI\SI_class_F.csv','ReadVariableNames',true);

%%
A_Test=readtable('C:\Users\user\Desktop\SI\SI_class_A.csv','ReadVariableNames',true);
B_Test=readtable('C:\Users\user\Desktop\SI\SI_class_B.csv','ReadVariableNames',true);
E_Test=readtable('C:\Users\user\Desktop\SI\SI_class_E.csv','ReadVariableNames',true);
%% ENSEMBLE TRAIN
[trainedClassifier_ENS_1_C, validationAccuracy_ENS_1_C] = trainClassifier(C_Failure)
[trainedClassifier_ENS_1_D, validationAccuracy_ENS_1_D] = trainClassifier(D_Failure)
[trainedClassifier_ENS_1_F, validationAccuracy_ENS_1_F] = trainClassifier(F_Failure)

%% ENSEMBLE FIT
yfit_ENS_C_1_A = trainedClassifier_ENS_1_C.predictFcn(A_Test)
yfit_ENS_D_1_A = trainedClassifier_ENS_1_D.predictFcn(A_Test)
yfit_ENS_F_1_A = trainedClassifier_ENS_1_F.predictFcn(A_Test)

yfit_ENS_1_C_B = trainedClassifier_ENS_1_C.predictFcn(B_Test)
yfit_ENS_1_D_B = trainedClassifier_ENS_1_D.predictFcn(B_Test)
yfit_ENS_1_F_B = trainedClassifier_ENS_1_F.predictFcn(B_Test)

yfit_ENS_1_C_E = trainedClassifier_ENS_1_C.predictFcn(E_Test)
yfit_ENS_1_D_E = trainedClassifier_ENS_1_D.predictFcn(E_Test)
yfit_ENS_1_F_E = trainedClassifier_ENS_1_F.predictFcn(E_Test)


%% SVM TRAIN
[trainedClassifier_SVM_1_C, validationAccuracy_SVM_1_C] = trainClassifier_SVM(C_Failure)
[trainedClassifier_SVM_1_D, validationAccuracy_SVM_1_D] = trainClassifier_SVM(D_Failure)
[trainedClassifier_SVM_1_F, validationAccuracy_SVM_1_F] = trainClassifier_SVM(F_Failure)

%% SVM FIT
yfit_SVM_1_C_A = trainedClassifier_SVM_1_C.predictFcn(A_Test)
yfit_SVM_1_D_A = trainedClassifier_SVM_1_D.predictFcn(A_Test)
yfit_SVM_1_F_A = trainedClassifier_SVM_1_F.predictFcn(A_Test)

yfit_SVM_1_C_B = trainedClassifier_SVM_1_C.predictFcn(B_Test)
yfit_SVM_1_D_B = trainedClassifier_SVM_1_D.predictFcn(B_Test)
yfit_SVM_1_F_B = trainedClassifier_SVM_1_F.predictFcn(B_Test)

yfit_SVM_1_C_E = trainedClassifier_SVM_1_C.predictFcn(E_Test)
yfit_SVM_1_D_E = trainedClassifier_SVM_1_D.predictFcn(E_Test)
yfit_SVM_1_F_E = trainedClassifier_SVM_1_F.predictFcn(E_Test)

%% KNN TRAIN
[trainedClassifier_KNN_1_C, validationAccuracy_KNN_1_C] = trainClassifier_KNN(C_Failure)
[trainedClassifier_KNN_1_D, validationAccuracy_KNN_1_D] = trainClassifier_KNN(D_Failure)
[trainedClassifier_KNN_1_F, validationAccuracy_KNN_1_F] = trainClassifier_KNN(F_Failure)

%% KNN FIT
yfit_KNN_1_C_A = trainedClassifier_KNN_1_C.predictFcn(A_Test)
yfit_KNN_1_D_A = trainedClassifier_KNN_1_D.predictFcn(A_Test)
yfit_KNN_1_F_A = trainedClassifier_KNN_1_F.predictFcn(A_Test)

yfit_KNN_1_C_B = trainedClassifier_KNN_1_C.predictFcn(B_Test)
yfit_KNN_1_D_B = trainedClassifier_KNN_1_D.predictFcn(B_Test)
yfit_KNN_1_F_B = trainedClassifier_KNN_1_F.predictFcn(B_Test)

yfit_KNN_1_C_E = trainedClassifier_KNN_1_C.predictFcn(E_Test)
yfit_KNN_1_D_E = trainedClassifier_KNN_1_D.predictFcn(E_Test)
yfit_KNN_1_F_E = trainedClassifier_KNN_1_F.predictFcn(E_Test)