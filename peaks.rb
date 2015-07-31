def solution(a)
    peaks = []

    for index in [*1..a.length-2]
        peaks.push(index) if is_peak(a, index)
    end

    return 0 if peaks.length == 0

    for block_count in [*1..peaks.length].reverse
        if a.length % block_count == 0
            block_size = a.length / block_count

            found = [false] * peaks.length
            found_count = 0

            peaks.each_with_index do |peak, index|
                block = peak / block_size

                if found[block] == false
                   found[block] = true
                   found_count += 1
                end
            end

            if found_count == block_count
                return block_count
            end
        end
    end

    0
end

def is_peak(a, index)
    a[index - 1] < a[index] && a[index] > a[index + 1]
end
