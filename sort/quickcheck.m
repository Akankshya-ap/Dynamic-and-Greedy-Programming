l=15;
a=round(rand(1,l)*100);
disp(a);
[ct,b]=quick(a,1,l,0);
fprintf('after sorting\n');
disp(b);