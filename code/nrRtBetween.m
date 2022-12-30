 function number = nrRtBetween(start,stop,varargin)
        % function number = nrRtBetween (start,stop,varargin)
        % Determines the number of reaction times that fall between
        % start and stop. An arbitrary number of vectors with 
        % reaction time data can be specified.
        %
        % BK- 20/10/98
        nrSubjects = length(varargin);
        number = 0;
        for subjectNr=1:nrSubjects
            between=(varargin{subjectNr} >= start  & varargin{subjectNr}<= stop);
            number = number + sum(between);
        end
    end