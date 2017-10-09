function [ m, n ] = quickSelect(a, k, n)
    
    l = 1;
    r = length(a);
    [a, pivot, n] = partition2(a, l, r, n);
    if(pivot == k)
        m = a(pivot);
    else
        if (pivot > k)
            r = pivot-1;
            a = a(l:r);
            [m, n] = quickSelect(a, k, n);
        else
            l = pivot + 1;
            k = k - pivot;
            a = a(l:r);
            [m, n] =  quickSelect(a, k, n);
        end
    end
end

