
def solution(x, a)
  diff = 0

  a.each do |item|
    if item == x
      diff += 1
    end
  end

  diff_elem_in_block = 0

  if diff % 2 != 0
    return -1
  end

  diff_elem_in_block = diff / 2
  diff_count = 0

  a.each_with_index do |item, index|
    if item != x
      diff_count += 1
      if diff_count == diff_elem_in_block
        return index + 1
      end
    end
  end

  -1
end
