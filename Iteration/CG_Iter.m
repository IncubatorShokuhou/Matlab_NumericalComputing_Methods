function [ans, iter] = CG_Iter(A,b,x0)
%
% CG_Iter
%
% Using Conjugate Gradient Iteration method decompose the matrix and get
% the x making Ax = b.
%
% Param A is the matrix
% Param b is the vector
% x0 is the initial vector
%
% Created by Nino on 2018/5/11. Copyright ? Nino 2018.
%


% set the max iterative number and the iterative condition
M = 200;
eps = 1.0e-3;

% initialize x 
x = x0;
ans = x0;
% initialize r0 and r
r0=b-A*x0;
r=r0;
d=r0;

% iterative number
n = 1;

while norm(r)>=eps
    % coefficient
    a = (norm(r0)^2)*inv((d'*A*d));
    % iterate formula
    x = x + a*d;
    ans = [ans, x];
    r = b - A*x;
    B = (norm(r)^2)*inv((norm(r0)^2));
    d = r + B*d;
    r0 = r;
    n = n+1;
    % convergence justify
    if n>=M
        disp('Warning: too much iterations, CG not convergent!');
        ans = x0;
        iter = -1;
        return;
    end
end

% number of iterations
iter = n;

end