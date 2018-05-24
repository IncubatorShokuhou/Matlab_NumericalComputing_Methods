function x = Gauss_Prin(n)
%
% GAUSS_PRIN
%
% Using Gaussian Principle Element Elimination simplify the matrix and
% generating the x that makes Ax = b.
%
% Param n is the dimention of the square matrix and the column of vector.
%
% Created by Nino on 2018/5/4. Copyright ? Nino 2018.
%


% generate a normal distribution matrix and vector, A and b respectly
A = createNormMatrix(n);
b = createNormVector(n);

% gaussian Recursive
x = Gauss_Prin_aux(A, b);

end