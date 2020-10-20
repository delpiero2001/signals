function ASP_media_canales = ASP_media_canal(ASP_accion)

ASP_media_canales=cell(1,6);
for i=1:6
    ASP_media_canales{i}=mean(ASP_accion{i});
end

end

