for l=10:1000
    a=round(rand(1,l));
    k(l-9)=0;
    c(l-9)=l;
   
    for i=1:l
        if a(i)==1
            k(l-9)=k(l-9)+1;
        end
        p(l-9)=k(l-9)/l;
   end
 %fprintf('%d \t   %d \t\t\t %d \n\n',l,p(l-9));
end
plot(c,p);
title('analysis of probability of heads in a coin');
xlabel('No. of tosses');
ylabel('Probability');
grid on;

        
            