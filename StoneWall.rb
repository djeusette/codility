def solution(h)
    stack = []
    blocks = 0

    h.each do |height|
        while stack.length != 0 && height < stack[-1] do
            stack.pop
        end

        if stack.length != 0 && height == stack[-1]
            # do nothing
        else
            stack.push height
            blocks += 1
        end
    end
    blocks
end
