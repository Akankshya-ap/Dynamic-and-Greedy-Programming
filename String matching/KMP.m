function [ index, count ] = KMP( pat, text )

    n = length(pat);
    m = length(text);
    count = 0;
    index = -1;
    
    [lps, count] =lpsta(pat, count);
    
    for i = 1:m-n+1
        plength = 0;
        count = count + 1;
        for j = 1:n
            if(strcmp(text(i+j-1), pat(j)) == 1)
                count = count + 1;
                plength = plength + 1;
            else
                count = count + 1;
                if(plength > 0)
                    i = i + plength - lps(plength);
                end
                break;
            end
        end
        
        if(plength == length(pat))
            count = count + 1;
            index = i;
            break;
        end
    end
end