function ASP_kolmogorov_canales_p = ASP_kolmogorov_canal(ASP_accion)

ASP_kolmogorov_canales_p=cell(6,14);
for i=1:6
    for k=1:14
        ASP_accion_i=(ASP_accion{i});
        %disp('kolorov')
        %disp(kstest((ASP_accion_i(:,k)).'));
        ASP_kolmogorov_canales_p{i,k}=kstest((ASP_accion_i(:,k)).'); %One-sample Kolmogorov-Smirnov test
    end 
end
end