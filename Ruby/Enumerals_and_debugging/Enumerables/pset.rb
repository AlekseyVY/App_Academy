class Array

    def my_each(&prc)
        self.each do |ele|
            prc.call(ele)
        end
    end
    
    def my_select(&prc)
        new_arr = []
        self.my_each do |ele|
            new_arr << ele if prc.call(ele)
        end
        new_arr
    end

    def my_reject(&prc)
        new_arr = []
        self.my_each do |ele|
            new_arr << ele if !prc.call(ele)
        end
        new_arr
    end

    def my_any?(&prc)
        self.my_each do |ele|
            return true if prc.call(ele)
        end
        false
    end

    def my_all?(&prc)
        self.my_each do |ele|
            return false if !prc.call(ele)
        end
        true
    end

    def my_flatten
        self.inject([]) do |result, element|
            result + if element.is_a?(Array)
              element.my_flatten
            else
              [element]
            end
        end
    end

    def my_zip(*args)
        new_arr = []
        (0...self.length).each do |idx|
            arr = [self[idx]]
            args.each do |ele|
                arr << ele[idx]
            end
            new_arr << arr
        end
        new_arr
    end

    def my_rotate(num=1)
        arr = [*self]
        if num < 0
            n = num.abs
            n.times do |ele|
                tmp = arr.pop
                arr.unshift(tmp)
            end
        else
            num.times do |ele|
                tmp = arr.shift
                arr << tmp
            end
        end
        arr
    end

    def my_join(joinator='')
        self.join(joinator)
    end

    def my_reverse
        self.reverse
    end
end

