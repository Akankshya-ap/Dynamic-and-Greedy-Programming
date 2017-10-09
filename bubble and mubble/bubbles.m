function [ ct ] = bubbles( a,l )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 ct=0;i=1;
while(i<=l)
    j=1;
    while(j<=l-i)
        ct=ct+1;
        if a(j)>a(j+1)
            temp=a(j);
            a(j)=a(j+1);
            a(j+1)=temp;
           end
        j=j+1;
    end
   i=i+1;
end

end

