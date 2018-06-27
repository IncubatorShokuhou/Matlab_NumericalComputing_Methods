function [x, y] = EularPro(init, left, right, h)
%
% Enhanced Eular Method 
%
% Using enhanced Eular method to solve the initial problems.
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
    % predict formula
    y(i+1) = y(i) + h*(y(i) - 2*x(i)/y(i));
    yp = y(i+1);
    % calculate formula
    y(i+1) = y(i)+h/2*( (y(i)-2*x(i)/y(i)) + (y(i+1)-2*x(i+1)/y(i+1)) );
    yc = y(i+1);
    % enhanced calculate formula
    y(i+1) = (yp+yc)/2;
end

% draw plot diagram
% plot(x,y)

end

