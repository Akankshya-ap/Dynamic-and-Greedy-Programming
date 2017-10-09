function [ val, count ] = calPMTval( str , count )

val = 0;

for i = 1:length(str) - 1
    count = count + length(str(1:end - i));
    if(strcmp(str(1:end - i), str(1+i:end)) == 1)
        val = length(str(1:end - i));
        break;
    end
end

