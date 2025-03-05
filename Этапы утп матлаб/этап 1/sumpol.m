function res = sumpol(p1, p2)
    maxp = max(length(p1), length(p2));
    p1 = [zeros(1, maxp - length(p1)), p1];
    p2 = [zeros(1, maxp - length(p2)), p2];
    res = p1 + p2;
end


