function [ array, index, n ] = partition2( array, left, right, n)
    
    pivot = array(1);
    i = left;
    j = right;
   
    while(i < j)
        while(pivot >= array(i) && i < right)
            i = i + 1;
            n = n + 1;
        end
        
        while(pivot < array(j) && j > left )
            j = j - 1;
            n = n + 1;
        end
        
        if(i < j)
            temp = array(i);
            array(i) = array(j);
            array(j) = temp;
        end
    end
    
        array(1) = array(j);
        array(j) = pivot;
        index = j;
end

