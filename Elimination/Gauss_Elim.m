function x = Gauss_Elim(n)
%
% GAUSS_ELIM
%
% Using Gaussian Elimination simplify the matrix and generating the x that
% makes Ax = b.
%
% Param n is the dimention of the square matrix and the column of vector.
%
% Created by Nino on 2018/5/4. Copyright ? Nino 2018.
%


% generate a normal distribution matrix and vector, A and b respectly
A = createNormMatrix(n);
b = createNormVector(n);

% gaussian elimination auxiliary
x = Gauss_Elim_aux(A, b);

end