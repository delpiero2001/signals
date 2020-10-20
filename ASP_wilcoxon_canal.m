function ASP_wilcoxon_canales_p = ASP_wilcoxon_canal(ASP_accion1,ASP_accion2)

ASP_wilcoxon_canales_p=cell(6,14);
for i=1:6
    for k=1:14
        ASP_accion1_i=ASP_accion1{i};
        %disp(ASP_accion1_i(:,k))
        ASP_accion2_i=ASP_accion2{i};
        %disp(ASP_accion2_i(:,k))
        
        [p,ASP_wilcoxon_canales_p{i,k}]=ranksum((ASP_accion1_i(:,k)).',(ASP_accion2_i(:,k)).');
    end
end

end