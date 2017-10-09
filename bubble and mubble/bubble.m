%fprintf('No.  Comparison  Actual_comparisons  \n');
a=zeros(1,100);
x=zeros(1,100);
b=zeros(1,100);
c=zeros(1,100);
for l=1:1000
a=round(rand(1,l)*10);
p=a;
x(l)=bubbles(a,l);
b(l)=mbubbles(p,l);
c(l)=l;
%fprintf('%d \t   %d \t\t\t %d \n',l,x(l),b(l));
end
plot(c,x,c,b);
title('Performance analysis of sorting');
xlabel('No. of elements');
ylabel('No. of comparisons');
grid on;
legend('bubble sort','modified');
disp('Analysis of sorting');

