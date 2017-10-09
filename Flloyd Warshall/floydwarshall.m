function [ G1 ] = floydwarshall( D1)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
v=length(D1);
G1=D1;
i=1;
j=1;
k=1;
for i=1:v
    for j=1:v
        for k=1:v
            if(G1(j,i)+G1(i,k)<G1(j,k))
                G1(j,k)=G1(j,i)+G1(i,k);
            end
        end
    end
end

    

end

