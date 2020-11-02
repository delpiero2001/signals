function [] = hist_graph(ASP_T1, ASP_T2,canal,sujeto, tarea1, tarea2)
    
    electrodo = ["c3" "c4" "p3" "p4" "o3" "o4"];
    T1= ASP_T1{canal};
    s=size(T1); a=s(1);b=s(2);
    len1=a*b;
    T1= reshape(T1,[1,len1]);
    T2= ASP_T2{canal};
    s=size(T2); a=s(1);b=s(2);
    len2=a*b;
    T2= reshape(T2, [1,len2]);
       
    nbins=10;
    %% Histograma
%     figure,
%     h1=histogram(T1, nbins); hold on;
%     h2=histogram(T2, nbins); 
%     
%     x1=[h1.BinLimits(1)-h1.BinWidth, h1.BinEdges];
%     x1=x1+h1.BinWidth/2; val1=[0 h1.Values 0]; c1=[0.00,0.45,0.74];
%     x2=[h2.BinLimits(1)-h2.BinWidth, h2.BinEdges];c2=[0.85,0.33,0.10];
%     x2=x2+h2.BinWidth/2; val2=[0 h2.Values 0];
%     plot(x1,val1,'Color',c1,'LineWidth',1.4)
%     plot(x2,val2,'Color',c2,'LineWidth',1.4)
%     title(sprintf("Sujeto %d: Electrodo %s",sujeto, electrodo(canal)))
%     xlabel("Absolute Spectral Power")
%     ylabel("Frequency")
%     t1=upper(char(tarea1)); t2=upper(char(tarea2));
%     legend(t1(1), t2(1))
    
    %% Aproximación Kernel
    col1=[0.84, 0.9, 0.97]; col2=[0.79, 0.79, 0.79];
    figure,
    % Histograma 1
    H1=histfit(T1,nbins,'kernel'); hold on
    line1= H1(2); bar1=H1(1);

    % Histograma 2
    H2=histfit(T2,nbins,'kernel');
    line2= H2(2); bar2=H2(1);
    
    % Area 1
    a1= area(line1.XData, line1.YData);
    a1.FaceColor=col1; bar1.FaceColor=col1;
    %bar1.Visible='off';
    a1.FaceAlpha=0.5; line1.Color=[0, 0, 0];
    
    % Area 2
    a2= area(line2.XData, line2.YData);
    a2.FaceColor=col2; bar2.FaceColor=col2;
    %bar2.Visible='off';
    a2.FaceAlpha=0.5; line2.Color=[0, 0, 0];
   
    % Labels
    title(sprintf("Sujeto %d: Electrodo %s",sujeto, electrodo(canal)))
    xlabel("Absolute Spectral Power")
    ylabel("Frequency")
    t1=upper(char(tarea1)); t2=upper(char(tarea2));
    %legend([t1(1) '-bar'], [t1(1) '-line'],[t2(1) '-bar'], [t2(1) '-line'])
    legend(t1(1), t2(1));
end

