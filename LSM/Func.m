function ans = Func(x0)
%
% Least Square Method
%
% Proof func obtaining the initial value of the LSM.
% 
% Param x0 is the argument of this function.
%
% Return ans is the value of this function.
%
% Created by Nino on 2018/6/25. Copyright ? Nino 2018.
%

% global value
global A;
global b;
global iter;

% vector size
[n, k] = size(x0);
n = (n-1)/2;

% initialize x
x = x0;

% LSM function
ans = abs(A(iter,:)*x-b(iter));

end

