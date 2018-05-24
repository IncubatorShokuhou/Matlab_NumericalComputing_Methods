function A = createdNormMatrix(n)
% CREATE_NORM_MATRIX
%
% Create a inversible normal matrix, which needs to be diagonally dominant.
%
% Param n is the dimention of the square matrix.
%
% Created by Nino on 2018/5/6. Copyright ? Nino 2018.
%


% generate a normal distribution matrix x
A = [];

% gurantee A is of full rank - inversible
while rank(A) ~= n
    A = randn(n, n);
end

% diagonally dominant
for i = 1 : n
    maxIndex = 1;
    % absolute sum
    sum = abs(A(i, 1));
    for j = 2 : n
        if abs(A(i, j)) > abs(A(i, maxIndex))
            maxIndex = j;
        end
        sum = sum+abs(A(i,j));
    end
    temp = A(i, i);
    % diagonal element bigger than the absolute sum of the others in row
    A(i, i) = A(i, maxIndex)+sum;
    A(i, maxIndex) = temp;
end

end