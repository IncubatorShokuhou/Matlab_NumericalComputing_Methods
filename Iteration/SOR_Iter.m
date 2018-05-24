function [ans, iter] = SOR_Iter(A,b,x0,w)
%
% SOR_Iter
%
% Using Successive Over Reaxation Iteration method decompose the matrix and
% get the x making Ax = b.
%
% Param A is the matrix
% Param b is the vector
% x0 is the initial vector
% w reaxation factor
%
% Created by Nino on 2018/5/10. Copyright ? Nino 2018.
%


% reaxation factor
if nargin == 3
    w = 1.1;
end

% set the max iterative number and the iterative condition
M = 200;
eps = 1.0e-6;
ans = x0;

% diagnose matrix D
D = diag(diag(A));
% lower triangle matrix L
L = -tril(A, -1);
% upper triangle matrix U
U = -triu(A, 1);

% x_k = B*x_(k-1)+f;
B = inv(D - w*L)*[(1-w)*D + w*U];
f = w*inv(D - w*L)*b;

% iterate formula
x = B*x0+f;
ans = [ans, x];
% iterative number
n = 1;

while norm(x-x0)>=eps
    x0 = x;
    x= B*x0+f;
    ans = [ans, x];
    n = n+1;
    if n>=M
        disp('Warning: too much iterations, SOR not convergent!');
        iter = -1;
        x = [-1;-1;-1];
        return;
    end
end

% number of iterations
iter = n;
end


