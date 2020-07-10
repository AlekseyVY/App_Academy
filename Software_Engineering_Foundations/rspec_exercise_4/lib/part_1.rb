def my_reject(arr, &prc)
    new_arr = []
    arr.each do |ele|
        if !prc.call(ele)
            new_arr << ele
        end
    end
    new_arr
end


def my_one?(arr, &prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end
    if count == 1
        return true
    else 
        return false
    end
end


def hash_select(hash, &prc)
    hash_new = Hash.new
    hash.each do |k, v|
        if prc.call(k, v)
            hash_new[k] = v
        end
    end
    hash_new
end


def xor_select(arr, prc_1, prc_2)
    arr_new = []
    arr.each do |ele|
        if (prc_1.call(ele) && !prc_2.call(ele)) || (!prc_1.call(ele) && prc_2.call(ele)) 
            arr_new << ele
        end
    end
    arr_new
end



def proc_count(val, arr)
    count = 0
    arr.each do |prc|
        if prc.call(val)
            count += 1
        end
    end
    count
end