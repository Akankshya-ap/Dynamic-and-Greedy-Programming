function [ a,ct ] = merges( a,l,m,r,ct )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
n1=m-l+1;
n2=r-m;
i=1;
p=zeros(100);
for i=1:n1
    x=l+i-1;
    p(i)=a(x);
    ct=ct+1;
end
j=1;
    for j=1:n2
        y=m+j;
        rR(j)=a(y);
        ct=ct+1;
    end
    i=1;j=1;k=l;
    while i<=n1 &&j<=n2
        ct=ct+1;
        if p(i)<=rR(j)
            a(k)=p(i);
            i=i+1;
        end
        if p(i)>rR(j)
                a(k)=rR(j);
            j=j+1;
            end
            k=k+1;
    end    
end

