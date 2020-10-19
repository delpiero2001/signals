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
%% Multiplication y Letter composing
tarea1="multiplication";
tarea2="letter-composing";
%% Sujeto 1
[spr1, ASP_M1_mean, ASP_LC1_mean] = Comparacion_Sujeto(1, data, banda, Fs, tarea1, tarea2);
%% Sujeto 3
[spr3, ASP_M3_mean, ASP_LC3_mean] = Comparacion_Sujeto(3, data, banda, Fs, tarea1, tarea2);
%% Sujeto4
[spr4, ASP_M4_mean, ASP_LC4_mean] = Comparacion_Sujeto(4, data, banda, Fs, tarea1, tarea2);

%% Sujeto 5
[spr5, ASP_M5_mean, ASP_LC5_mean] = Comparacion_Sujeto(5, data, banda, Fs, tarea1, tarea2);
