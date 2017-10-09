function [ ind ] = BoyerMoore( pattern, text )

    ind = -1;
    %Last Function
    last  = ones(1,26)*-1;
    alphabets = 'abcdefghijklmnopqrstuvwxyz';
    for i = 1:length(last)
        cmp = alphabets(i) == pattern;
        index = find(cmp, 1, 'last');

        if(~isempty(index))
            last(i) = index;
        end
    end

    m = length(pattern);
    n = length(text);

    i = m;
    j = m;
    while(i <= n)
        if(pattern(j) == text(i))
            if(j == 1)
                ind = i;
                break;
           
            else
                i = i - 1;
                j = j - 1;
            end
        else
            i = i + m - min(j, 1 + last(uint8(text(i)) - 96));
            j = m - 1;
        end
    end

last