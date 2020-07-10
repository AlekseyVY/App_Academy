# The Lucas Sequence is a sequence of numbers. The first number of the sequence is 
# 2. The second number of the Lucas Sequence is 1. To generate the next number of the 
# sequence, we add up the previous two numbers. For example, the first six numbers of the sequence are: 2, 1, 3, 4, 7, 11, ...

# Write a method lucasSequence that accepts a number representing a length as an arg. 
# The method should return an array containing the Lucas Sequence up to the given length. Solve this recursively.


def lucas_sequence(num)
    return [] if num == 0
    return [2] if num == 1
    return [2, 1] if num == 2

    seq = lucas_sequence(num - 1)
    next_el = seq[-1] + seq[-2]
    seq << next_el
    seq
end





# Examples
p lucas_sequence(0)   # => []
p lucas_sequence(1)   # => [2]    
p lucas_sequence(2)   # => [2, 1]
p lucas_sequence(3)   # => [2, 1, 3]
p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]