def solution(a)
    max_profit = 0
    min_value = 200000

    a.each do |item|
       min_value = [min_value, item].min
       max_profit = [max_profit, item - min_value].max
    end

    max_profit
end
