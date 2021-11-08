% loading in data
data_2014 = csvread('sun2014.csv');
data_2015 = csvread('sun2015.csv');
data_2016 = csvread('sun2016.csv');
data_2017 = csvread('sun2017.csv');

% create array of zeros
average_array = zeros(1, length(data_2014));

% looping through each month
for i=1:length(average_array)
    month_avg = (data_2014(i) + data_2015(i) + data_2016(i) + data_2017(i)) / 4;
    average_array(i) = month_avg;

end

x_axis = 1:12;

% plotting
plot(x_axis, data_2014, 'r')

hold on
plot(x_axis, data_2015, 'b')

hold on
plot(x_axis, data_2016, 'm')

hold on
plot(x_axis, data_2017, 'g')

hold on
plot(x_axis, average_array, 'k')
xlabel('Months')
ylabel('Global Horizonal Irradiance (GHI)')
title('GHI Levels from 2014-2017')
legend('2014', '2015', '2016', '2017', 'Average')
