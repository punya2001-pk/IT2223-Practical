function fact = factorial()
n = input('Please enter the number: ');
fact = 1;
    for i=1:n
        fact = fact * i;
    end
end