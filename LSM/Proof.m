function ans = Proof(A, b)
%
% Least Square Method
%
% Proof func obtaining the least square solution.
% 
% Param A is the matrix to be sovled.
% Param b is the vector to be solved.
%
% Return ans is the ideal least square solution.
%
% Created by Nino on 2018/6/25. Copyright ? Nino 2018.
%

% long formatted
format long;

% argument adjustment
if nargin == 0
    A = [2, 4; 3, -5; 1, 2; 2, 1];
    b = [11; 3; 6; 7];
end

% as proved, A'*A*x = A'*b
ans = (A'*A)\(A'*b);

end