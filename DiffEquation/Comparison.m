function [x, y] = Comparison(init, left, right, h)
%
% 4 Methods Comparison
%
% Using forward Eular method, backward Eular method, ladder shape method
% and enhanced Eular method to solve the initial problems.
%
% Param init is the initial point value.
% Param left is the integral floor.
% Param right is the integral ceil.
% Param h is the step length.
%
% Return x is the steps vector.
% Return y is the value of the function corresponding to each step, each
% row of y related to a method, respectively.
%
% Created by Nino on 2018/6/26. Copyright ? Nino 2018.
%


% steps vector
x = left:h:right;

% initialize the value vector
y = zeros(4,size(x,2));
[x, y(1,:)] = ForwardEular(init, left, right, h);
[x, y(2,:)] = BackwardEular(init, left, right, h);
[x, y(3,:)] = LadderShape(init, left, right, h);
[x, y(4,:)] = EularPro(init, left, right, h);


% draw plot diagram
plot(y');
legend('forward','backward','ladder','pro');
plot(x, y(4,:)-y(1,:),x, y(4,:)-y(2,:),x, y(4,:)-y(3,:));
legend('forwardErr','backwardErr','ladderErr');

end

