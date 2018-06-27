function [ans, iter] = NewtonPro(a, x, eps)
%
% Sqare Root Caculation
%
% Using enhanced Newton method to calculate the sqare root of a particular number.
% 
% Param a is the number to be rooted.
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
    x = 10.0;
    eps = 10e-6;
elseif nargin == 1
    x = floor(sqrt(a));
    eps = 10e-6;
elseif nargin == 2
    eps = 10e-6;
end

% initialize the iteration
ans  =[];
iter = 1;
c = 2*x;

% Newton method
while iter < MAX
    iter = iter + 1;
    ans = [ans, x];
    x = x - (x*x-a)/c;
    % if near enough
    if abs(x*x - a) < eps
        ans = [ans, x];
        return;
    end
end

end