function Result=Ifconverge(B)
    syms k;
    l=length(B);
    L=zeros(size(B));
    for i=1:l
        L(i)=limit(B(i)^k,k,inf);
    end
    if L==0
        Result=1;
    else
        Result=0;
    end
end
