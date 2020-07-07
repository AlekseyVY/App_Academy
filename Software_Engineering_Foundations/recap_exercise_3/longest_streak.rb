# Write a method longest_streak(str) that accepts a string as an arg. The method should
# return the longest streak of consecutive characters in the string. If there are any ties, 
# return the streak that occurs later in the string.

def longest_streak(str)
    hash = Hash.new(0)
    str.each_char { |ch| hash[ch] += 1}
    hash = hash.sort_by {|k,v| v}.reverse
    hash[0][0] * hash[0][1]
end



# # Examples
p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'