function ASP_act = ASP_action(Sujeto,act,action,banda,Fs)

Subject = sprintf("subject %d",Sujeto);

if Subject=="subject 5"
    M=15;
elseif Subject=="subject 4" & action =="letter-composing"
    M=9;
else
    M=10;
end

ASP_act=cell(1,6);
for i=1:6
    ASP_act{i}=zeros(M,14);
end

for i=1:M
    for j=1:14
        for k=1:6
            [pxx, F]= periodogram(act{k}{i,j},[],banda,Fs);
            P_11=log10(sum(pxx));
            ASP_act{k}(i,j)=P_11;
        end
    end
end

end
