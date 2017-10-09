for n=1:10
    fprintf('n=%d \n k',n);
for i=0:n
    fprintf('\t %d ',i);
end
fprintf('\t \n c');
for i=0:n
    fprintf('\t %d ',binomial(n,i));
end
fprintf('\n');
end