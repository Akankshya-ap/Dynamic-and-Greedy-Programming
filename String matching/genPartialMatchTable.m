function [ PartialMatchTable, count ] = genPartialMatchTable( str, count )

    PartialMatchTable = zeros(length(str), 1);
    
    for i = 1:length(str)
        count = count + 1;
        [PartialMatchTable(i), count] = calPMTval(str(1:i), count);
    end
    
end

