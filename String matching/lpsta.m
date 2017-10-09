function [ lps, count ] = lpsta( str, count )

    lps = zeros(length(str), 1);
    len=1;
    lps(1)=1;
    i=2;
    while(i<length(str)+1)
        if(strcmp(str(i),str(len))==0)
            len=len+1;
            lps(i)=len;
            i=i+1;
        else
        if(len~=1)
                len=lps(len-1);
        
            else
                lps(i)=1;
                i=i+1;
        end
        end
    end
end
   