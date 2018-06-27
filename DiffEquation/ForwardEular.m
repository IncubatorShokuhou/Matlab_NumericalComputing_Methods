function [x, y] = ForwardEular(init, left, right, h)
%
% Forward Eular Method 
%
% Using forward Eular method, i.e. Eular method, to solve the initial problems.
%
% Param init is the initial point value.
% Param left is the integral floor.
% Param right is the integral ceil.
% Param h is the step length.
%
% Return x is the steps vector.
% Return y is the value of the function corresponding to each step.
%
% Created by Nino on 2018/6/26. Copyright ? Nino 2018.
%


% steps vector
x = left:h:right;

% initialize the value vector
y = zeros(size(x));
y(1) = init;

% calculate the value of function corresponding to each step
for i=1:length(x)-1
    % explicit calculate formula
    y(i+1) = y(i) + h*(y(i) - 2*x(i)/y(i));
end

% draw plot diagram
% plot(x,y)

end

