def proper_factors(num)
    arr = []
    (1...num).each do |ele|
        arr << ele if num % ele == 0 && ele > 0
    end
    arr
end


def aliquot_sum(num)
    proper_factors(num).sum
end



def perfect_number?(num)
    if aliquot_sum(num) == num
        return true
    else
        return false
    end
end



def ideal_numbers(num)
    arr = []
    count = 1
    while arr.length != num
        if perfect_number?(count)
            arr << count
        end
        count += 1
    end
    arr
end