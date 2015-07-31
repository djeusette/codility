def solution(a)
    max_ending = max_slice = -1000000

    a.each do |item|
        max_ending = [item, max_ending + item].max
        max_slice = [max_slice, max_ending].max
    end

    max_slice
end
