# Write a method vowel_rotate(str) that accepts a string as an arg and returns 
# the string where every vowel is replaced with the vowel the appears before it 
# sequentially in the original string. The first vowel of the string should be replaced 
# with the last vowel.



def vowel_rotate(str)
    new_str = str[0..-1]
    vowels = 'aeiou'
    vowel_indicies = (0...str.length).select { |i| vowels.include?(str[i]) }
    new_vowel_indicies = vowel_indicies.rotate(-1)
    vowel_indicies.each_with_index do |vowel_idx, i|
        new_vowel = str[new_vowel_indicies[i]]
        new_str[vowel_idx] = new_vowel
    end
    new_str
end





# Examples
p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"