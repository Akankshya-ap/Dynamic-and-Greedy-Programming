i=1;
d=zeros(1,100);
c=zeros(1,100);
b=zeros(1,100);
e=zeros(1,100);
f=zeros(1,100);
for l=1:1:1000
    a=round(rand(1,l)*100);
    p=a;
    q=a;
    r=a;
    b(i)=selection(p,l);
   c(i)=insertion(q,l);
   [d(i),s]=quick(a,1,l,0); 
   e(i)=mbubbles(r,l);
f(i)=l;
i=i+1;
%fprintf('%d \t %d \t %d \n',l,b(l),e(l));
end
plot(f,b,f,e,f,c,f,d);
xlabel('No of elements');
ylabel('No. of comparisons');
title('average case');
grid on;
legend('Selection','Bubble','Insertion','Quick');
disp('Analysis of different sort-average case');
