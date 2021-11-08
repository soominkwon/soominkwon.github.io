function [transposed_matrix] = matrixTranspose(my_matrix)

[rows, cols] = size(my_matrix);
transposed_matrix = zeros( size(my_matrix) );

for i=1:rows
   for j=1:cols
   transposed_matrix(j, i) = my_matrix(i, j);
   
   end
    
end


end