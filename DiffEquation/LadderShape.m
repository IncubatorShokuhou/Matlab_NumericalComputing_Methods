function [x, y] = LadderShape(init, left, right, h)
%
% Ladder Shape Method 
%
% Using ladder shape method to solve the initial problems.
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


% MAX
MAX = 100;
eps = 10e-18;

% steps vector
x = left:h:right;

% initialize the value vector
y = zeros(size(x));
y(1) = init;

% calculate the value of function corresponding to each step
for i=1:length(x)-1
    % implicit calculate formula
    tmp = y(i) + h*(y(i) - 2*x(i)/y(i));
    prev = tmp;
    for j=1:MAX
        y(i+1) = y(i) + h/2*( (y(i)-2*x(i)/y(i)) + (tmp-2*x(i+1)/tmp) );
        if abs(y(i+1) - prev) < eps
            disp(j);    % diplay the iteration number
            break;
        end
        prev = y(i+1);
    end
end

% draw plot diagram
% plot(x,y)

end

