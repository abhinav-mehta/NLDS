function y = tent(mu, x)
    if x < 0.5 && x >= 0 
        y = mu * x;
    else 
        y = mu * (1-x);
    end
end