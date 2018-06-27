function ans = Interpolation()
%
% Interpolation
%
% Using linear interpolation, quadratic interpolation and cubic
% interpolation, calculating sin(.35), respectively.  
%
% This experiment is based on the known quantity sin(.32), sin(.34), 
% sin(.36), sin(.38).
%
% Created by Nino on 2018/6/25. Copyright ? Nino 2018.
%

% long formatted
format long;

% create interpolation point set
x = [.32, .34, .36, .38];
v = sin(x);
xq = .35;

% linear interpolation
vq1 = interp1(x, v, xq, 'LINEAR');

% quadratic interpolation - polyfit is facilitied
poly = polyfit(x, v, 2);
vq2 = xq*xq*poly(1,1) + xq*poly(1,2) + poly(1,3);

% cubic interpolation
vq3 = interp1(x, v, xq, 'PCHIP');

% calculate true value of sin(.35)
ans = [vq1; vq2; vq3; sin(xq)];

end