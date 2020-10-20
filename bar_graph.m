function [] = bar_graph(ASP_T1,ASP_T2,canal,sujeto,wil)
    n=14;
    
    electrodo = ["c3" "c4" "p3" "p4" "o3" "o4"];
    means = zeros(1,3*n);
    sds = zeros(1,3*n);
   
    
    ASP_T11 = ASP_T1{canal};
    ASP_T21 = ASP_T2{canal};
    cuenta = 1;
    medias = zeros(1,n);
    devs = zeros(1,n);
    for i = 1:3:3*n
        means(i) = mean(ASP_T11(:,cuenta));
        means(i+1) = mean(ASP_T21(:,cuenta));
        means(i+2) = 0;
        medias(cuenta)= mean(ASP_T11(:,cuenta));
        
        sds(i) = std(ASP_T11(:,cuenta));
        sds(i+1) = std(ASP_T21(:,cuenta));
        sds(i+2) = NaN;
        devs(cuenta)=std(ASP_T21(:,cuenta));
        cuenta=cuenta+1;
        
    end
    x=1:3*n;
    
    figure
    title(sprintf("Sujeto %d: Electrodo %s",sujeto, electrodo(canal)))
    hold on
    
    
    b=bar(x,means);
    errorbar(means,sds ,'.')
    XTickLabel={'1' ; '2'; '3' ; '4';'5';'6';'7';'8';'9';'10';'11';'12';'13';'14'};
    XTick=1.5:3:3*n;
    plot(XTick,wil.*(medias+devs+0.3), "*")
  
    
    set(gca, 'XTick',XTick);
    set(gca, 'XTickLabel', XTickLabel);
    xlabel("Segment number")
    ylabel("Mean ASP")
    ylim([0 2.7])
    
    set(b(1), 'FaceColor','r')
    set(b(1), 'FaceColor','b')
end

