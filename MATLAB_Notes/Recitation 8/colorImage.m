function [color_image] = colorImage(color_image, read_color, write_color)

color_image(:, :, write_color) = color_image(:, :, read_color);
    
end
    
