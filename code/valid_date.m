function valid = valid_date(y, m, d)

% Assignment: Structure this code
% . Fix errors
% . Apply Style rules
% . Minimize duplication (including if/then)
% . Use a separate function (not nested, but defined in this file) to determine whether y is a leap
%   year.

if (y == y) & (m == m) & (d == d) & y >= 0 & m >= 1 & m <= 12 & d >= 1 & d <= 31 & (isscalar(y) == true) & (isscalar(m) == true) & (isscalar(d) == true)
    if m == 1 && d <= 31
        valid = true
    elseif m == 3 && d <= 31
        valid = true
    elseif m == 4 && d <= 30
        valid = true  
    elseif m == 5 && d <= 31
        valid = true  
    elseif m == 6 && d <= 30
        valid = true  
    elseif m == 7 && d <= 31
        valid = true 
    elseif m == 8 && d <= 31
        valid = true 
    elseif m == 9 && d <= 30
        valid = true 
    elseif m == 10 && d <= 31
        valid = true
    elseif m == 11 && d <= 30
        valid = true
    elseif m == 12 && d <= 31
        valid = true
    elseif m == 2 
        if rem(y, 400) == 0
            if d <= 29
                valid = true
            else 
                valid = false
            end 
        elseif rem(y, 4) == 0 && rem(y, 100) ~= 0,
            if d <= 29
                valid = true
            else 
                valid = false
            end 
        else
            if d <= 28
                valid = true
            else 
                valid = false
            end 
        end 
    else 
        valid = false
    end 
else 
    valid = false
end