# Write a method multiply(a, b) that takes in two numbers and returns their product.

# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator


def multiply(a, b)
    if a < 0 && b < 0
       a = a.abs
       b = b.abs
    end
    if b < 0 
        b = b * -1
        a = a * -1
    end
    if b <= 1
        return a
    end

    a += multiply(a, b - 1)
end




# Examples
p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6)       # => -18