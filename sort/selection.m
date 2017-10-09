function [ ct] = selection( a,l)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
ct=0;
for i=1:l
    min=i;%ct=ct+1;
    for j=i+1:l
       ct=ct+1;
        if a(j)<a(min)
            min=j;
           ct=ct+1;
        end
    end
    temp=a(min);
    a(min)=a(i);
    a(i)=temp;
end
end

