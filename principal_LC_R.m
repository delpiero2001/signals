%% Condiciones del experimento
% Para obtener las gráficas solo hay que asegurarse de tener el archivo
% eegdata.mat en la carpeta y correr el archivo principal.m
load('eegdata.mat')
Fs=250;
%banda_beta=14:0.001:30;
%banda_alpha=8:0.001:13;
%banda_theta=4:0.001:7.99;
%banda_delta=0.1:0.001:3.9;
banda_gamma=30:0.001:100;   
banda=banda_gamma;
%% Letter-composing and Rotation
tarea1="letter-composing";
tarea2="rotation";
%% Sujeto 1
[spr1, ASP_LC1_mean, ASP_R1_mean] = Comparacion_Sujeto(1, data, banda, Fs, tarea1, tarea2);
%% Sujeto 3
[spr3, ASP_LC3_mean, ASP_R3_mean] = Comparacion_Sujeto(3, data, banda, Fs, tarea1, tarea2);
%% Sujeto4
[spr4, ASP_LC4_mean, ASP_R4_mean] = Comparacion_Sujeto(4, data, banda, Fs, tarea1, tarea2);
%% Sujeto 5
[spr5, ASP_Lc5_mean, ASP_R5_mean] = Comparacion_Sujeto(5, data, banda, Fs, tarea1, tarea2);