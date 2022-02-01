%% Q4 - chorus filter implementation
[x, fs] = audioread('Groove.wav');
x = x(:,1);

%% 4a

% ask for user input
b = input('Enter delay coefficients b (include [] brackets around them): ');
N = input('Enter the delay amount in samples (any # between 450 - 1100 is best for the chorus fx!): ');

y = chorusfilter(x, b, N);
sound(y, fs);

%% 4b

% ask for user input
b2 = input('Enter delay coefficients b (include [] brackets around them: ');
f = input('Enter LFO frequency (Hz): ');
r = input('Enter range: ');

y2 = vardelayfilter(x, b2, r, f);
sound(y2, fs);