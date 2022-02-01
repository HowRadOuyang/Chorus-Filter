%% Q4b - chorus filter function

function y = vardelayfilter(x, b, range, f)

    % x = input signal
    % b = delay coefficient
    % f = LFO frequency
    
    fs = 44100;
    
    y = zeros;
    
    for i = 1:length(x) - length(b) - range
        y(i) = x(i) + x(i+length(b)+round(range*sin(2*pi*i*f/fs)));
    end
    
    y = filter(b, 1, y, []);
    
end
