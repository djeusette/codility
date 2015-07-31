def solution(s)
    stack = []

    s.split('').each do |character|
        if character == '{' || character == '[' || character == '('
            stack.push character
        elsif character == '}' || character == ']' || character == ')'
            last = stack.pop
            if (character == '}' && last != '{') ||
                (character == ']' && last != '[') ||
                (character == ')' && last != '(')
               return 0
            end
        end
    end

    stack.length == 0 ? 1 : 0
end
