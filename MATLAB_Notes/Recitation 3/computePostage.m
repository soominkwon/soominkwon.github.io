function [cost] = computePostage(weight, volume)

% check if both oversized and overweight
if (weight > 5) && (volume > 20)
    cost = (weight*3) + volume + 10 + 8;

% check if oversized
elseif (weight > 5)
    cost = (weight*3) + volume + 10;

% check if overweight
elseif (volume > 20)
    cost = (weight*3) + volume + 8;
    
else
    cost = (weight*3) + volume;
end

