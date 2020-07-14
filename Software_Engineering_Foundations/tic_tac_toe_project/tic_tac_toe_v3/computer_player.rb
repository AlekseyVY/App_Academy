class ComputerPlayer
    def initialize(mark_value)
        @mark = mark_value
    end
    
    def get_position(legal_positions)
        pos = rand(legal_positions.length)
        p @mark
        print ' AI player places mark at '
        print pos
        legal_positions[pos]
    end

    def mark
        @mark
    end
end