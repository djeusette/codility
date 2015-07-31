def solution(n)
    i = 1
    factors = 0

    while (i * i < n) do
        if ((n % i) == 0)
            factors += 2
        end
        i += 1
    end

    factors += 1 if i * i == n
    factors
end
