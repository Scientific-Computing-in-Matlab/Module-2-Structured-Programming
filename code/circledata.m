function [surface,circumference] = circledata(radius) 
% function [surface,circumference] = circledata(radius) 
% A function to determine the surface and circumference
% of a circle, given its radius.
%
% INPUT
% radius        The radius of the circle.
%
% OUTPUT
% surface       The surface of the circle.
% circumference  The circumference of the circle.
%
% BK – 22/9/98
surface        = pi*radius^2;
circumference  = 2*pi*radius;
end