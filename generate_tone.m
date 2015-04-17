function [ tone_sample ] = generate_tone( freq, sampling_freq, time, noise_level)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

fs = sampling_freq;
t = time;
N = fs*t;
n = 0:1/fs:t;
n = n(1:N);
if ~exist('noise_level', 'var')
    noise_level = 0.0;
end

noise = noise_level*rand(1,fs*t);
tone_sample = sin(2*pi*freq*n) + noise;

%sound(tone_sample, fs);
end
