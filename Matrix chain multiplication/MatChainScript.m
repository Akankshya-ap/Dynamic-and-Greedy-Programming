%%Matrix Chain Multiplication

INFINITY = 999999999;

p = [5 10 20 50 10 7 5];

n = length(p);
s = zeros(n, n);
m = zeros(n, n);

for i = 1:n
    for j = i+1:n
        m(i, j) = INFINITY;
    end
end

[m, s] = MatrixChainMul(m, s, p);
m
s