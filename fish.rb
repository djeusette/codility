def solution(a, b)
    downstream_fishes = []
    survivors = 0

    a.each_with_index do |size, index|
        if b[index] == 0
            while downstream_fishes.length != 0
                if downstream_fishes[-1] > size
                   break
                else
                    downstream_fishes.pop
                end
            end
            survivors += 1 if downstream_fishes.length == 0
        else
            downstream_fishes.push size
        end
    end
    survivors += downstream_fishes.length
    survivors
end
