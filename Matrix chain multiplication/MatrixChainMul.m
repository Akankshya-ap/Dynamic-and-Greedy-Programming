function [ mnew, snew ] = MatrixChainMul( m, s, p )

INFINITY = 999999999;
n = length(p) - 1;
q=0;

for i = 1:n
    m(i,i) = 0;
end

for l = 2:n
    for i = 2:n-l+1
        j = i+l-1;
        m(i,j) = INFINITY;
        for k = i:j-1
            q = m(i,k) + m(k+1, j) + p(i-1)*p(k)*p(j);
            q
            if(q < m(i,j))
                m(i,j) = q;
                s(i,j) = k;
            end
        end
      
    end
end

mnew = m;
snew = s;
end

