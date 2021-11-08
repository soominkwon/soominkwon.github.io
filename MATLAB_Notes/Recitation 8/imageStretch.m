function [new_image] = imageStretch(input_image)

[rows, columns, rgb] = size(input_image);

new_image = zeros(2*rows, columns, rgb);

for i=1:rgb
    for j=1:rows
        new_image(2*j-1, :, i) = input_image(j, :, i);
        new_image(2*j, :, i) = input_image(j, :, i);
    end
end
end
