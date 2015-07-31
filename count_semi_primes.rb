def solution(n, p, q)
    sieve = sieve(n)
    semi = semi_primes(n, sieve)

    result = []

    prefix = [0, 0, 0, 0, 1]

    for number in [*5..q.max+1]
        if semi.include?(number)
            prefix.push(prefix[number-1] + 1)
        else
            prefix.push(prefix[number-1])
        end
    end

    for index in [*0..q.length-1]
        value = prefix[q[index]] - prefix[p[index]-1]
        result.push(value)
    end

    result
end

def sieve(n)
    sieve = [true] * (n + 1)
    sieve[0] = sieve[1] = false

    i = 2

    while i * i <= n
        if sieve[i]
            k = i * i

            while k <= n
                sieve[k] = false
                k += i
            end
        end
        i += 1
    end

    sieve
end

def semi_primes(n, sieve)
    semi = []
    i = 2

    while i * i <= n
        if sieve[i]
            k = i * i
            while k <= n
                if (k % i == 0 && sieve[k / i])
                    semi.push(k)
                end
                k += 1
            end
        end
        i += 1
    end

    semi
end
