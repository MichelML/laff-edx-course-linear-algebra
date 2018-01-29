function [ y_out ] = laff_dot(x, y)

if (isvector(x) ~= 1) | (isvector(y) ~= 1) | (length(x) ~= length(y))
    y_out = 'FAILED'
    return
end

y_out = 0

for i = 1:length(x)
    y_out = y_out + (x(i) * y(i))
end

return
end
