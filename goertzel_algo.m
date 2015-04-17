function [ Xk ] = goertzel_algo(x, k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

s_prev = 0.0;
s_prev2 = 0.0;
N = size(x, 2);
cosine = cos(2*pi*k/N);
sine = sin(2*pi*k/N);

coeff = 2*cosine;

for i = 1:N
    s = x(i) + coeff*s_prev - s_prev2;
    s_prev2 = s_prev;
    s_prev = s;
end

real_part = (s_prev - s_prev2*cosine);
imag_part = (s_prev2*sine); 
Xk = sqrt(real_part^2 + imag_part^2);

end
