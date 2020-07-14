class Board
    
    def initialize(n)  
        @grid = Array.new(n) {Array.new(n, '_')}
    end

    def valid?(position)
        if @grid[position[0]][position[1]]
            return true
        else
            return false
        end
    end

    def empty?(position)
        if @grid[position[0]][position[1]] == '_'
            return true
        else
            return false
        end
    end

    def place_mark(position, mark)
        if !valid?(position)
            raise "Position is Invalid"
        elsif !empty?(position)
            raise "Position is marked"
        else
            @grid[position[0]][position[1]] = mark
        end
    end

    def print
        @grid.each do |row|
            p row
        end
    end

    def win_row?(mark)    
        @grid.each do |row|
            if row.all? { |ele| ele == mark }
                return true
            end
        end
        false
    end

    def win_col?(mark)
        @grid.each_with_index do |row, row_idx|
            count = 0
            row.each_with_index do |col, col_idx|
                if @grid[col_idx][row_idx] == mark
                    count += 1
                end
            end
            if count == @grid.length
                return true
            end
        end
        false
    end

    def win_diagonal?(mark)
        grid = @grid
        (1..2).each do |ele|
            counter = 0
            grid[0].each_with_index do |el, idx_2|
                if grid[idx_2][idx_2] == mark
                    counter += 1
                end
            end
            if counter == @grid.length
                return true
            else
                grid.each { |row| row.reverse! }
            end
        end
        false
    end

    def win?(mark)
        if win_row?(mark) || win_col?(mark) || win_diagonal?(mark)
            return true
        else
            return false
        end
    end

    def empty_positions?
        @grid.each do |row|
            row.each do |ele|
                if ele == '_'
                    return true
                end
            end
        end
        false
    end

    def legal_positions
        pos_array = []
        @grid.each_with_index do |row, row_idx|
            row.each_with_index do |ele, col_idx|
                if ele == '_'
                    pos_array << [row_idx, col_idx]
                end
            end
        end
        pos_array
    end
end