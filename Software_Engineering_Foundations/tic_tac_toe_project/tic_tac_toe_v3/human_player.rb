class HumanPlayer
    
    def initialize(mark_value)
        @mark = mark_value
    end

    def mark
        @mark
    end

    def get_position(legal_positions)
        p 'Please enter two digits with space between them (0 0)'
        isTrue = true
        while isTrue
            tmp = gets.chomp
            arr = []
            tmp.split(" ").each { |num|  arr << num.to_i}
            if legal_positions.include?(arr)
                return arr
            else
                p "Please enter valid numbers!"
            end
        end
    end
end