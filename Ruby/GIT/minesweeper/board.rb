# this is board class 

require_relative "tile.rb"


class Board
    def initialize(size)
        @size_of_grid = size
        @grid = Array.new(size) {Array.new(size)}
    end

    def print_grid
        @grid.each do |ele|
            p ele
        end
    end
end

b = Board.new(9)

b.print_grid