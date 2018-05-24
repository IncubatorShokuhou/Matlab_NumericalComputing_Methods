function  x = Gauss_Elim_aux(A, b)
%
% GAUSS_ELIM_AUX
%
% An auxiliary function for Gaussian Elimination, simplifying the matrix
% and generating the x that makes Ax = b.
%
% Param A, the normal matrix.
% Param b, the normal vector.
%
% Created by Nino on 2018/5/4. Copyright ? Nino 2018.
%


% get the dimention of the matrix 
n = size(b);

% elimination
for i = 1 : n-1
    for j = (i+1) : n
        if A(i, i) ~= 0
            coeff = A(j, i)/A(i, i);
            A(j, :) = A(j, :) - coeff*A(i, :);
            b(j) = b(j) - coeff*b(i);
        end
    end
end


% adjust row order
for i = 1 : n
    if A(i, i) == 0
        for j = i : n
            if A(j, i) ~= 0
                tempA = A(i, :);
                A(i, :) = A(j, :);
                A(j, :) = tempA;
                tempB = b(i);
                b(i, :) = b(j, :);
                b(j, :) = tempB;
            end
        end
    end
end


% substitute into matrix
for i = n : -1 : 1
    for j = (i+1) : n
        b(i) = b(i)-A(i, j)*b(j);
    end
    b(i) = b(i)/A(i, i);
    plot(b);
end

x = b;

end