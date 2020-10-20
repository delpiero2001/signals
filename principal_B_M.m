<<<<<<< HEAD
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
%% Baseline and Multiplication
tarea1="baseline";
tarea2="multiplication";
%% Sujeto 1
[spr1, ASP_B1_mean, ASP_M1_mean] = Comparacion_Sujeto(1, data, banda, Fs, tarea1, tarea2);
%% Sujeto 3
[spr3, ASP_B3_mean, ASP_M3_mean] = Comparacion_Sujeto(3, data, banda, Fs, tarea1, tarea2);
%% Sujeto4
[spr4, ASP_B4_mean, ASP_M4_mean] = Comparacion_Sujeto(4, data, banda, Fs, tarea1, tarea2);
%% Sujeto 5
[spr5, ASP_B5_mean, ASP_M5_mean] = Comparacion_Sujeto(5, data, banda, Fs, tarea1, tarea2);
=======
clc, clear all, close all
%% Condiciones del experimento
% Para obtener las gráficas solo hay que asegurarse de tener el archivo
% eegdata.mat en la carpeta y correr el archivo principal.m
load('eegdata.mat')
Fs=250;
banda_beta=14:0.01:30;
banda_alpha=8:0.01:13;
banda_theta=4:0.001:7.99;
%banda_delta=0.1:0.001:3.9;
banda_gamma=30:0.01:100;   
banda=banda_gamma;
%% Baseline and Multiplication
tarea1="baseline";
tarea2="multiplication";
%% Sujeto 1
[spr1, ASP_B1_mean, ASP_M1_mean] = Comparacion_Sujeto(1, data, banda, Fs, tarea1, tarea2);
%% Sujeto 3
%close all
%[spr3, ASP_B3_mean, ASP_M3_mean] = Comparacion_Sujeto(3, data, banda, Fs, tarea1, tarea2);
%% Sujeto4
%[spr4, ASP_B4_mean, ASP_M4_mean] = Comparacion_Sujeto(4, data, banda, Fs, tarea1, tarea2);
%% Sujeto 5
%[spr5, ASP_B5_mean, ASP_M5_mean] = Comparacion_Sujeto(5, data, banda, Fs, tarea1, tarea2);
>>>>>>> 183755009e08c36d141f8dce418dcd5e7dbe74b1
