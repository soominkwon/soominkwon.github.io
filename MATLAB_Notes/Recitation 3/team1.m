function [z] = team1(x, y)

if (x>0 && y>0) && (x > y)
    z = 4;
elseif (x>0 && y>0) && (x <= y)
    z = 3;
elseif (x<0 && y<0) && (x > y)
    z = 2;
elseif (x<0 && y<0) && (x <= y)
    z = 1;
else
    z = 0;

end