function [ct,a] = quick_ins( a,l,h,ct)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if l<h && h-l<=12
    %ct=ct+1;
[a,ct]=insertion1(a,h-l+1,ct);
end
if(l<h && h-l>12)
    %[a pi]=partition(a,l,h);
  ct=ct+1;
    pivot=a(h);
i=l-1;
j=1;

for j=l:1:h-1
    %ct=ct+1;
   if a(j)<=pivot
    i=i+1;
    ct=ct+1;
    temp=a(i);
    a(i)=a(j);
    a(j)=temp;
    end
end
temp2=a(i+1);
a(i+1)=a(h);
a(h)=temp2;
pi=i+1;
      [ct,a]=quick(a,l,pi-1,ct);
      [ct,a]=quick(a,pi+1,h,ct); 
end
%ct=ct+1;
end

