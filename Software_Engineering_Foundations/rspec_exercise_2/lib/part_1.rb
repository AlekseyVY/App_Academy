def partition(arr, num)
    less = []
    more = []
    part = [less, more]
    arr.each do |ele|
        if ele >= num
            more << ele
        else
            less << ele
        end
    end
    part
end



def merge(*args)
    hash = {}
    count = 0
    while count < args.length
        args[count].each do |k, v|
            hash[k] = v
        end
        count += 1
    end
    hash
end



def censor(bad, array)
    vowels = 'aeoui'
    new_arr = bad.split(" ").map do |word|
        if array.include?(word.downcase) || array.include?(word.upcase)
            word.each_char.with_index do |char, idx|
                if vowels.include?(char.downcase)
                    word[idx] = "*"
                end
            end
        else
            word
        end
    end
    new_arr.join(" ")
end



def power_of_two?(num)
    power = num

    power.times do 
        if power % 2 == 0
            power = power / 2
        end
    end
    if power > 1 
        return false
    else
        return true
    end
end

