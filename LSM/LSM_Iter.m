function [xIters, errIters, ans] = LSM_Iter(A, b)
%
% Least Square Method
%
% Using LSM to solve overdetermined equation problem.
% 
% Param A is the matrix to be sovled.
% Param b is the vector to be solved.
%
% Return xIters is the approximate value of solution during iterations.
% Return errIters is the error during iterations.
% Return ans is the final answer after all iterations.
%
% Created by Nino on 2018/6/25. Copyright ? Nino 2018.
%


% long formatted
format long;

% global value
global A;
global b;
global iter;

% argument adjustment
if nargin == 0
    A = [2, 4; 3, -5; 1, 2; 2, 1];
    b = [11; 3; 6; 7];
end

% proof func obtaining the least square solution
proof = Proof(A, b);

% size of A
[m, n] = size(A);

% initialization
x0 = zeros(n, 1);
ans = zeros(n, 1);
xIters = [];
errIters = [];
iter = 1;

% iterations
while iter <= m
    % find approximate solution and its absolute error of each equation
    x = fminunc(@Func, x0);
    xIters = [xIters, x];
    error = abs(x-proof);
    errIters = [errIters, error];
    % new iteration prepare
    x0 = x;
    iter = iter + 1;
end

% get the iteration answer
ans = x;

end