function ans = CSPS(left, right, steps)
%
% Compound Simpson Formula
%
% Using compound Simpson formula to solve the integral calculation.
%
% Param left is the integral floor.
% Param right is the integral ceil.
% Param steps is the oberservasions number.
%
% Return ans is the answer of this integral calculation.
%
% Created by Nino on 2018/6/26. Copyright ? Nino 2018.
%


% syms defination
syms x;
f(x) = sin(x)/x;

% limit handle
lv = sin(left)/left;
if isnan(lv)
    lv = limit(f(x),x,left,'right');
end
rv = sin(right)/right;
if isnan(rv)
    rv = limit(f(x),x,right,'left');
end

% core part
h = (right-left)/steps;
sum = lv+rv+4*f(left+h/2);
for i=1 : steps-1
    sum = sum + 4*f(left+i*h+h/2) + 2*f(left+i*h);
end
ans = sum * h / 6;

% convert to vapor number
vpa(ans,6);

end

