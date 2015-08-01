def solution(x, a)
  total_diff = 0

  for index in [*0..a.length-1]
    if a[index] != x
      total_diff += 1
    end
  end

  equ = 0
  diff = 0

  for index in [*0..a.length-1]
    if a[index] == x
      equ += 1
    else
      diff += 1
    end

    if equ == total_diff - diff
      return index + 1
    end
  end

  -1
end

solution(5, [5,5,1,7,2,3,5])
