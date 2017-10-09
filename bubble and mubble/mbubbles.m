function [ ct ] =mbubbles( a,l )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
 ct=0;i=1;
for i=1:l
    k=0;
    for j=1:l-i
        ct=ct+1;
        if a(j)>a(j+1)
            temp=a(j);
            a(j)=a(j+1);
            a(j+1)=temp;
            k=1;
        end
        
     end
  if k==0 
      break;
   end
end
end

