function A = createdNormMatrix(n)
% CREATE_NORM_MATRIX
%
% Create a normal matrix.
%
% Param n is the dimention of the square matrix.
%
% Created by Nino on 2018/5/4. Copyright ? Nino 2018.
%


% generate a normal distribution matrix x
A = [];
while rank(A) ~= n % gurantee A is of full rank
    A = randn(n, n);
end
end