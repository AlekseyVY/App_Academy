
def sum_to(n)
    return nil if n < 0
    return 1 if n <= 1
    n + sum_to(n - 1)
end


#   p sum_to(5)  # => returns 15
#   p sum_to(1)  # => returns 1
#   p sum_to(9)  # => returns 45
#   p sum_to(-8)  # => returns nil

def add_numbers(arr)
    return 0 if arr.length == 0

    arr.pop + add_numbers(arr)
end


# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil.


def gamma_fnc(n)
    return nil if n <= 0
    return 1 if n == 1

    (n - 1)  * gamma_fnc(n - 1)
end


# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040



def ice_cream_shop(arr, str)
    return false if arr.length == 0
    return true if arr.pop == str
    ice_cream_shop(arr, str)
end



# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false



def reverse(str)
    return "" if str.length == 0
    reverse(str[1..-1]) + str[0]
end


# p reverse("house") # => "esuoh"
# p reverse("dog") # => "god"
# p reverse("atom") # => "mota"
# p reverse("q") # => "q"
# p reverse("id") # => "di"
# p reverse("") # => ""