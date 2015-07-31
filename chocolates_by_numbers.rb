def gcd(n, m)
    if m == 0
        return n
    end
    gcd(m, n % m)
end

def lcm(n,m)
    n * (m / gcd(n,m))
end

def solution(n, m)
    lcm(n,m) / m
end
