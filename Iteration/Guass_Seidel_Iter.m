function [ans, iter] = Guass_Seidel_Iter(A,b,x0)
%
% Gauss_Seidel_Iter
%
% Using Gauss_Seidel Iteration decompose the matrix and interate the x to
% make Ax = b.
%
% Param A is the matrix
% Param b is the vector
% x0 is the initial vector
%
% Created by Nino on 2018/5/6. Copyright ? Nino 2018.
%


% set the max iterative number and the iterative condition
M = 200;
eps = 1.0e-6;
ans = x0;

% diagnose matrix D
D = diag(diag(A));
% lower triangle matrix L
L = -tril(A,-1);
% upper triangle matrix U
U = -triu(A,1);
% x = G*x0 + f;
G = inv(D-L)*U;
f = inv(D-L)*b;

% iterative formula
x = G*x0+f;
ans = [ans, x];
% iterative number
n=1; 

while norm(x-x0)>=eps
    x0 = x;
    x = G*x0+f;
    ans = [ans, x];
    n = n+1;
    if n>=M
        disp('Warning: too much iterations, Gauss_Seidel not convergent!');
        return;
    end
end

% number of iterations
iter = n;

end