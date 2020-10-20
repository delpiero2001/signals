function [] = bar_graph1(ASP_T1,ASP_T2,canal,sujeto,wil,tarea1,tarea2)
    n=14;
    
    electrodo = ["c3" "c4" "p3" "p4" "o3" "o4"];
    meansT1 = zeros(1,n);
    meansT2 = zeros(1,n);
    sdsT1 = zeros(1,n);
    sdsT2 = zeros(1,n);
   
  
    ASP_T11 = ASP_T1{canal};
    ASP_T21 = ASP_T2{canal};

    for i = 1:n
        meansT1(i) = mean(ASP_T11(:,i));
        meansT2(i) = mean(ASP_T21(:,i));
 
        
        sdsT1(i) = std(ASP_T11(:,i));
        sdsT2(i) = std(ASP_T21(:,i));
        
    end
    
    
    model_series = [meansT1' meansT2'];
    model_error = [sdsT1' sdsT2'];
    nbars=2;
    
    figure
    b = bar(model_series);
    hold on
        % Calculate the number of bars in each group
        nbars = size(model_series, 2);
        % Get the x coordinate of the bars
        x = [];
        for i = 1:nbars
            x = [x ; b(i).XEndPoints];
        end
        % Plot the errorbars
        errorbar(x',model_series,model_error,'k','linestyle','none')'
        hold off
    
    
    title(sprintf("Sujeto %d: Electrodo %s",sujeto, electrodo(canal)))
    hold on
    

    XTick=1:1:n;
    plot(XTick,wil.*(meansT1+sdsT1+0.3), "*")
  
    
    %set(gca, 'XTick',XTick);
    %set(gca, 'XTickLabel', XTickLabel);
    xlabel("Segment number")
    ylabel("Mean ASP")
    legend(tarea1,tarea2)
    
end
