function [ Edges, Weights ] = Kruskal( G1 )

    Edges = zeros(length(G1)-1, 2);
    Weights = zeros(length(G1) - 1,1);
    EList = zeros(length(G1)-1, 2);
    WList = zeros(length(G1) - 1,1);

    k = 1;
    for i = 1:length(G1)
        for j = i+1:length(G1)
            if( G1(i,j) ~= 0)
                EList(k,:) = [i, j];
                WList(k,:) = G1(i,j);
                k = k + 1;
            end
        end
    end
      % disp(EdgesList);
    %disp(WeightsList);
      
    for i = 2:length(WList)
        temp1 = EList(i);
        temp2 = WList(i);
        for j = i-1:-1:1
            if(temp2 < WList(j))
                WList(j+1) = WList(j);
                WList(j) = temp2;
                EList(j+1) = EList(j);
                EList(j) = temp1;
            end
                
        end
    end
      %disp(EdgesList);
    %disp(WeightsList);
      

    V = zeros(length(G1), 1);
    
    Edges(1, :) = EList(1, :);
    V(Edges(1, 1)) = 1;
    V(Edges(1, 2)) = 1;
    
      k = 1;
    for i = 2:length(WList)
        if(k <= sum(V) - 1)
            k = k + 1;
            Edges(k, :) = EList(i, :);
            Weights(k, :) = WList(i, :);
            V(Edges(k, 1)) = 1;
            V(Edges(k, 2)) = 1;
        end
    end

end

