function ans = Cubic()
%
% Interpolation
%
% Using cubic interpolation calculating sin(.35).  
%
% This experiment is based on the known quantity sin(.32), sin(.34), 
% sin(.36), sin(.38).
%
% Created by Nino on 2018/6/29. Copyright ? Nino 2018.
%


% long formatted
format long;

% create interpolation point set
x = [.32, .34, .36, 38];
y = sin(x);
x0 = .35;

% calculate the answer according to the cubic interpolation
ans = (x0-x(2)) * (x0-x(3)) * (x0 - x(4)) / (x(1)-x(2)) / (x(1)-x(3)) / (x(1)-x(4)) * y(1);
ans = ans + (x0-x(1)) * (x0-x(3)) * (x0 - x(4)) / (x(2)-x(1)) / (x(2)-x(3)) / (x(2)-x(4)) * y(2);
ans = ans + (x0-x(1)) * (x0-x(2)) * (x0 - x(4)) / (x(3)-x(1)) / (x(3)-x(2)) / (x(3)-x(4)) * y(3);
ans = ans + (x0-x(1)) * (x0-x(2)) * (x0 - x(3)) / (x(4)-x(1)) / (x(4)-x(2)) / (x(4)-x(3)) * y(4);
ans = [ans; sin(.35)];

end