function [y_out] = laff_norm2(x)

if (isvector(x) ~= 1)
    y_out = 'FAILED'
    return
end

square_sum = 0

for i = 1:length(x)
    square_sum = square_sum + x(i) * x(i)
end

y_out = sqrt(square_sum)

return
end
