function [ans, iter] = Secant(a, x0, x, eps)
%
% Sqare Root Caculation
%
% Using secant method to calculate the sqare root of a particular number.
% 
% Param a is the number to be rooted.
% Param x0 is the initial number of the root.
% Param x is the initial number of the root.
% Param eps is the error tolerance of the Newton method.
%
% Return ans is the root of target number during iterations.
% Return iter is the iteration number.
%
% Created by Nino on 2018/6/25. Copyright ? Nino 2018.
%

% max iterations
MAX = 100;

% long formatted
format long;

% argument adjustment
if nargin == 0
    a = 115;
    x0 = 10.0;
    x = 11.0;
    eps = 10e-6;
elseif nargin == 1
    x0 = floor(sqrt(a));
    x = ceil(sqrt(a));
    eps = 10e-6;
elseif nargin == 2
    eps = 10e-6;
end

% initialize the iteration
ans  =[];
iter = 1;
% Newton method
while iter < MAX
    iter = iter + 1;
    ans = [ans, x];
    tmp = x;
    x = x - (x*x-a)/(x+x0);
    x0 = tmp;
    % if near enough
    if abs(x*x - a) < eps
        ans = [ans, x];
        return;
    end
end

end