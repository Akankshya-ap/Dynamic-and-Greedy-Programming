function [ a,ct] = mergeso(a,l,r,ct)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
if(l<r)
        ct=ct+1;
        m=l+(r-l)/2;
        [a,ct]=mergeso(a,l,m,ct);
        [a,ct]=mergeso(a,m+1,r,ct);
        [a,ct]=merges(a,l,m,r,ct);
end
end

