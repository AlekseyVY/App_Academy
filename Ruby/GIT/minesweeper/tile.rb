# Tile class

class Tile
    attr_reader :value
    def initialize(value)
        @value = value
        @flipped = false
        @flagged = false
    end

    def val(val)
        @value = val
    end

    def flip
        @flipped = true
    end

    def flag
        @flagged = !@flagged
    end

    def show
        if @flagged
            return 'F'
        elsif @flipped
            return @value
        else
            return 'X'
        end
    end
end