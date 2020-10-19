function ASP_plot(Sujeto,task1, task2, tarea1, tarea2)
n_channels=6;

figure('Name',sprintf('Sujeto %d',Sujeto),'NumberTitle','off');
a='--';
sgtitle(sprintf('Sujeto %d : ASP promedio de %s y %s',Sujeto,tarea1, tarea2)),
%formato=[['b' a];['g' a];['r' a];['c' a];['m' a];['y' a]];
canales=['c3'; 'c4';'p3'; 'p4'; 'o1'; 'o2'];
for i=1:n_channels
    subplot(2,3,i),
    plot(task1{i},'r-','LineWidth',2), hold on,
    plot(task2{i},'b-','LineWidth',2);
    xlabel('N° de segmentos'), ylabel('Absolute Spectral Power mean'),
    title(sprintf('Electrodo %s',canales(i,:))),
    axis tight
    legend(sprintf('ASP_{%s}',tarea1),sprintf('ASP_{%s}',tarea2))
end

end

