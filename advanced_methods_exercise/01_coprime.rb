# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.



def all_divisors(num)
    arr = []
    i = 1
    while i <= num
        if num % i == 0
            arr << i
        end
        i += 1
    end
    return arr
end



def coprime?(num_1, num_2)
    arr_1 = all_divisors(num_1)
    arr_2 = all_divisors(num_2)
    return arr_1.one? { |ele| arr_2.include?(ele) } 
end



p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
