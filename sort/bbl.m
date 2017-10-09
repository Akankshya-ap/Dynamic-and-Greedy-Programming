function [ a ] =bbl( a,l )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

 i=1;
for i=1:l-1
    k=0;
    for j=1:l-i
      
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

