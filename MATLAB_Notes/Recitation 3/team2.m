function [z] = team2(x, y)

if (x>0 && y<0)||(x<0 && y>0) 
    z = 0;
elseif (x<0 && y<0) && (y>=x)
    z = 1;
elseif (x<0 && y<0) && (y<x)
    z = 2;
elseif (x>0 && y>0) && (y>=x)
    z = 3;
else
    z = 4;
end


