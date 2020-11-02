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
    figure,
    b = bar(model_series);
    %%For MATLAB R2019a or earlier releases
    hold on
    % Find the number of groups and the number of bars in each group
    ngroups = size(model_series, 1);
    nbars = size(model_series, nbars);
    % Calculate the width for each bar group
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    % Set the position of each error bar in the centre of the main bar
    % Based on barweb.m by Bolu Ajiboye from MATLAB File Exchange
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_series(:,i), model_error(:,i), 'k', 'linestyle', 'none');
    end
    title(sprintf("Sujeto %d: Electrodo %s",sujeto, electrodo(canal)))
    XTick=1:1:n;
    plot(XTick,wil.*(meansT1+sdsT1+0.3), "*")
    xlabel("Segment number")
    ylabel("Mean ASP")
    legend(tarea1,tarea2)
    
end
