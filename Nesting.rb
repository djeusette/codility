def solution(s)
    stack = []

    s.split('').each do |character|
        if character == '('
            stack.push true
        elsif character == ')'
            if stack.pop == nil
               return 0
            end
        end
    end

    stack.size == 0 ? 1 : 0
end
