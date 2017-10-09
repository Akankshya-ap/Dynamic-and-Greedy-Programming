i=1;
%b=zeros(100);
%c=zeros(100);
%d=zeros(100);
%e=zeros(100);
for l=1:1000
a=round(rand(1,l)*100);
[b(i),s]=quick(a,1,l,0);
[c(i),s]=quick_ins(a,1,l,0);
d(i)=insertion(a,l);
e(i)=l;
i=i+1;
end
plot(e,b,e,c,e,d);
title('variants of quick sort compared with insertion sort');
xlabel('no. of elements');
legend('Quicksort','modified quick','insertionsort');
ylabel('no.of comparisons');
grid on;
disp('variants of quick sort');