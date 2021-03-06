function [spr, ASP_T1_mean, ASP_T2_mean] = Comparacion_Sujeto(sujeto, data, banda, Fs, tarea1, tarea2)
% data = Es la data analizada
% banda= Especificar banda alpha, beta, gamma, etc
% Fs= frecuencia de muestreso
% tarea1= string que contiene el nombre de la tarea1
% tarea2= string que contiene el nombre de la tarea2
global ASP_T1
global ASP_T2
% Tarea1
T1=Matriz_sa(sujeto,tarea1,data);
ASP_T1=ASP_action(sujeto,T1,tarea1,banda,Fs);
ASP_T1_mean=ASP_media_canal(ASP_T1);
ASP_T1_kolmogorov_p=ASP_kolmogorov_canal(ASP_T1);
%disp(ASP_T1_kolmogorov_p);

% Tarea2
T2=Matriz_sa(sujeto,tarea2,data);
ASP_T2=ASP_action(sujeto,T2,tarea2,banda,Fs);
ASP_T2_mean=ASP_media_canal(ASP_T2);
%ASP_T2_kolmogorov_p=ASP_kolmogorov_canal(ASP_T2);

%disp(ASP_T2_kolmogorov_p);

%Test Wilcoxon
ASP_wilcoxon_canales_p = ASP_wilcoxon_canal(ASP_T1,ASP_T2);
ASP_wilcoxon_canales_p = cell2mat(ASP_wilcoxon_canales_p);
disp(ASP_wilcoxon_canales_p);


% Grafica
spr= SPR(sujeto, ASP_T1_mean, ASP_T2_mean, tarea1, tarea2);
ASP_plot(sujeto, ASP_T1_mean, ASP_T2_mean, tarea1, tarea2);

% Gráfico de barras para cada electrodo y sujeto
bar_graph1(ASP_T1,ASP_T2,1,sujeto,ASP_wilcoxon_canales_p(1,:),tarea1,tarea2)
bar_graph1(ASP_T1,ASP_T2,2,sujeto,ASP_wilcoxon_canales_p(2,:),tarea1,tarea2)
bar_graph1(ASP_T1,ASP_T2,3,sujeto,ASP_wilcoxon_canales_p(3,:),tarea1,tarea2)
bar_graph1(ASP_T1,ASP_T2,4,sujeto,ASP_wilcoxon_canales_p(4,:),tarea1,tarea2)
bar_graph1(ASP_T1,ASP_T2,5,sujeto,ASP_wilcoxon_canales_p(5,:),tarea1,tarea2)
bar_graph1(ASP_T1,ASP_T2,6,sujeto,ASP_wilcoxon_canales_p(6,:),tarea1,tarea2)

% Gráfico de histogramas 
hist_graph(ASP_T1, ASP_T2,1,sujeto, tarea1, tarea2)
hist_graph(ASP_T1, ASP_T2,2,sujeto, tarea1, tarea2)
hist_graph(ASP_T1, ASP_T2,3,sujeto, tarea1, tarea2)
hist_graph(ASP_T1, ASP_T2,4,sujeto, tarea1, tarea2)
hist_graph(ASP_T1, ASP_T2,5,sujeto, tarea1, tarea2)
hist_graph(ASP_T1, ASP_T2,6,sujeto, tarea1, tarea2)

end
