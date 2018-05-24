function x = CG(n)
%
% CG
%
% Using Conjugate Gradient Iteration method decompose the matrix and get
% the x making Ax = b.
%
% Param n is the dimention of the square matrix and the column of vector.
%
% Created by Nino on 2018/5/11. Copyright ? Nino 2018.
%


% generate a normal distribution matrix and vector, A and b respectly
A = createNormMatrix(n);
b = createNormVector(n);
x0 = createNormVector(n);

% Conjugate Gradient Iteration
[x, iter] = CG_Iter(A,b,x0);

if iter == -1
    disp('Warning: too much iterations, CG not convergent!');
    x = [-1;-1;-1];
    return;
end

% create mistake matrix [1, iter]
mistake = [];

% Jacobi Mistakes
for i = 1 : iter
    mistake = [mistake, abs((x(i)-x(iter))./x(iter))];
end

x = x(:, iter);

end

