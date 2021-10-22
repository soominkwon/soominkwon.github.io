function [prime_sum] = primeSum(my_matrix)

prime_sum = 0;

[rows, columns] = size(my_matrix);

for i=1:rows
    for j=1:columns
        
        element = my_matrix(i, j);
        if isprime(element)
           prime_sum = prime_sum + element; 
        end
        
    end
end



end