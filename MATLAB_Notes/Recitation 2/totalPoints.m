function [total_points] = totalPoints(credit_array, grade_array)

individual_points = credit_array .* grade_array;
total_points = sum(individual_points);

end