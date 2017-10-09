function [ Edges, Weights ] = Prims( G2 )
INF=9999;
    for i = 1:length(G2)
        for j = 1:length(G2)
            if( G2(i,j) == 0)
                G2(i,j) = INF;
            end
        end
    end
    Edges = zeros(length(G2)-1, 2);
    Weights = zeros(length(G2) - 1,1);
    
    for i = 1:length(G2) - 1
        [minrow, ci] = min(G2(1:i, :), [], 2);
        [mincol, ri] = min(minrow);
        Edges(i,:) = [ri ci(ri)];
        Weights(i) = G2(ri, ci(ri));
        G2(ri, ci) = INF;
    end

   
end

