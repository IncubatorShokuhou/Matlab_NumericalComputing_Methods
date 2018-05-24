function x = Gauss_Seidel(n)
%
% Gauss_Seidel
%
% Using Gauss_Seidel Iteration decompose the matrix and interate the x to
% make Ax = b.
%
% Param n is the dimention of the square matrix and the column of vector.
%
% Created by Nino on 2018/5/6. Copyright ? Nino 2018.
%


% generate a normal distribution matrix and vector, A and b respectly
A = createNormMatrix(n);
b = createNormVector(n);
x0 = createNormVector(n);

% Gauss_Seidel Iteration
[x, iter] = Guass_Seidel_Iter(A,b,x0);

% create mistake matrix [1, iter]
mistake = [];

% Jacobi Mistakes
for i = 1 : iter
    mistake = [mistake, abs((x(i)-x(iter))./x(iter))];
end

x = x(:, iter);

end