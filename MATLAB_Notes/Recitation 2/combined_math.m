
function [combination] = combined_math(num_1, num_2)

[var_1, var_2] = math(num_1, num_2);
[var_3, var_4] = math2(num_1, num_2);

combination = var_1 + var_2 + var_3 + var_4;

end