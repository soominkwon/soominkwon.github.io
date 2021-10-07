exam_grade = [85, 47.5, 68, 99.5, 70, 15, 90];
hours_studied = [20, 3, 7, 32, 15, 1, 27];

exam_grade = [exam_grade, 100, 35];
hours_studied = [hours_studied, 40, 5];

[sorted_grades, indices] = sort(exam_grade);
sorted_hours = hours_studied(indices);

figure
plot(sorted_grades, sorted_hours)
title('Exam Grade vs. Hours Studied')
xlabel('Exam Grade')
ylabel('Hours Studied')