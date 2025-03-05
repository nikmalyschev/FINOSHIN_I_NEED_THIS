function intpol = intpoly(p)
    n = length(p);
    intpol = zeros(1, n + 1);
    for i = 1:n
        intpol(i) = p(i) / (n - i + 1);
    end
    intpol(n + 1) = 0;
end


