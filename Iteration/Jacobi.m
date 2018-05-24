function [x, mistake] = Jacobi(n)
%
% Jacobi
%
% Using Jacobi Iteration decompose the matrix and get the x making Ax = b.
%
% Param n is the dimention of the square matrix and the column of vector.
%
% Created by Nino on 2018/5/6. Copyright ? Nino 2018.
%


% generate a normal distribution matrix and vector, A and b respectly
A = createNormMatrix(n);
b = createNormVector(n);
x0 = createNormVector(n);

% Jacobi Iteration
[x, iter] = Jacobi_Iter(A, b, x0);

% create mistake matrix [1, iter]
mistake = [];

% Jacobi Mistakes
for i = 1 : iter
    mistake = [mistake, abs((x(i)-x(iter))./x(iter))];
end

x = x(:, iter);

end