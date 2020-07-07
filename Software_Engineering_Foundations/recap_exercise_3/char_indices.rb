# Write a method char_indices(str) that takes in a string as an arg. The method should 
# return a hash containing characters as keys. The value associated with each key should be 
# an array containing the indices where that character is found.

def char_indices(str)
    hash = Hash.new { |h, k| h[k] = []}
    str.each_char.with_index { |ch, idx| hash[ch] << idx}
    hash
end


# # Examples
p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}