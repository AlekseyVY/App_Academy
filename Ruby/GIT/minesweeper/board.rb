# this is board class 

require_relative "tile.rb"
require_relative "user.rb"

class Board
    def initialize(size)
        @size_of_grid = size
        @grid = Array.new(size) {Array.new(size, Tile.new('0'))}
    end

    def print_grid
        @grid.each do |ele|
            ele.each do |tile|
                print tile.show + " "
            end
            puts
        end
    end
end