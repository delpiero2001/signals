function [spr, ASP_T1_mean, ASP_T2_mean] = Comparacion_Sujeto(sujeto, data, banda, Fs, tarea1, tarea2)
% data = Es la data analizada
% banda= Especificar banda alpha, beta, gamma, etc
% Fs= frecuencia de muestreso
% tarea1= string que contiene el nombre de la tarea1
% tarea2= string que contiene el nombre de la tarea2
global pxx_T1;
global pxx_T2;
global pxx;
% Tarea1
T1=Matriz_sa(sujeto,tarea1,data);
ASP_T1=ASP_action(sujeto,T1,tarea1,banda,Fs);
ASP_T1_mean=ASP_media_canal(ASP_T1);
pxx_T1=pxx;
% Tarea2
T2=Matriz_sa(sujeto,tarea2,data);
ASP_T2=ASP_action(sujeto,T2,tarea2,banda,Fs);
ASP_T2_mean=ASP_media_canal(ASP_T2);
pxx_T2=pxx;
% Grafica
spr= SPR(sujeto, ASP_T1_mean, ASP_T2_mean, tarea1, tarea2);
ASP_plot(sujeto, ASP_T1_mean, ASP_T2_mean, tarea1, tarea2);

end

