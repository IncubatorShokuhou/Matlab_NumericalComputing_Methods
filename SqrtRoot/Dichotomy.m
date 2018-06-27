function [ans, iter] = Dichotomy(a, left, right, eps)
%
% Sqare Root Caculation
%
% Using dichotomy method to calculate the sqare root of a particular number.
% 
% Param a is the number to be rooted.
% Param left is the lower bound of the dichotomy method.
% Param right is the upper bound of the dichotomy method.
% Param eps is the error tolerance of the dichotomy method.
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
    left = 10.0;
    right = 11.0;
    eps = 10e-6;
elseif nargin == 1
    left = floor(sqrt(a));
    right = ceil(sqrt(a));
    eps = 10e-6;
elseif nargin == 3
    eps = 10e-6;
end

% initialize the iteration
iter = 1;
ans = [];

% dichotomy method
while iter < MAX
    mid = (left + right)/2;
    iter = iter+1;
    ans = [ans, mid];
    val = mid*mid - a;
    % if near enough
    if abs(val) < eps
        ans = [ans, mid];
        return;
    end
    % split
    if val > 0
        right = mid;
    elseif val < 0
        left = mid;
    end
end

end