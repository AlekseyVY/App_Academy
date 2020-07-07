# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg. The method should 
# return true if an element never appears consecutively in the array; it should return false otherwise.


def no_consecutive_repeats?(arr)
    arr.each_with_index do |el, i|
        if el == arr[i + 1]
            return false
        end
    end
    true
end





# # Examples
p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
p no_consecutive_repeats?(['x'])                              # => true