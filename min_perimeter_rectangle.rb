def solution(n)
    return 0 if n <= 0

    divisors = divisors(n)
    min = 3000000000

    divisors.each do |div|
       min = [(div[0] + div[1]) * 2, min].min
    end

    min
end

def divisors(n)
    div = []
    i = 1

    if n == 1
       div.push [1, 1]
    end

    while (i * i < n) do
        if ((n % i) == 0)
            div.push([i, n / i])
        end
        i += 1
    end
    if i * i == n
       div.push [i, i]
    end
    div
end
