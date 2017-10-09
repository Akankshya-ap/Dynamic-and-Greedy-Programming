function [ p ] = binomial(n,k )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
c=zeros(n+1,n+1);
    for i = 0:n
      for j = 0: min(i, k)
            if j == 0 || j == i
                C(i+1,j+1) = 1;
             else
                C(i+1,j+1) = C(i,j) + C(i,j+1);
            end
      end
    end
    p= C(n+1,k+1);
end

