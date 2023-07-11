require_relative './stack'

# your code here

def balancing_parentheses(str)
    stack = Stack.new
    str.each_char do |char|
        if stack.peek == "(" && char == ")"
            stack.pop
        else
            stack.push(char)
        end
    end
    stack.size
end