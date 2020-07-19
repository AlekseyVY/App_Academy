require_relative './card.rb'

class Board
    attr_reader :board_size
    def initialize(board_size)
        @board_size = board_size
        @grid = Array.new(@board_size) {Array.new(@board_size)}
        populate
    end

    def populate
        @alphabet = ("a".."z").to_a
        values_of_grid = []
        size = (@board_size * @board_size) / 2

        size.times do
            char = @alphabet[rand(size)]
            values_of_grid << Card.new(char)
            values_of_grid << Card.new(char)
        end
        
        @grid.map! do |row|
            row.map! do |ele|
                tmp = rand(values_of_grid.length - 1)
                ele = values_of_grid[tmp]
                values_of_grid.slice!(tmp)
            end
        end
    end

    def render
        @grid.each do |row|
            row.each do |ele|
                if ele.face_up
                    print ele.value
                    print " "
                else
                    print ele.face
                    print " "
                end
            end
            puts
        end
    end

    def equal(pos_1, pos_2)
        if @grid[pos_1[0]][pos_1[1]].value == @grid[pos_2[0]][pos_2[1]].value
            @grid[pos_1[0]][pos_1[1]].face_up = true
            @grid[pos_2[0]][pos_2[1]].face_up = true
            return true
        else
            return false
        end
    end

    def won?
        @grid.each do |row|
            row.each do |ele|
                if ele.face_up == false
                    return false
                end
            end
        end
        true
    end

    def reveal(pos)
        @grid.each_with_index do |row, idx_1|
            row.each_with_index do |ele, idx_2|
                if idx_1 == pos[0] && idx_2 == pos[1]
                    print ele.value
                    print " "
                else
                    print ele.face
                    print " "
                end
            end
            puts
        end
    end
end