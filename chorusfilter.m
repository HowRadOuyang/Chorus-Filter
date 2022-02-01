%% Q4a - chorus filter function

function Y = chorusfilter(x, b, N)

    % x = input signal
    % b = delay coefficient
    % N = delay amount
    
    % make a delayed version of x
    for i = 1:length(x) - N
        y(i) = x(i) + x(i + N);
    end
    
    Y = filter(b, 1, y, []);

end