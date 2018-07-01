function ans = FFT(N,Fs,c)
%
% Fast Fourier Transformation
%
% Using FFT to solve signal processing puzzle.
%
% Param N is the number of FFT, signal length.
% Param Fs is the frequency of sampling.
% Param c is the coefficient sequence of the original signal.
%         c should be between the interval [0,0.5];
%
% Return ans is the frequency sequence
%
% Created by Nino on 2018/7/1. Copyright ? Nino 2018.
%


%% Create original signal 

% sampling interval for x-axis
dt=1/Fs;

% time sequence for x-axis
t=[0:N-1]*dt;

% original signal for y-axis
xn = 0;
for i=1:size(c)
    xn=xn+cos(2*pi*c(i)*[0:N-1]);
end

% construct diagram
subplot(2,1,1);
plot(t,xn);
axis([0 N min(xn') max(xn')]);
xlabel('Time/s'),title('1024 Original points');



%% Using FFT analyse signal

% base freqency for x-axis
f0=1/(dt*N);

% frequency sequence for x-axis
f=[0:ceil((N-1)/2)]*f0;

% symmetry of conjugate complex number for y-axis
XN=fft(xn,N)/N;

% amplitude value for y-axis
XN=abs(XN);

% construct diagram
subplot(2,1,2);
stem( f,2*XN(1:ceil((N-1)/2)+1) );
xlabel('Frequency/Hz');
axis([0 Fs/2 0 max(2*XN(1:ceil((N-1)/2)+1))+0.2]);
title('1024 Execution Point');

end

