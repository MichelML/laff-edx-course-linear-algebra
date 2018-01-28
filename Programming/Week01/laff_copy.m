function [ y_out ] = laff_copy(x, y)

if (isvector(x) ~= 1) | (isvector(y) ~= 1) | (length(x) ~= length(y))
    y_out = 'FAILED'
    disp('computed')
    return
end

if (isrow(x))
    if (isrow(y))
        for i = 1:length(x)
            y(1, i) = x(1, i)
        end
    else 
        y = x'
    end
else
    if (isrow(y))
        y = x'
    else
        for i = 1:length(x)
            y(i, 1) = x(i, 1)
        end
     end
end

y_out = y

return
end
