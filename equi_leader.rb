def solution(a)
  stack = []

  a.each do |item|
    if stack.length == 0
      stack.push item
    else
      if stack[-1] != item
        stack.pop
      else
        stack.push item
      end
    end
  end

  count = 0
  if stack.length != 0
    candidate = stack[-1]

    a.each_with_index do |item, index|
      if item == candidate
        count += 1
      end
    end
    if count <= a.length / 2
      return 0
    end
  end

  equi_leaders = 0
  left_count = 0

  a.each_with_index do |item, index|
    if item == candidate
      left_count += 1
    end
    if (left_count > ((index + 1) / 2)) && (count - left_count > (a.length - index - 1) /2)
      equi_leaders += 1
    end
  end
  equi_leaders
end
