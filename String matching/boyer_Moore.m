function [ count ] = boyer_moore( pattern,text )
    m=length(pattern);
    n=length(text);
    count=0;
    [last,count]=last_occurence_function(pattern,count);
    i=m;
    j=m;
   
    while(i<=n)
        count=count+1;
        if(strcmp(text(i),pattern(j)==1)
            count=count+1;
            if(j==1)
                i=i+m;
                j=m;
                count=count+1;
            else
                i=i-1;
                j=j-1;
                count=count+1;
            end
        else
            l=last(text(i)-'a'+1);
            i=i+m-min(j-1,l);
            count=count+1;
            j=m;
        end
    end
end

function[last,count]=last_occurence_function(pattern,count)
    m=length(pattern);
    last=zeros(1,26);
    for i=1:m
        count=count+1;
        last(pattern(i)-'a'+1)=i;
    end
   % disp(last);
end

