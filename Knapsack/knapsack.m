function [ Max ] = knapsack( w,wt,value )

 k = zeros(length(wt)+2,w+2);
 for i=1:length(wt)+1
     for j=1:w+1
         if (i==1 || j==1)
             k(i,j)=0;
         elseif (wt(i-1)<j)
              k(i,j) = max(value(i-1)+k(i-1,j-wt(i-1)), k(i-1,j));
             else
               k(i,j) = k(i-1,j);
         end
     end
 end
  Max = k(length(wt)+1,w+1);             
end

