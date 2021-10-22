function [matrix_sum] = matrixSum(my_matrix)

matrix_sum = 0;

[rows, columns] = size(my_matrix);

for i=1:rows
    for j=1:columns
        matrix_sum = matrix_sum + my_matrix(i, j);
        
    end
end



end

