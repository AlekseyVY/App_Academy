def average(x, y)
    result = (x + y) / 2.0
    result
end


def average_array(arr)
    result = (arr.sum * 1.0) / arr.length
    result
end

def repeat(str, num)
    new_str = ""
    num.times do
        new_str += str
    end
    new_str
end

def yell(str)
    result = (str.upcase + "!")
    result
end

def alternating_case(str)
    new_str = str.split(" ").map.with_index do |ele, idx|
        if idx % 2 == 0
            ele.upcase
        else
            ele.downcase
        end
    end
    return new_str.join(" ")
end
