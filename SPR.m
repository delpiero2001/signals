<<<<<<< HEAD
function spr = SPR(Sujeto,task1, task2, tarea1, tarea2)
n_channels=6;

spr=cell(1,n_channels);
media=zeros(1,n_channels);
for i=1:n_channels
    spr{i}=task1{i}-task2{i};
    media(i)=mean(spr{i});
end
canales=['c3'; 'c4';'p3'; 'p4'; 'o1'; 'o2'];
figure('Name',sprintf('Sujeto %d',Sujeto),'NumberTitle','off');
a='--';
sgtitle(sprintf('Sujeto %d : SPR entre %s y %s',Sujeto,tarea1, tarea2)),
formato=[['b' a];['g' a];['r' a];['c' a];['m' a];['k' a]];
for i=1:n_channels
    subplot(2,3,i),
    plot(spr{i},formato(i,:),'LineWidth',2),hold on,
    plot(media(i)*ones(1,length(spr{i})),'r','LineWidth',2);
    xlabel('N° de segmentos'), ylabel('Spectral Power Ratio'),
    title(sprintf('Electrodo %s',canales(i,:))),
    axis tight
end

=======
function spr = SPR(Sujeto,task1, task2, tarea1, tarea2)
n_channels=6;

spr=cell(1,n_channels);
media=zeros(1,n_channels);
for i=1:n_channels
    spr{i}=task1{i}-task2{i};
    media(i)=mean(spr{i});
end
canales=['c3'; 'c4';'p3'; 'p4'; 'o1'; 'o2'];
figure('Name',sprintf('Sujeto %d',Sujeto),'NumberTitle','off');
a='--';
sgtitle(sprintf('Sujeto %d : SPR entre %s y %s',Sujeto,tarea1, tarea2)),
formato=[['b' a];['g' a];['r' a];['c' a];['m' a];['k' a]];
for i=1:n_channels
    subplot(2,3,i),
    plot(spr{i},formato(i,:),'LineWidth',2),hold on,
    plot(media(i)*ones(1,length(spr{i})),'r','LineWidth',2);
    xlabel('N° de segmentos'), ylabel('Spectral Power Ratio'),
    title(sprintf('Electrodo %s',canales(i,:))),
    axis tight
end

>>>>>>> 183755009e08c36d141f8dce418dcd5e7dbe74b1
end