def all_words_capitalized?(arr)
    arr.all? { |ele| ele[0] == ele[0].upcase && ele[1] == ele[1].downcase}
end


def no_valid_url?(arr)
    dotcoms = ['.com', '.net', '.io', '.org']
    result = arr.none? do |ele|
        dot = ele[ele.index(".")..ele.length-1]
        if dotcoms.include?(dot)
            return false
        end
    end
    return true
end


def any_passing_students?(arr)
    arr.any? do |student|
        return true if (student[:grades].sum / student[:grades].length) > 75
    end
    return false
end