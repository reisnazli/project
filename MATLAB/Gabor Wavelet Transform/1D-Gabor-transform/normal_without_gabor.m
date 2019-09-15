%% Pulverizer C
f_read = load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
f_read_C20111213 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20111213_B.txt');
f_read_C20120105 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120105_B.txt');
f_read_C20120131 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120131_B.txt');
f_read_C20120306 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120306_B.txt');
f_read_C20120518 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120518_B.txt');
f_read_C20120530 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120530_B.txt');
f_read_C20120621 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120621_B.txt');
f_read_C20120726 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120726_B.txt');
f_read_C20120926 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20120926_B.txt');
f_read_C20130118 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130118_B.txt');
f_read_C20130311 = load('C:\Users\user\Desktop\data\train\training_C\Acc\C_Acc_Body_CASE_1_20130311_B.txt');
%% CF
CF_C20111213=max(abs(f_read_C20111213))/rms(f_read_C20111213);
CF_C20120105=max(abs(f_read_C20120105))/rms(f_read_C20120105);
CF_C20120131=max(abs(f_read_C20120131))/rms(f_read_C20120131);
CF_C20120306=max(abs(f_read_C20120306))/rms(f_read_C20120306);
CF_C20120518=max(abs(f_read_C20120518))/rms(f_read_C20120518);
CF_C20120530=max(abs(f_read_C20120530))/rms(f_read_C20120530);
CF_C20120621=max(abs(f_read_C20120621))/rms(f_read_C20120621);
CF_C20120726=max(abs(f_read_C20120726))/rms(f_read_C20120726);
CF_C20120926=max(abs(f_read_C20120926))/rms(f_read_C20120926);
CF_C20130118=max(abs(f_read_C20130118))/rms(f_read_C20130118);
CF_C20130311=max(abs(f_read_C20130311))/rms(f_read_C20130311);
%%
f= load('C:\Users\user\Desktop\data\failure\Acc\Fail2_Acc_Body_CASE_1_B.txt');
[w,w_mod,lowpass, L1, L2] = analysis(f, J, alpha, tau);
w_s=table(w);

ww1=(w_s.w{1,1});
%%
ALL=[CF_C20111213;CF_C20120105;CF_C20120131;CF_C20120306;CF_C20120518;CF_C20120530;CF_C20120621;CF_C20120726;CF_C20120926;CF_C20130118;CF_C20130311];


