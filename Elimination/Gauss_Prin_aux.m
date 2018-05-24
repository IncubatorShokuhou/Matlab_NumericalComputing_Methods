function  x = Gauss_Prin_aux(A, b)
%
% GAUSS_PRIN_AUX
%
% An auxiliary function for Gaussian Principle Element Elimination,
% simplifying the matrix and generating the x that makes Ax = b.
%
% Param A, the normal matrix.
% Param b, the normal vector.
%
% Created by Nino on 2018/5/4. Copyright ? Nino 2018.
%


% get the dimention of matrix
n = size(b);


% recursive stop condition - one formula exists
if  n == 1
    if A ~=0
        x = b/A;
    else
        x = inf;
    end
    
    
    % recursive continue condition - formulus to eliminate
else
    
    % get the maxEle and its indice
    MaxEle = max(max(abs(A)));
    [imaxR, imaxC] = find(abs(A) == MaxEle);
    
    % posit maxEle to upper left and change b correspondingly
    maxC = A(:, imaxC);
    A(:, imaxC(1)) = [];
    A = [maxC, A];
    
    maxR = A(imaxR, :);
    A(imaxR, :) = [];
    A = [maxR; A];
    
    bMaxR = b(imaxR);
    b(imaxR) = [];
    b =[bMaxR; b];
    
    % elimination
    for i = 2 : n
        coeff = A(i, 1);
        A(i, :) = A(i, :) - coeff/A(1, 1)*A(1, :);
        b(i)= b(i) - coeff/A(1, 1)*b(1);
    end
    
    % recursive submatrix and subvector
    subA = A;
    subb = b;
    subA(1, :) = [];
    subA(:, 1) = [];
    subb(1)= [];
    x = Gauss_Prin_aux(subA, subb);
    
    % get the principal element x which has the biggest coeff, and adjust
    % b correspondingly
    tempX = (b(1) - sum(A(1, 2:end).*x'))/A(1,1);
    x = [x(1:imaxC-1); tempX; x(imaxC : end)];
    
end

end