def solution(a)
    starting_here = [0] * a.length
    ending_here = [0] * a.length
    sum = 0

    for index in [*1..a.length-1] do
       ending_here[index] = [0, ending_here[index-1] + a[index]].max
    end

    for index in [*0..a.length-2].reverse do
       starting_here[index] = [0, starting_here[index+1] + a[index]].max
    end

    for index in [*1..a.length-2] do
        sum = [ending_here[index - 1] + starting_here[index + 1], sum].max
    end

    sum
end
