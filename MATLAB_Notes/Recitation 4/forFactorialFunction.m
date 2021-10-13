function [factorial_value] = forFactorialFunction(input_number)

factorial_value = 1;

for i=1:input_number
    factorial_value = factorial_value * i;

end