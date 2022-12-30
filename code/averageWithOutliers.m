function  [m,s ] =  averageWithOutliers(data,varargin)
% function  [m,s ] =  average(data,varargin)
% Average data with outlier removal.
%INPUT
%
% data = vector with data
%
% Parameter/values
% ‘removeOutliers’ true or false. Removes data <> 3*sd
% ‘error’ ‘std’ or ‘ste’. To return std or ste.
%
p=inputParser;
p.addParameter('removeOutliers',false,@islogical);  
p.addParameter('error','std',@ischar);
p.parse(varargin{:});


m = mean(data);
s = std(data);
if p.Results.removeOutliers
    data(abs(data-m)> 3*sd) =[];
    m=mean(data);
    s=std(data);
end

switch (p.Results.error)
    case 'std'
        return;
    case 'ste'
        s= s./sqrt(length(data));
end

end