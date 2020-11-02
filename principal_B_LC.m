clear all, close all, clc
%% Condiciones del experimento
% Para obtener las gráficas solo hay que asegurarse de tener el archivo
% eegdata.mat en la carpeta y correr el archivo principal.m
load('eegdata.mat')
Fs=250; ts=0.01;
banda_delta=0.1:ts:3.9;
banda_theta=4:ts:7.99;
banda_alpha=8:ts:13;
banda_beta=14:ts:30;
banda_gamma=30:ts:100;   
banda=banda_gamma;
%% Baseline y Letter composing
tarea1="baseline";
tarea2="letter-composing";
%% Sujeto 1
[spr1, ASP_B1_mean, ASP_LC1_mean] = Comparacion_Sujeto(1, data, banda, Fs, tarea1, tarea2);
%% Sujeto 3
%[spr3, ASP_B3_mean, ASP_LC3_mean] = Comparacion_Sujeto(3, data, banda, Fs, tarea1, tarea2);
%% Sujeto4
%[spr4, ASP_B4_mean, ASP_LC4_mean] = Comparacion_Sujeto(4, data, banda, Fs, tarea1, tarea2);
%% Sujeto 5
%[spr5, ASP_B5_mean, ASP_LC5_mean] = Comparacion_Sujeto(5, data, banda, Fs, tarea1, tarea2);
%done