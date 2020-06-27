def palindrome?(str)
    palindrome = ""
    idx = str.length - 1
    while idx >= 0
        palindrome += str[idx]
        idx -= 1
    end
    if str == palindrome
        true
    else 
        false
    end
end



def substrings(str)
    sub_arr = []
    str.each_char.with_index do |char, idx|
        tmp = char
        sub_arr << char
        str.each_char.with_index do |sub_char, sub_idx|
            if str[idx + sub_idx] != nil && str[idx + sub_idx] != tmp
                tmp += str[idx + sub_idx]
            end
            if str.include?(tmp) && !sub_arr.include?(tmp)
                sub_arr << tmp
            end
        end
        tmp = ""
    end
    sub_arr
end


def palindrome_substrings(string)
    sub_str = substrings(string)
    result = []
    sub_str.map do |ele|
        if palindrome?(ele) && ele.length > 1
            result << ele
        end
    end
     result
end
