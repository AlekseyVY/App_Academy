# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


def largest_prime_factor(num)
    tmp = 0
    count = 0
    (1..num).each do |x|
        if num % x == 0
            (1..x).each do |y|
                if x % y == 0
                    count += 1
                end
            end
            if count <= 2
                tmp = x
                count = 0
            end
        end
    end
    tmp
end



def unique_chars?(str)
    hash = Hash.new(0)
    str.each_char { |char| hash[char] += 1}
    if hash.length == str.length
        return true
    else 
        return false
    end
end



def dupe_indices(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1}

    output_hash = {}
    hash.each do |k, v|
        if v > 1
            output_hash[k] = []
            v.times do |ele|
                output_hash[k] << arr.index(k)
                arr[arr.index(k)] = 1
            end
        end
    end
    return output_hash
end



def ana_array(arr1, arr2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    arr1.each { |ele| hash1[ele] += 1}
    arr2.each { |ele| hash2[ele] += 1}
    if hash1 == hash2
        return true
    else
        return false
    end
end



