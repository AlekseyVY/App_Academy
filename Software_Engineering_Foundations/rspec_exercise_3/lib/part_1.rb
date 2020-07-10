def is_prime?(num)
    return false if num < 2

    (2...num).each do |prime|
        return false if num % prime == 0
    end
    return true
end 



def nth_prime(num)
    prime = 1
    count = 2
    while num != 0
        if is_prime?(count)
            prime = count
            num -= 1
            count += 1
        else
            count += 1
        end
    end
    prime
end


def prime_range(min, max)
    arr = []
    (min..max).each do |prime|
        if is_prime?(prime)
            arr << prime
        end
    end
    arr
end