class HumanPlayer
    
    def initialize(mark_value)
        @mark = mark_value
    end

    def mark
        @mark
    end

    def get_position
        p 'Please enter two digits with space between them (0 0)'
        tmp = gets.chomp
        arr = []
        tmp.split(" ").each { |num|  arr << num.to_i}
        if arr.length != 2
            raise 'Please enter valid number of numbers'
        else
            arr
        end
    end
end