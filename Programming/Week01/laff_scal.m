function [x_out] = laff_scal(alpha, x)

if (isvector(x) ~= 1) | (isscalar(alpha) ~= 1)
    x_out = 'FAILED'
    return
end


if (isrow(x))
    x_out = zeros(1, length(x))
    for i = 1:length(x)
        x_out(1, i) = x(1, i) * alpha 
    end
else 
    x_out = zeros(length(x), 1)
    for i = 1:length(x)
        x_out(i, 1) = x(i, 1) * alpha 
    end
end

return
end
