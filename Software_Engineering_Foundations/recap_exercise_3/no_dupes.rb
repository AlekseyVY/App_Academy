# no_dupes?
# Write a method no_dupes?(arr) that accepts an array as an arg and returns an new array containing the elements that were not repeated in the array.

def no_dupes?(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1}
    otp = []
    hash.each { |k,v| otp << k if v == 1 } 
    otp
end




#Examples
p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []