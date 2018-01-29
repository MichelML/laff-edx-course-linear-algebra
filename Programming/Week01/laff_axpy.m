function [y_out] = laff_axpy(alpha, x, y)

if (isvector(x) ~= 1) | (isvector(y) ~= 1) | (isscalar(alpha) ~= 1) | length(x) ~= length(y)
    y_out = 'FAILED'
    return
end

scaled_x = laff_scal(alpha, x)

if (isrow(x))
    if (isrow(y))
        for i = 1:length(x)
            y(1, i) = scaled_x(1, i) + y(1, i)
        end
    else 
        for i = 1:length(x)
            y(i, 1) = scaled_x(1, i) + y(i, 1)
        end
    end
else 
    if (isrow(y))
        for i = 1:length(x)
            y(1, i) = scaled_x(i, 1) + y(1, i)
        end
    else 
        for i = 1:length(x)
            y(i, 1) = scaled_x(i, 1) + y(i, 1)
        end
    end
end

y_out = y

return
end
