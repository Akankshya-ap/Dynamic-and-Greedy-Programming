x = [1:1:10]; 
s = zeros(length(x), 1);
n = zeros(length(x), 1);
for i = 1:length(x)
    r(i)=2^x(i);
        a = randi(100,r(i));
       % disp(a);
        b = randi(100, r(i));
       % disp(b);
        temp = 2^nextpow2(x(i))-x(i);
        [duumy s(i)] = strassen(a,b, 0);
        n(i) = x(i)^3;
end
plot(x, s, x, n);
legend('Strassen', 'Normal');
