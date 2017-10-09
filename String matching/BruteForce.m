function [ index, count ] = BruteForce( pattern, text)

    index = -1;
    n = length(pattern);
    m = length(text);
    count = 0;
    for i = 1:m-n+1
        count = count + 1;
        partialmatchlength = 0;
        for j = 1:n
            if(strcmp(text(i+j-1), pattern(j)) == 1)
                count = count + 1;
                partialmatchlength = partialmatchlength + 1;
            else
                count = count + 1;
                break;
            end
        end
        count = count + 1;
        if(partialmatchlength == length(pattern))
            index = i;
            break;
        end
    end
    
end




