# this is board class 

require_relative "tile.rb"
require_relative "user.rb"

class Board
    def initialize(size)
        @size_of_grid = size
        @grid = Array.new(size) {Array.new(size) {Tile.new(' ')}}
        populate_bombs
        neibor_mines
    end

    def populate_bombs
        hash = Hash.new {|h,k| h[k] = Array.new }
        bombs = rand(1..(((@size_of_grid - 1) * (@size_of_grid - 1)) / 2 ))
        bombs.times do |bomb|
            hash[bomb] << rand(1..(@size_of_grid - 1))
            hash[bomb] << rand(1..(@size_of_grid - 1))
        end
        hash.each do |k, v|
            @grid[v[0]][v[1]].val('B')
        end
        p hash
    end

    def print_grid
        @grid.each do |ele|
            ele.each do |tile|
                print tile.show + " "
            end
            puts
        end
    end

    def flag(coord)
        x, y = coord
        @grid[x][y].flag
    end

    def unflag(coord)
        x, y = coord
        if @grid[x][y].flag
            @grid[x][y].flag
        else
            print 'This tile not Flagged!'
        end 
    end

    def check_open(coord)
        x, y = coord
        if @grid[x][y].value != 'B'
            @grid[x][y].flip
        else
            p ' BUUUUUUUMMMM BAAAAMMM BADAAAAAABUUUMMM. YOU DEAD!!! '
            return false
        end
    end

    def neibor_mines
        @grid.each_with_index do |ele_1, idx_1|
            tmp = 0
            ele_1.each_with_index do |ele_2, idx_2|
                if @grid[idx_1 - 1][idx_2 - 1] != nil && @grid[idx_1 - 1][idx_2 - 1] == 'B'
                    val += 1
                elsif
                    @grid[idx_1 - 1][idx_2] != nil && @grid[idx_1 - 1][idx_2] == 'B'
                    val += 1
                elsif
                    @grid[idx_1 - 1][idx_2 + 1] != nil && @grid[idx_1 - 1][idx_2 + 1] == 'B'
                    val += 1
                elsif
                    @grid[idx_1][idx_2 - 1] != nil && @grid[idx_1][idx_2 - 1] == 'B'
                    val += 1
                elsif
                    @grid[idx_1][idx_2 + 1] != nil &&  @grid[idx_1][idx_2 + 1] == 'B'
                    val += 1
                elsif
                    @grid[idx_1 + 1][idx_2 - 1] != nil && @grid[idx_1 + 1][idx_2 - 1] == 'B'
                    val += 1
                elsif
                    @grid[idx_1 + 1][idx_2] != nil && @grid[idx_1 + 1][idx_2] == 'B'
                    val += 1
                elsif
                    @grid[idx_1 + 1][idx_2 + 1] != nil &&  @grid[idx_1 + 1][idx_2 + 1] == 'B'
                    val += 1
                end
                ele_2.val(tmp)
            end
        end
    end
end