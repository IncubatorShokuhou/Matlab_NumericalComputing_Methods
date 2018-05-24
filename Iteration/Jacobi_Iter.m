function [ans, iter] = Jacobi_Iter(A,b,x0)
%
% Jacobi_Iter
%
% Using Jacobi Iteration decompose the matrix and get the x making Ax = b.
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
% x_k = B*x_(k-1) + f
B = inv(D)*(L+U);
f = inv(D)*b;

% iterate formula
x = B*x0+f;
% iterative number
n = 1;

while norm(x-x0)>=eps
    x0 = x;
    x = B*x0+f;
    ans = [ans, x];
    n = n+1;
    if n>=M
        disp('Warning: too much iterations, Jacobi not convergent!');
        return;
    end
   
end

% number of iterations
iter = n;

end