def solution(a)
    circle_points = []

    a.each_with_index do |radius, index|
        circle_points << {x: index - radius, beginning: true}
        circle_points << {x: index + radius, beginning: false}
    end

    circle_points.sort_by! do |point|
        [point[:x], point[:beginning] ? 0 : 1]
    end

    intersections = 0
    active_circles = 0

    circle_points.each do |point|
        if point[:beginning]
            intersections += active_circles
            return -1 if intersections > 10000000
            active_circles += 1
        else
           active_circles -= 1
        end
    end

    intersections
end
