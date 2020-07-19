
class AIPlayer
    attr_reader :name

    def initialize(board_size)
        @name = 'HAL9000'
        @board_size = board_size
        @known_locations = Hash.new { |h, k| h[k] = []}
        @loc = nil
    end

    def input
        input = [rand(@board_size), rand(@board_size)]
        @loc = input
    end

    def value_of_input(value)
        @known_locations[value[@loc[0]][@loc[1]].value] << @loc
        p @known_locations
    end
end

# each guess he make he store location of known value into hash
# if he know two equals locations then reveal them
# if not guess randomly from grid
