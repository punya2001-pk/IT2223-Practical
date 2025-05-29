function fact = factorial_cal(a)
    if a == 0 || a == 1
        fact = 1;
    else
            fact = factorial_cal(a-1) * a;
    end
end

