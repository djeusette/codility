
def solution(a)
  base_10 = get_base_10(a)

  printf "base 10: %s\n", base_10

  res = compute_base_2(0 - base_10)
  res
end

def compute_base_2(number)
  res = []

  n = number

  while n.abs > 0
    printf "N: %s\n", n
    mod = n % (-2)
    n = n / (-2)
    n += 1 if mod < 0
    res.push(mod.abs)
  end
  res
end

def get_base_10(a)
  value = 0
  a.each_with_index do |item, index|
    value += item * (-2)**index
  end
  value
end

solution([1,0,0,1,1])
solution([1,1])
solution([1,0,1])
solution([])
