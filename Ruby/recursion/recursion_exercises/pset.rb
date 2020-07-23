# # recursion 1
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

# # recursion 2
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n]
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]


#  Exponent

def exp_1(b, n)
    return 1 if n == 0

    b * exp_1(b, n - 1)
end


def exp_2(b, n)
    return 1 if n == 0
    return b if n == 1

    if n % 2 == 0
        exp_2(b, n / 2) ** 2
    else
        (exp(b, (n - 1) / 2) ** 2)
    end
end

# p exp_1(3, 2)

# p exp_2(4, 2)


# Deep dup

class Array
    def deep_dup
        arr = self.clone
        arr.save
    end
end



# Fibonacci

def fib(n)
    (n == 1) ? [0] : (2..(n-1)).each_with_object([0,1]) { |i,a| a[i] = a[i-2] + a[i-1] }
end

# p fib(10)

# Binary Search

def bsearch(arr, target, min_index=0, max_index=arr.size-1)
    mid_index = (min_index+max_index)/2
    case arr[mid_index] <=> target
    when  0  # arr[mid_index] == target
      mid_index
    when -1  # arr[mid_index] < target
      min_index = mid_index + 1
      bsearch(arr, target, min_index, max_index)
    when  1  # arr[mid_index] > target
      max_index = mid_index - 1
      bsearch(arr, target, min_index, max_index)
    end
  end

# first we take middle element and check if  it greater or smaller than n
# next we call search func until we find element or until base case
# if found return index of element
# else return nil


# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil



class Array
    def mergesort
        return self if self.length == 1
        middle = self.length / 2
        merge self[0...middle].mergesort, self[middle..-1].mergesort
      end
      
      
      def merge(left, right)
        result = []
        until left.length == 0 || right.length == 0 do
          result << (left.first <= right.first ? left.shift : right.shift)
        end
        result + left + right
      end
end


# p [0, 6, 7, 2, 3, 1, 9, 6, 45, 654, 75, 4, 42,45].mergesort






def subsets(arr)
    (0..arr.length).collect { |i|
        arr.combination(i).to_a
      }.flatten(1)
end




def make_change(a, list = [25, 10, 5, 1])
    return nil if a < 0
    return nil if a != a.floor

    parents = Array.new(a + 1)
    parents[0] = 0
    worklist = [[0, 0]]
    while parents[a].nil? && !worklist.empty? do
      base, starting_index = worklist.shift
      starting_index.upto(list.size - 1) do |index|
        coin = list[index]
        tot = base + coin
        if tot <= a && parents[tot].nil?
          parents[tot] = base
          worklist << [tot, index]
        end
      end
    end

    return nil if parents[a].nil?
    result = []
    while a > 0 do
      parent = parents[a]
      result << a - parent
      a = parent
    end
    result.sort!.reverse!
   end
