function [factorial_value] = factorialFunction(input_number)

factorial_value = 1;
counter = 1;

while counter <= input_number
    factorial_value = factorial_value * counter;
    counter = counter + 1;
    
end
