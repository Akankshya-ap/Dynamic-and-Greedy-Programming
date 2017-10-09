function [ a i] =partition( a,l,h )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
pivot=a(h);
i=l-1;
j=0;
ct=0;
for j=l:j<=h-1
    ct=ct+1;
if a(j)<pivot
    i=i+1;
    ct=ct+1;
    temp=a(i);
    a(i)=a(j);
    a(j)=temp;
end
end
temp=a(i+1);
a(i+1)=a(h);
a(h)=temp;
i=i+1;
%disp(ct);
end

