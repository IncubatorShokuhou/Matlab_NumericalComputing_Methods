function [xIters, errIters, ans] = LSM(m, n)
%
% Least Square Method
%
% Using LSM to solve overdetermined equation problem.
% 
% Param m is the row of the overdetermined matrix.
% Param n is the length of the vector. 
%
% Return xIters is the approximate value of solution during iterations.
% Return errIters is the error during iterations.
% Return ans is the final answer after all iterations.
%
% Created by Nino on 2018/6/25. Copyright ? Nino 2018.
%


% global value
global A;
global b;
global iter;

% long formatted
format long;

% argument adjustment
if nargin == 0
    m = 100;
    n = 10;
end

% create matrix and vector
A = createNormMatrix(m, n);
b = createNormVector(m);

% get the xIters, errIters, and the answer of iteration 
[xIters, errIters, ans]  = LSM_Iter(A, b);

end