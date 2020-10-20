function MAS = Matriz_sa(Sujeto,accion,data)

Subject = sprintf('subject %d',Sujeto);
if Subject=="subject 5"
    M=15;
elseif Subject=="subject 4" & accion=="letter-composing"
    M=9;
else
    M=10;
end


MAS=cell(1,6);
for i=1:6
    MAS{i}=cell(M,14);    
end

for i=1:325
    if  (data{1,i}{1,1} == Subject) & (data{1,i}{1,2} == accion) 
        for m=1:M
            if data{1,i}{1,3} == sprintf("trial %d",m)
                if ~isnan(data{1,i}{1,4}(1))
                    for k=1:13
                        limite_inf=round(0.7*(k-1)*250);
                        MAS{1}{m,k}=data{1,i}{1,4}(1,(limite_inf+1):(limite_inf+250));
                        %MAS{1}{m,k}(isnan(MAS{1}{m,k}))=0;
                        
                        MAS{2}{m,k}=data{1,i}{1,4}(2,(limite_inf+1):(limite_inf+250));
                        %MAS{2}{m,k}(isnan(MAS{2}{m,k}))=0;
                        
                        MAS{3}{m,k}=data{1,i}{1,4}(3,(limite_inf+1):(limite_inf+250));
                        %MAS{3}{m,k}(isnan(MAS{3}{m,k}))=0;
                        
                        MAS{4}{m,k}=data{1,i}{1,4}(4,(limite_inf+1):(limite_inf+250));
                        %MAS{4}{m,k}(isnan(MAS{4}{m,k}))=0;
                        
                        MAS{5}{m,k}=data{1,i}{1,4}(5,(limite_inf+1):(limite_inf+250));
                        %MAS{5}{m,k}(isnan(MAS{5}{m,k}))=0;
                        
                        MAS{6}{m,k}=data{1,i}{1,4}(6,(limite_inf+1):(limite_inf+250));
                        %MAS{6}{m,k}(isnan(MAS{6}{m,k}))=0;
                    end
                    MAS{1}{m,14}=data{1,i}{1,4}(1,2276:2500);
                    %MAS{1}{m,14}(isnan(MAS{1}{m,k}))=0;
                    
                    MAS{2}{m,14}=data{1,i}{1,4}(2,2276:2500);
                    %MAS{2}{m,14}(isnan(MAS{2}{m,k}))=0;
                    
                    MAS{3}{m,14}=data{1,i}{1,4}(3,2276:2500);
                    %MAS{3}{m,14}(isnan(MAS{3}{m,k}))=0;
                    
                    MAS{4}{m,14}=data{1,i}{1,4}(4,2276:2500);
                    %MAS{4}{m,14}(isnan(MAS{4}{m,k}))=0;
                    
                    MAS{5}{m,14}=data{1,i}{1,4}(5,2276:2500);
                    %MAS{5}{m,14}(isnan(MAS{5}{m,k}))=0;
                    
                    MAS{6}{m,14}=data{1,i}{1,4}(6,2276:2500);
                    %MAS{6}{m,14}(isnan(MAS{6}{m,k}))=0;
                else
                    
                end
            end
        end
        
    end
end
