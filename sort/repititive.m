i=1;
for l=1:1:1000
    a=round(rand(1,l)*100);
    a=cat(2,a,a);
    l=2*l;
    b(i)=selection(a,l);
   c(i)=insertion(a,l);
     e(i)=mbubbles(a,l);
     [d(i),s]=quick(a,1,l,0);
f(i)=l;
i=i+1;
%fprintf('%d \t %d \t %d \n',l,b(l),e(l));
end
plot(f,b,f,e,f,c,f,d);
xlabel('No of elements');
ylabel('No. of comparisons');
title('repititive case');
grid on;
legend('Selection','Bubble','Insertion','Quick');
disp('Analysis of different sort-repitive case');
