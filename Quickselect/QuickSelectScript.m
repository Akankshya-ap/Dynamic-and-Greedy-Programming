x =  [50:1:500];
y = zeros(1,length(x));
for i = 1:length(x)
        a = rand((x(i))*100);
        [m, y(i)] = quickSelect(a, 10, 0);
end

plot(x,y);
grid on;
legend('Quickselect performance');
xlabel('No of elements');
ylabel('No of comparisons');
