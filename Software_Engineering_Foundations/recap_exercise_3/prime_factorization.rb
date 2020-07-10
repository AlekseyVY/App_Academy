# The Fundamental Theorem of Arithmetic states that every positive integer is either a prime 
# or can be represented as a product of prime numbers.

# Write a method prime_factorization(num) that accepts a number and returns an array 
# representing the prime factorization of the given number. This means that the array 
# should contain only prime numbers that multiply together to the given num. The array 
# returned should contain numbers in ascending order. Do this recursively.


def prime_factorization(num)

    (2...num).each do |fact|
        if num % fact == 0
            other_fact = num / fact
            return [ *prime_factorization(fact), *prime_factorization(other_fact)]
        end
    end
    [ num ]
end




# Examples
p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]