i=1;
f=zeros(1,50);
d=zeros(1,50);
c=zeros(1,50);
b=zeros(1,50);
e=zeros(1,50);
for l=1:1:100
    a1=round(rand(1,l)*100);
    a=sort(a1,'descend');    
    b(i)=selection(a,l);
   c(l)=insertion(a,l);
   [d(l),s]=quick(a,1,l,0);
   e(i)=mbubbles(a,l);
f(i)=l;
i=i+1;
%fprintf('%d \t %d \t %d \t %d \t %d\n',l,b(l),c(l),e(l),d(l));
end
plot(f,b); hold on;plot(f,c); hold on; plot(f,e,f,d);
xlabel('No of elements');
ylabel('No. of comparisons');
grid on;
legend('Selection','Insertion','Bubble','Quick');
title('Reverse order case');
disp('Analysis of different sort');