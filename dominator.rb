def solution(a)
  stack = []
  dominator = -1

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

  if stack.length != 0
    candidate = stack[-1]
    count = 0

    a.each_with_index do |item, index|
      if item == candidate
        count += 1
        dominator = index
      end
    end
    if count <= a.length / 2
      dominator = -1
    end
  end

  dominator
end
