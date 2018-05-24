function x = SOR_w(n)
%
% SOR_w
%
% Using Successive Over Reaxation Iteration decompose the matrix and
% interate the x to make Ax = b.
%
% Param n is the dimention of the square matrix and the column of vector.
%
% Created by Nino on 2018/5/10. Copyright ? Nino 2018.
%


% generate a normal distribution matrix and vector, A and b respectly
A = createNormMatrix(n);
b = createNormVector(n);
x0 = createNormVector(n);
iter_array = [];

% Gauss_Seidel Iteration
for w = 0.8 : 0.05 : 1.2
    [x, iter] = SOR_Iter(A,b,x0,w);
    if iter ~= -1
        x = x(:, iter);
    end
    iter_array = [iter_array, iter];
end

end