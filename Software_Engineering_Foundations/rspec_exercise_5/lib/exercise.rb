def zip(*args)
    arr_new = []
    arr = *args
    idx = 0
    while arr[0].length != idx
        tmp_arr = []
        arr.each do |array|
            tmp_arr << array[idx]
        end
        arr_new << tmp_arr
        idx += 1
    end
    arr_new
end


def prizz_proc(arr, prc_1, prc_2)
    arr_new = []
    arr.each do |ele|
        if (prc_1.call(ele) && !prc_2.call(ele)) || (!prc_1.call(ele) && prc_2.call(ele))
            arr_new << ele
        end
    end
    arr_new
end



def zany_zip(*args)
    arr_new = []
    arr = *args
    idx = 0
    length = 0
    arr.each { |ele| length = ele.length if length < ele.length}
    while length != 0
        tmp_arr = []
        arr.each do |array|
            if array[idx] == nil
                tmp_arr << nil
            else
            tmp_arr << array[idx]
            end
        end
        arr_new << tmp_arr
        idx += 1
        length -= 1
    end
    arr_new
end



def maximum(arr, &prc)
    if arr.length == 0
        return nil
    end
    max = 0
    element = nil
    arr.each do |ele|
        r = prc.call(ele)
        if r >= max
            max = r
            element = ele
        end
    end
    element
end



def my_group_by(arr, &prc)
    hash = Hash.new { |h,k| h[k] = [] }
    arr.each do |ele|
        z = prc.call(ele)
        hash[z] << ele
    end
    hash
end



def max_tie_breaker(arr, block, &prc)
    max = 0
    elem = nil
    arr.each do |ele|
        if prc.call(ele) > max
            max = prc.call(ele)
            elem = ele
        elsif prc.call(ele) == max
            if block.call(ele) > max
                max = block.call(ele)
                elem =ele
            end
        end
    end
    elem
end



def silly_syllables(sent)
    new_sent = []
    vowels = 'aeiou'
    sent.split(" ").each do |word|
        first_idx = nil
        last_idx = nil
        word.each_char.with_index do |char, idx|
            if vowels.include?(char) && first_idx == nil
                first_idx = idx
            elsif vowels.include?(char)
                last_idx = idx
            end
        end
        if first_idx && last_idx
            new_sent << word.slice(first_idx..last_idx)
        else
            new_sent << word
        end
    end
    new_sent.join(" ")
end