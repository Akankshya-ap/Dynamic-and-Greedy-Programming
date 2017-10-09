function [ a,ct] = insertion1( a,n,ct )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for i=2:n
    key=a(i);
    j=i-1;%ct=ct+1;
    while j>=1 && a(j)>key
        a(j+1)=a(j);
        j=j-1;
        ct=ct+1;
    end
    a(j+1)=key;
end

end

