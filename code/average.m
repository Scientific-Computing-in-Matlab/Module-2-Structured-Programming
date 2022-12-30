function value = average(x,mode)
% Determine the average of the data in x. The function
% can use a median, mean or …. average depending on 
% the mode parameter
% INPUT
% x       The vector of matrix with data.
% mode   The mode: median, mean. Defaults to
%              mean.
% OUTPUT
% value        The average.
% 
% BK –12/10/98
if nargin ==1
    % Default to Mean
    mode = 'MEAN';
end
switch upper(mode)
    case 'MEAN'
        value =mean(x);
    case 'MEDIAN'
        value =median(x);
    otherwise
        error('This averaging mode is unknown')
end
end