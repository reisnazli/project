clc; clear all; close all force;
%% settings
% parameters for the fractional B-spline wavelets
tau   = 0.53;        % default 
%alpha=1;
% level of decomposition
J=1;
M  = 4096;  
%% input signal 
% Failure
f_readf = load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
f_failure2=transpose(f_readf);
%%
alpha_1=1;
%% analysis failure 1
[w_failure2_1,w_mod_failure2_1,w_sm_failure2_1,w_spec_failure2_1] = analysisforind(f_failure2, J, alpha_1, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_1=table(w_sm_failure2_1);
ww1_failure2_1=(w_s_failure2_1.w_sm_failure2_1{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_1=table(w_mod_failure2_1);
ww_mod1_failure2_1=(w_modu_failure2_1.w_mod_failure2_1{1,1});
%%
SI_modulus_failure2_1=geomean(ww1_failure2_1)/mean(ww1_failure2_1);
SI_squaredmodulus_failure2_1=geomean(ww_mod1_failure2_1)/mean(ww_mod1_failure2_1);
%% Crest Factor  failure2
CF_modulus_failure2_1=max(ww1_failure2_1)/rms(ww1_failure2_1);
CF_squaredmodulus_failure2_1=max(ww_mod1_failure2_1)/rms(ww_mod1_failure2_1);


%%
alpha_2=2;
%% analysis failure 1
[w_failure2_2,w_mod_failure2_2,w_sm_failure2_2,w_spec_failure2_2] = analysisforind(f_failure2, J, alpha_2, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_2=table(w_sm_failure2_2);
ww1_failure2_2=(w_s_failure2_2.w_sm_failure2_2{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_2=table(w_mod_failure2_2);
ww_mod1_failure2_2=(w_modu_failure2_2.w_mod_failure2_2{1,1});
%%
SI_modulus_failure2_2=geomean(ww1_failure2_2)/mean(ww1_failure2_2);
SI_squaredmodulus_failure2_2=geomean(ww_mod1_failure2_2)/mean(ww_mod1_failure2_2);
%% Crest Factor  failure2
CF_modulus_failure2_2=max(ww1_failure2_2)/rms(ww1_failure2_2);
CF_squaredmodulus_failure2_2=max(ww_mod1_failure2_2)/rms(ww_mod1_failure2_2);


%%
alpha_3=3;
%% analysis failure 1
[w_failure2_3,w_mod_failure2_3,w_sm_failure2_3,w_spec_failure2_3] = analysisforind(f_failure2, J, alpha_3, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_3=table(w_sm_failure2_3);
ww1_failure2_3=(w_s_failure2_3.w_sm_failure2_3{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_3=table(w_mod_failure2_3);
ww_mod1_failure2_3=(w_modu_failure2_3.w_mod_failure2_3{1,1});
%%
SI_modulus_failure2_3=geomean(ww1_failure2_3)/mean(ww1_failure2_3);
SI_squaredmodulus_failure2_3=geomean(ww_mod1_failure2_3)/mean(ww_mod1_failure2_3);
%% Crest Factor  failure2
CF_modulus_failure2_3=max(ww1_failure2_3)/rms(ww1_failure2_3);
CF_squaredmodulus_failure2_3=max(ww_mod1_failure2_3)/rms(ww_mod1_failure2_3);


%%
alpha_4=4;
%% analysis failure 1
[w_failure2_4,w_mod_failure2_4,w_sm_failure2_4,w_spec_failure2_4] = analysisforind(f_failure2, J, alpha_4, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_4=table(w_sm_failure2_4);
ww1_failure2_4=(w_s_failure2_4.w_sm_failure2_4{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_4=table(w_mod_failure2_4);
ww_mod1_failure2_4=(w_modu_failure2_4.w_mod_failure2_4{1,1});
%%
SI_modulus_failure2_4=geomean(ww1_failure2_4)/mean(ww1_failure2_4);
SI_squaredmodulus_failure2_4=geomean(ww_mod1_failure2_4)/mean(ww_mod1_failure2_4);
%% Crest Factor  failure2
CF_modulus_failure2_4=max(ww1_failure2_4)/rms(ww1_failure2_4);
CF_squaredmodulus_failure2_4=max(ww_mod1_failure2_4)/rms(ww_mod1_failure2_4);


%%
alpha_5=5;
%% analysis failure 1
[w_failure2_5,w_mod_failure2_5,w_sm_failure2_5,w_spec_failure2_5] = analysisforind(f_failure2, J, alpha_5, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_5=table(w_sm_failure2_5);
ww1_failure2_5=(w_s_failure2_5.w_sm_failure2_5{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_5=table(w_mod_failure2_5);
ww_mod1_failure2_5=(w_modu_failure2_5.w_mod_failure2_5{1,1});
%%
SI_modulus_failure2_5=geomean(ww1_failure2_5)/mean(ww1_failure2_5);
SI_squaredmodulus_failure2_5=geomean(ww_mod1_failure2_5)/mean(ww_mod1_failure2_5);
%% Crest Factor  failure2
CF_modulus_failure2_5=max(ww1_failure2_5)/rms(ww1_failure2_5);
CF_squaredmodulus_failure2_5=max(ww_mod1_failure2_5)/rms(ww_mod1_failure2_5);


%%
alpha_6=6;
%% analysis failure 1
[w_failure2_6,w_mod_failure2_6,w_sm_failure2_6,w_spec_failure2_6] = analysisforind(f_failure2, J, alpha_6, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_6=table(w_sm_failure2_6);
ww1_failure2_6=(w_s_failure2_6.w_sm_failure2_6{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_6=table(w_mod_failure2_6);
ww_mod1_failure2_6=(w_modu_failure2_6.w_mod_failure2_6{1,1});
%%
SI_modulus_failure2_6=geomean(ww1_failure2_6)/mean(ww1_failure2_6);
SI_squaredmodulus_failure2_6=geomean(ww_mod1_failure2_6)/mean(ww_mod1_failure2_6);
%% Crest Factor  failure2
CF_modulus_failure2_6=max(ww1_failure2_6)/rms(ww1_failure2_6);
CF_squaredmodulus_failure2_6=max(ww_mod1_failure2_6)/rms(ww_mod1_failure2_6);


%%
alpha_7=7;
%% analysis failure 1
[w_failure2_7,w_mod_failure2_7,w_sm_failure2_7,w_spec_failure2_7] = analysisforind(f_failure2, J, alpha_7, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_7=table(w_sm_failure2_7);
ww1_failure2_7=(w_s_failure2_7.w_sm_failure2_7{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_7=table(w_mod_failure2_7);
ww_mod1_failure2_7=(w_modu_failure2_7.w_mod_failure2_7{1,1});
%%
SI_modulus_failure2_7=geomean(ww1_failure2_7)/mean(ww1_failure2_7);
SI_squaredmodulus_failure2_7=geomean(ww_mod1_failure2_7)/mean(ww_mod1_failure2_7);
%% Crest Factor  failure2
CF_modulus_failure2_7=max(ww1_failure2_7)/rms(ww1_failure2_7);
CF_squaredmodulus_failure2_7=max(ww_mod1_failure2_7)/rms(ww_mod1_failure2_7);


%%
alpha_8=8;
%% analysis failure 1
[w_failure2_8,w_mod_failure2_8,w_sm_failure2_8,w_spec_failure2_8] = analysisforind(f_failure2, J, alpha_8, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_8=table(w_sm_failure2_8);
ww1_failure2_8=(w_s_failure2_8.w_sm_failure2_8{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_8=table(w_mod_failure2_8);
ww_mod1_failure2_8=(w_modu_failure2_8.w_mod_failure2_8{1,1});
%%
SI_modulus_failure2_8=geomean(ww1_failure2_8)/mean(ww1_failure2_8);
SI_squaredmodulus_failure2_8=geomean(ww_mod1_failure2_8)/mean(ww_mod1_failure2_8);
%% Crest Factor  failure2
CF_modulus_failure2_8=max(ww1_failure2_8)/rms(ww1_failure2_8);
CF_squaredmodulus_failure2_8=max(ww_mod1_failure2_8)/rms(ww_mod1_failure2_8);


%%
alpha_9=9;
%% analysis failure 1
[w_failure2_9,w_mod_failure2_9,w_sm_failure2_9,w_spec_failure2_9] = analysisforind(f_failure2, J, alpha_9, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_9=table(w_sm_failure2_9);
ww1_failure2_9=(w_s_failure2_9.w_sm_failure2_9{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_9=table(w_mod_failure2_9);
ww_mod1_failure2_9=(w_modu_failure2_9.w_mod_failure2_9{1,1});
%%
SI_modulus_failure2_9=geomean(ww1_failure2_9)/mean(ww1_failure2_9);
SI_squaredmodulus_failure2_9=geomean(ww_mod1_failure2_9)/mean(ww_mod1_failure2_9);
%% Crest Factor  failure2
CF_modulus_failure2_9=max(ww1_failure2_9)/rms(ww1_failure2_9);
CF_squaredmodulus_failure2_9=max(ww_mod1_failure2_9)/rms(ww_mod1_failure2_9);


%%
alpha_10=10;
%% analysis failure 1
[w_failure2_10,w_mod_failure2_10,w_sm_failure2_10,w_spec_failure2_10] = analysisforind(f_failure2, J, alpha_10, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_10=table(w_sm_failure2_10);
ww1_failure2_10=(w_s_failure2_10.w_sm_failure2_10{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_10=table(w_mod_failure2_10);
ww_mod1_failure2_10=(w_modu_failure2_10.w_mod_failure2_10{1,1});
%%
SI_modulus_failure2_10=geomean(ww1_failure2_10)/mean(ww1_failure2_10);
SI_squaredmodulus_failure2_10=geomean(ww_mod1_failure2_10)/mean(ww_mod1_failure2_10);
%% Crest Factor  failure2
CF_modulus_failure2_10=max(ww1_failure2_10)/rms(ww1_failure2_10);
CF_squaredmodulus_failure2_10=max(ww_mod1_failure2_10)/rms(ww_mod1_failure2_10);


%%
alpha_11=11;
%% analysis failure 1
[w_failure2_11,w_mod_failure2_11,w_sm_failure2_11,w_spec_failure2_11] = analysisforind(f_failure2, J, alpha_11, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_11=table(w_sm_failure2_11);
ww1_failure2_11=(w_s_failure2_11.w_sm_failure2_11{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_11=table(w_mod_failure2_11);
ww_mod1_failure2_11=(w_modu_failure2_11.w_mod_failure2_11{1,1});
%%
SI_modulus_failure2_11=geomean(ww1_failure2_11)/mean(ww1_failure2_11);
SI_squaredmodulus_failure2_11=geomean(ww_mod1_failure2_11)/mean(ww_mod1_failure2_11);
%% Crest Factor  failure2
CF_modulus_failure2_11=max(ww1_failure2_11)/rms(ww1_failure2_11);
CF_squaredmodulus_failure2_11=max(ww_mod1_failure2_11)/rms(ww_mod1_failure2_11);


%%
alpha_12=12;
%% analysis failure 1
[w_failure2_12,w_mod_failure2_12,w_sm_failure2_12,w_spec_failure2_12] = analysisforind(f_failure2, J, alpha_12, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_12=table(w_sm_failure2_12);
ww1_failure2_12=(w_s_failure2_12.w_sm_failure2_12{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_12=table(w_mod_failure2_12);
ww_mod1_failure2_12=(w_modu_failure2_12.w_mod_failure2_12{1,1});
%%
SI_modulus_failure2_12=geomean(ww1_failure2_12)/mean(ww1_failure2_12);
SI_squaredmodulus_failure2_12=geomean(ww_mod1_failure2_12)/mean(ww_mod1_failure2_12);
%% Crest Factor  failure2
CF_modulus_failure2_12=max(ww1_failure2_12)/rms(ww1_failure2_12);
CF_squaredmodulus_failure2_12=max(ww_mod1_failure2_12)/rms(ww_mod1_failure2_12);


%%
alpha_13=13;
%% analysis failure 1
[w_failure2_13,w_mod_failure2_13,w_sm_failure2_13,w_spec_failure2_13] = analysisforind(f_failure2, J, alpha_13, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_13=table(w_sm_failure2_13);
ww1_failure2_13=(w_s_failure2_13.w_sm_failure2_13{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_13=table(w_mod_failure2_13);
ww_mod1_failure2_13=(w_modu_failure2_13.w_mod_failure2_13{1,1});
%%
SI_modulus_failure2_13=geomean(ww1_failure2_13)/mean(ww1_failure2_13);
SI_squaredmodulus_failure2_13=geomean(ww_mod1_failure2_13)/mean(ww_mod1_failure2_13);
%% Crest Factor  failure2
CF_modulus_failure2_13=max(ww1_failure2_13)/rms(ww1_failure2_13);
CF_squaredmodulus_failure2_13=max(ww_mod1_failure2_13)/rms(ww_mod1_failure2_13);


%%
alpha_14=14;
%% analysis failure 1
[w_failure2_14,w_mod_failure2_14,w_sm_failure2_14,w_spec_failure2_14] = analysisforind(f_failure2, J, alpha_14, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_14=table(w_sm_failure2_14);
ww1_failure2_14=(w_s_failure2_14.w_sm_failure2_14{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_14=table(w_mod_failure2_14);
ww_mod1_failure2_14=(w_modu_failure2_14.w_mod_failure2_14{1,1});
%%
SI_modulus_failure2_14=geomean(ww1_failure2_14)/mean(ww1_failure2_14);
SI_squaredmodulus_failure2_14=geomean(ww_mod1_failure2_14)/mean(ww_mod1_failure2_14);
%% Crest Factor  failure2
CF_modulus_failure2_14=max(ww1_failure2_14)/rms(ww1_failure2_14);
CF_squaredmodulus_failure2_14=max(ww_mod1_failure2_14)/rms(ww_mod1_failure2_14);


%%
alpha_15=15;
%% analysis failure 1
[w_failure2_15,w_mod_failure2_15,w_sm_failure2_15,w_spec_failure2_15] = analysisforind(f_failure2, J, alpha_15, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_15=table(w_sm_failure2_15);
ww1_failure2_15=(w_s_failure2_15.w_sm_failure2_15{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_15=table(w_mod_failure2_15);
ww_mod1_failure2_15=(w_modu_failure2_15.w_mod_failure2_15{1,1});
%%
SI_modulus_failure2_15=geomean(ww1_failure2_15)/mean(ww1_failure2_15);
SI_squaredmodulus_failure2_15=geomean(ww_mod1_failure2_15)/mean(ww_mod1_failure2_15);
%% Crest Factor  failure2
CF_modulus_failure2_15=max(ww1_failure2_15)/rms(ww1_failure2_15);
CF_squaredmodulus_failure2_15=max(ww_mod1_failure2_15)/rms(ww_mod1_failure2_15);


%%
alpha_16=16;
%% analysis failure 1
[w_failure2_16,w_mod_failure2_16,w_sm_failure2_16,w_spec_failure2_16] = analysisforind(f_failure2, J, alpha_16, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_16=table(w_sm_failure2_16);
ww1_failure2_16=(w_s_failure2_16.w_sm_failure2_16{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_16=table(w_mod_failure2_16);
ww_mod1_failure2_16=(w_modu_failure2_16.w_mod_failure2_16{1,1});
%%
SI_modulus_failure2_16=geomean(ww1_failure2_16)/mean(ww1_failure2_16);
SI_squaredmodulus_failure2_16=geomean(ww_mod1_failure2_16)/mean(ww_mod1_failure2_16);
%% Crest Factor  failure2
CF_modulus_failure2_16=max(ww1_failure2_16)/rms(ww1_failure2_16);
CF_squaredmodulus_failure2_16=max(ww_mod1_failure2_16)/rms(ww_mod1_failure2_16);


%%
alpha_17=17;
%% analysis failure 1
[w_failure2_17,w_mod_failure2_17,w_sm_failure2_17,w_spec_failure2_17] = analysisforind(f_failure2, J, alpha_17, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_17=table(w_sm_failure2_17);
ww1_failure2_17=(w_s_failure2_17.w_sm_failure2_17{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_17=table(w_mod_failure2_17);
ww_mod1_failure2_17=(w_modu_failure2_17.w_mod_failure2_17{1,1});
%%
SI_modulus_failure2_17=geomean(ww1_failure2_17)/mean(ww1_failure2_17);
SI_squaredmodulus_failure2_17=geomean(ww_mod1_failure2_17)/mean(ww_mod1_failure2_17);
%% Crest Factor  failure2
CF_modulus_failure2_17=max(ww1_failure2_17)/rms(ww1_failure2_17);
CF_squaredmodulus_failure2_17=max(ww_mod1_failure2_17)/rms(ww_mod1_failure2_17);


%%
alpha_18=18;
%% analysis failure 1
[w_failure2_18,w_mod_failure2_18,w_sm_failure2_18,w_spec_failure2_18] = analysisforind(f_failure2, J, alpha_18, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_18=table(w_sm_failure2_18);
ww1_failure2_18=(w_s_failure2_18.w_sm_failure2_18{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_18=table(w_mod_failure2_18);
ww_mod1_failure2_18=(w_modu_failure2_18.w_mod_failure2_18{1,1});
%%
SI_modulus_failure2_18=geomean(ww1_failure2_18)/mean(ww1_failure2_18);
SI_squaredmodulus_failure2_18=geomean(ww_mod1_failure2_18)/mean(ww_mod1_failure2_18);
%% Crest Factor  failure2
CF_modulus_failure2_18=max(ww1_failure2_18)/rms(ww1_failure2_18);
CF_squaredmodulus_failure2_18=max(ww_mod1_failure2_18)/rms(ww_mod1_failure2_18);


%%
alpha_19=19;
%% analysis failure 1
[w_failure2_19,w_mod_failure2_19,w_sm_failure2_19,w_spec_failure2_19] = analysisforind(f_failure2, J, alpha_19, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_19=table(w_sm_failure2_19);
ww1_failure2_19=(w_s_failure2_19.w_sm_failure2_19{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_19=table(w_mod_failure2_19);
ww_mod1_failure2_19=(w_modu_failure2_19.w_mod_failure2_19{1,1});
%%
SI_modulus_failure2_19=geomean(ww1_failure2_19)/mean(ww1_failure2_19);
SI_squaredmodulus_failure2_19=geomean(ww_mod1_failure2_19)/mean(ww_mod1_failure2_19);
%% Crest Factor  failure2
CF_modulus_failure2_19=max(ww1_failure2_19)/rms(ww1_failure2_19);
CF_squaredmodulus_failure2_19=max(ww_mod1_failure2_19)/rms(ww_mod1_failure2_19);


%%
alpha_20=20;
%% analysis failure 1
[w_failure2_20,w_mod_failure2_20,w_sm_failure2_20,w_spec_failure2_20] = analysisforind(f_failure2, J, alpha_20, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_20=table(w_sm_failure2_20);
ww1_failure2_20=(w_s_failure2_20.w_sm_failure2_20{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_20=table(w_mod_failure2_20);
ww_mod1_failure2_20=(w_modu_failure2_20.w_mod_failure2_20{1,1});
%%
SI_modulus_failure2_20=geomean(ww1_failure2_20)/mean(ww1_failure2_20);
SI_squaredmodulus_failure2_20=geomean(ww_mod1_failure2_20)/mean(ww_mod1_failure2_20);
%% Crest Factor  failure2
CF_modulus_failure2_20=max(ww1_failure2_20)/rms(ww1_failure2_20);
CF_squaredmodulus_failure2_20=max(ww_mod1_failure2_20)/rms(ww_mod1_failure2_20);


%%
alpha_21=21;
%% analysis failure 1
[w_failure2_21,w_mod_failure2_21,w_sm_failure2_21,w_spec_failure2_21] = analysisforind(f_failure2, J, alpha_21, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_21=table(w_sm_failure2_21);
ww1_failure2_21=(w_s_failure2_21.w_sm_failure2_21{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_21=table(w_mod_failure2_21);
ww_mod1_failure2_21=(w_modu_failure2_21.w_mod_failure2_21{1,1});
%%
SI_modulus_failure2_21=geomean(ww1_failure2_21)/mean(ww1_failure2_21);
SI_squaredmodulus_failure2_21=geomean(ww_mod1_failure2_21)/mean(ww_mod1_failure2_21);
%% Crest Factor  failure2
CF_modulus_failure2_21=max(ww1_failure2_21)/rms(ww1_failure2_21);
CF_squaredmodulus_failure2_21=max(ww_mod1_failure2_21)/rms(ww_mod1_failure2_21);


%%
alpha_22=22;
%% analysis failure 1
[w_failure2_22,w_mod_failure2_22,w_sm_failure2_22,w_spec_failure2_22] = analysisforind(f_failure2, J, alpha_22, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_22=table(w_sm_failure2_22);
ww1_failure2_22=(w_s_failure2_22.w_sm_failure2_22{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_22=table(w_mod_failure2_22);
ww_mod1_failure2_22=(w_modu_failure2_22.w_mod_failure2_22{1,1});
%%
SI_modulus_failure2_22=geomean(ww1_failure2_22)/mean(ww1_failure2_22);
SI_squaredmodulus_failure2_22=geomean(ww_mod1_failure2_22)/mean(ww_mod1_failure2_22);
%% Crest Factor  failure2
CF_modulus_failure2_22=max(ww1_failure2_22)/rms(ww1_failure2_22);
CF_squaredmodulus_failure2_22=max(ww_mod1_failure2_22)/rms(ww_mod1_failure2_22);


%%
alpha_23=23;
%% analysis failure 1
[w_failure2_23,w_mod_failure2_23,w_sm_failure2_23,w_spec_failure2_23] = analysisforind(f_failure2, J, alpha_23, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_23=table(w_sm_failure2_23);
ww1_failure2_23=(w_s_failure2_23.w_sm_failure2_23{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_23=table(w_mod_failure2_23);
ww_mod1_failure2_23=(w_modu_failure2_23.w_mod_failure2_23{1,1});
%%
SI_modulus_failure2_23=geomean(ww1_failure2_23)/mean(ww1_failure2_23);
SI_squaredmodulus_failure2_23=geomean(ww_mod1_failure2_23)/mean(ww_mod1_failure2_23);
%% Crest Factor  failure2
CF_modulus_failure2_23=max(ww1_failure2_23)/rms(ww1_failure2_23);
CF_squaredmodulus_failure2_23=max(ww_mod1_failure2_23)/rms(ww_mod1_failure2_23);


%%
alpha_24=24;
%% analysis failure 1
[w_failure2_24,w_mod_failure2_24,w_sm_failure2_24,w_spec_failure2_24] = analysisforind(f_failure2, J, alpha_24, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_24=table(w_sm_failure2_24);
ww1_failure2_24=(w_s_failure2_24.w_sm_failure2_24{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_24=table(w_mod_failure2_24);
ww_mod1_failure2_24=(w_modu_failure2_24.w_mod_failure2_24{1,1});
%%
SI_modulus_failure2_24=geomean(ww1_failure2_24)/mean(ww1_failure2_24);
SI_squaredmodulus_failure2_24=geomean(ww_mod1_failure2_24)/mean(ww_mod1_failure2_24);
%% Crest Factor  failure2
CF_modulus_failure2_24=max(ww1_failure2_24)/rms(ww1_failure2_24);
CF_squaredmodulus_failure2_24=max(ww_mod1_failure2_24)/rms(ww_mod1_failure2_24);


%%
alpha_25=25;
%% analysis failure 1
[w_failure2_25,w_mod_failure2_25,w_sm_failure2_25,w_spec_failure2_25] = analysisforind(f_failure2, J, alpha_25, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_25=table(w_sm_failure2_25);
ww1_failure2_25=(w_s_failure2_25.w_sm_failure2_25{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_25=table(w_mod_failure2_25);
ww_mod1_failure2_25=(w_modu_failure2_25.w_mod_failure2_25{1,1});
%%
SI_modulus_failure2_25=geomean(ww1_failure2_25)/mean(ww1_failure2_25);
SI_squaredmodulus_failure2_25=geomean(ww_mod1_failure2_25)/mean(ww_mod1_failure2_25);
%% Crest Factor  failure2
CF_modulus_failure2_25=max(ww1_failure2_25)/rms(ww1_failure2_25);
CF_squaredmodulus_failure2_25=max(ww_mod1_failure2_25)/rms(ww_mod1_failure2_25);


%%
alpha_26=26;
%% analysis failure 1
[w_failure2_26,w_mod_failure2_26,w_sm_failure2_26,w_spec_failure2_26] = analysisforind(f_failure2, J, alpha_26, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_26=table(w_sm_failure2_26);
ww1_failure2_26=(w_s_failure2_26.w_sm_failure2_26{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_26=table(w_mod_failure2_26);
ww_mod1_failure2_26=(w_modu_failure2_26.w_mod_failure2_26{1,1});
%%
SI_modulus_failure2_26=geomean(ww1_failure2_26)/mean(ww1_failure2_26);
SI_squaredmodulus_failure2_26=geomean(ww_mod1_failure2_26)/mean(ww_mod1_failure2_26);
%% Crest Factor  failure2
CF_modulus_failure2_26=max(ww1_failure2_26)/rms(ww1_failure2_26);
CF_squaredmodulus_failure2_26=max(ww_mod1_failure2_26)/rms(ww_mod1_failure2_26);


%%
alpha_27=27;
%% analysis failure 1
[w_failure2_27,w_mod_failure2_27,w_sm_failure2_27,w_spec_failure2_27] = analysisforind(f_failure2, J, alpha_27, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_27=table(w_sm_failure2_27);
ww1_failure2_27=(w_s_failure2_27.w_sm_failure2_27{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_27=table(w_mod_failure2_27);
ww_mod1_failure2_27=(w_modu_failure2_27.w_mod_failure2_27{1,1});
%%
SI_modulus_failure2_27=geomean(ww1_failure2_27)/mean(ww1_failure2_27);
SI_squaredmodulus_failure2_27=geomean(ww_mod1_failure2_27)/mean(ww_mod1_failure2_27);
%% Crest Factor  failure2
CF_modulus_failure2_27=max(ww1_failure2_27)/rms(ww1_failure2_27);
CF_squaredmodulus_failure2_27=max(ww_mod1_failure2_27)/rms(ww_mod1_failure2_27);


%%
alpha_28=28;
%% analysis failure 1
[w_failure2_28,w_mod_failure2_28,w_sm_failure2_28,w_spec_failure2_28] = analysisforind(f_failure2, J, alpha_28, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_28=table(w_sm_failure2_28);
ww1_failure2_28=(w_s_failure2_28.w_sm_failure2_28{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_28=table(w_mod_failure2_28);
ww_mod1_failure2_28=(w_modu_failure2_28.w_mod_failure2_28{1,1});
%%
SI_modulus_failure2_28=geomean(ww1_failure2_28)/mean(ww1_failure2_28);
SI_squaredmodulus_failure2_28=geomean(ww_mod1_failure2_28)/mean(ww_mod1_failure2_28);
%% Crest Factor  failure2
CF_modulus_failure2_28=max(ww1_failure2_28)/rms(ww1_failure2_28);
CF_squaredmodulus_failure2_28=max(ww_mod1_failure2_28)/rms(ww_mod1_failure2_28);


%%
alpha_29=29;
%% analysis failure 1
[w_failure2_29,w_mod_failure2_29,w_sm_failure2_29,w_spec_failure2_29] = analysisforind(f_failure2, J, alpha_29, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_29=table(w_sm_failure2_29);
ww1_failure2_29=(w_s_failure2_29.w_sm_failure2_29{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_29=table(w_mod_failure2_29);
ww_mod1_failure2_29=(w_modu_failure2_29.w_mod_failure2_29{1,1});
%%
SI_modulus_failure2_29=geomean(ww1_failure2_29)/mean(ww1_failure2_29);
SI_squaredmodulus_failure2_29=geomean(ww_mod1_failure2_29)/mean(ww_mod1_failure2_29);
%% Crest Factor  failure2
CF_modulus_failure2_29=max(ww1_failure2_29)/rms(ww1_failure2_29);
CF_squaredmodulus_failure2_29=max(ww_mod1_failure2_29)/rms(ww_mod1_failure2_29);


%%
alpha_30=30;
%% analysis failure 1
[w_failure2_30,w_mod_failure2_30,w_sm_failure2_30,w_spec_failure2_30] = analysisforind(f_failure2, J, alpha_30, tau);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% smoothness index  failure 2
w_s_failure2_30=table(w_sm_failure2_30);
ww1_failure2_30=(w_s_failure2_30.w_sm_failure2_30{1,1});
%% smoothness index squared modulus  failure2
w_modu_failure2_30=table(w_mod_failure2_30);
ww_mod1_failure2_30=(w_modu_failure2_30.w_mod_failure2_30{1,1});
%%
SI_modulus_failure2_30=geomean(ww1_failure2_30)/mean(ww1_failure2_30);
SI_squaredmodulus_failure2_30=geomean(ww_mod1_failure2_30)/mean(ww_mod1_failure2_30);
%% Crest Factor  failure2
CF_modulus_failure2_30=max(ww1_failure2_30)/rms(ww1_failure2_30);
CF_squaredmodulus_failure2_30=max(ww_mod1_failure2_30)/rms(ww_mod1_failure2_30);

%%
ALL_CF_modulus=[CF_modulus_failure2_1;CF_modulus_failure2_2;CF_modulus_failure2_3;CF_modulus_failure2_4;CF_modulus_failure2_5;CF_modulus_failure2_6;CF_modulus_failure2_7;CF_modulus_failure2_8;CF_modulus_failure2_9;CF_modulus_failure2_10;CF_modulus_failure2_11;CF_modulus_failure2_12;CF_modulus_failure2_13;CF_modulus_failure2_14;CF_modulus_failure2_15;CF_modulus_failure2_16;CF_modulus_failure2_17;CF_modulus_failure2_18;CF_modulus_failure2_19;CF_modulus_failure2_20;CF_modulus_failure2_21;CF_modulus_failure2_22;CF_modulus_failure2_23;CF_modulus_failure2_24;CF_modulus_failure2_25;CF_modulus_failure2_26;CF_modulus_failure2_27;CF_modulus_failure2_28;CF_modulus_failure2_29;CF_modulus_failure2_30];
ALL_CF_squaredmodulus=[CF_squaredmodulus_failure2_1;CF_squaredmodulus_failure2_2;CF_squaredmodulus_failure2_3;CF_squaredmodulus_failure2_4;CF_squaredmodulus_failure2_5;CF_squaredmodulus_failure2_6;CF_squaredmodulus_failure2_7;CF_squaredmodulus_failure2_8;CF_squaredmodulus_failure2_9;CF_squaredmodulus_failure2_10;CF_squaredmodulus_failure2_11;CF_squaredmodulus_failure2_12;CF_squaredmodulus_failure2_13;CF_squaredmodulus_failure2_14;CF_squaredmodulus_failure2_15;CF_squaredmodulus_failure2_16;CF_squaredmodulus_failure2_17;CF_squaredmodulus_failure2_18;CF_squaredmodulus_failure2_19;CF_squaredmodulus_failure2_20;CF_squaredmodulus_failure2_21;CF_squaredmodulus_failure2_22;CF_squaredmodulus_failure2_23;CF_squaredmodulus_failure2_24;CF_squaredmodulus_failure2_25;CF_squaredmodulus_failure2_26;CF_squaredmodulus_failure2_27;CF_squaredmodulus_failure2_28;CF_squaredmodulus_failure2_29;CF_squaredmodulus_failure2_30];
ALL_SI_modulus=[SI_modulus_failure2_1;SI_modulus_failure2_2;SI_modulus_failure2_3;SI_modulus_failure2_4;SI_modulus_failure2_5;SI_modulus_failure2_6;SI_modulus_failure2_7;SI_modulus_failure2_8;SI_modulus_failure2_9;SI_modulus_failure2_10;SI_modulus_failure2_11;SI_modulus_failure2_12;SI_modulus_failure2_13;SI_modulus_failure2_14;SI_modulus_failure2_15;SI_modulus_failure2_16;SI_modulus_failure2_17;SI_modulus_failure2_18;SI_modulus_failure2_19;SI_modulus_failure2_20;SI_modulus_failure2_21;SI_modulus_failure2_22;SI_modulus_failure2_23;SI_modulus_failure2_24;SI_modulus_failure2_25;SI_modulus_failure2_26;SI_modulus_failure2_27;SI_modulus_failure2_28;SI_modulus_failure2_29;SI_modulus_failure2_30];
ALL_SI_squaredmodulus=[SI_squaredmodulus_failure2_1;SI_squaredmodulus_failure2_2;SI_squaredmodulus_failure2_3;SI_squaredmodulus_failure2_4;SI_squaredmodulus_failure2_5;SI_squaredmodulus_failure2_6;SI_squaredmodulus_failure2_7;SI_squaredmodulus_failure2_8;SI_squaredmodulus_failure2_9;SI_squaredmodulus_failure2_10;SI_squaredmodulus_failure2_11;SI_squaredmodulus_failure2_12;SI_squaredmodulus_failure2_13;SI_squaredmodulus_failure2_14;SI_squaredmodulus_failure2_15;SI_squaredmodulus_failure2_16;SI_squaredmodulus_failure2_17;SI_squaredmodulus_failure2_18;SI_squaredmodulus_failure2_19;SI_squaredmodulus_failure2_20;SI_squaredmodulus_failure2_21;SI_squaredmodulus_failure2_22;SI_squaredmodulus_failure2_23;SI_squaredmodulus_failure2_24;SI_squaredmodulus_failure2_25;SI_squaredmodulus_failure2_26;SI_squaredmodulus_failure2_27;SI_squaredmodulus_failure2_28;SI_squaredmodulus_failure2_29;SI_squaredmodulus_failure2_30];

ALL=[ALL_CF_modulus ALL_CF_squaredmodulus ALL_SI_modulus ALL_SI_squaredmodulus];