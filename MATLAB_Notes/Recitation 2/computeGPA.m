function [gpa] = computeGPA(credit_array, grade_array)

total_creds = totalCredits(credit_array);
total_points = totalPoints(credit_array, grade_array);

gpa = total_points / total_creds;

end

