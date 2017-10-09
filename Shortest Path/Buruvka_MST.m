clc;
tree = [0	3	3	2	Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf;
        3	0	5	Inf	Inf	Inf	Inf	8	Inf	Inf	Inf	Inf	Inf	Inf;
        3	5	0	Inf	Inf	3	Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf;
        2	Inf	Inf	0	1	Inf	Inf	Inf	Inf	Inf	8	Inf	Inf	Inf;
        Inf	Inf	Inf	1	0	3	2	Inf	Inf	Inf	Inf	Inf	Inf	Inf;
        Inf	Inf	3	Inf	3	0	Inf	Inf	4	Inf	Inf	Inf	Inf	8;
        Inf	Inf	Inf	Inf	2	Inf	0	2	Inf	Inf	Inf	Inf	Inf	Inf;
        Inf	Inf	Inf	Inf	Inf	Inf	2	0	Inf	1	Inf	Inf	Inf	Inf;
        Inf	Inf	Inf	Inf	Inf	4	Inf	Inf	0	3	Inf	Inf	Inf	Inf;
        Inf	Inf	Inf	Inf	Inf	Inf	Inf	1	3	0	Inf	3	2	Inf;
        Inf	Inf	Inf	8	Inf	Inf	Inf	Inf	Inf	Inf	0	1	3	Inf;
        Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	3	1	0	Inf	4;
        Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	Inf	2	3	Inf	0	2;
        Inf	Inf	Inf	Inf	Inf	8	Inf	Inf	Inf	Inf	Inf	4	2	0];
n = length(tree);
for i = 1 : n
    for j = 1 : i
        tree(i, j) = Inf;
    end
end
c = reshape(1 : n, 1, n);
edge = [];
while(range(c))
    [u, v] = find(tree == min(min(tree)));
    u = u(1); v = v(1);
    for i = 1 : n
        if(c(u) == c(v))
            tree(u, v) = Inf;
            [u, v] = find(tree == min(min(tree)));
            u = u(1); v = v(1);
        else
            break;
        end
    end
    temp = c(v);
    for k = 1 : n
        if(c(k) == c(v))
            c(k) = c(u);
        end
    end
    edge = [edge; u v tree(u, v)];
    tree(u, v) = Inf;
    if(length(edge) == n - 1)
        break;
    end
end
edge