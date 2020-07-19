require_relative './tile.rb'

class Board
    attr_reader :sudoku_grid
    def initialize(file)
        read_file = File.open(file)
        @sudoku_grid = []
        read_file.readlines.map do |word, idx|
            tmp = []
            word.chomp.each_char { |char| tmp << char.to_i }
            @sudoku_grid << tmp
        end
        read_file.close
    end

    def render_grid
        @sudoku_grid.each do |row|
            row.each do |ele|
                print ele
                print " "
            end
            puts
        end
    end
    
    def find_empty_positions(board)
        empty_positions = []
      
        for row in 0...board.length
          for col in 0...board[row].length
            if board[row][col] == 0
              empty_positions << [row, col]
            end
          end
        end
      
        empty_positions
      end

      def check_row(board, row, number)
        for col in 0...board[row].length
          if board[row][col] == number
            return false
          end
        end
      
        true
      end

      def check_col(board, col, number)
        for row in 0...board.length
          if board[row][col] == number
            return false
          end
        end
      
        true
      end

      def check_block(board, row, col, number)
        lower_row = 3 * (row / 3)
        lower_col = 3 * (col / 3)
        upper_row = lower_row + 3
        upper_col = lower_col + 3
      
        for r in lower_row...upper_row
          for c in lower_col...upper_col
            if board[r][c] == number
              return false
            end
          end
        end
      
        true
      end

      def solve_puzzle(board, empty_positions)
        i = 0
        
        while i < empty_positions.length
          row = empty_positions[i][0]
          column = empty_positions[i][1]
          number = board[row][column] + 1
          found = false
      
          while !found && number <= 9
            if check_value(board, row, column, number)
              found = true
              board[row][column] = number
              i += 1
            else
              number += 1
            end
          end
      
          if !found
            board[row][column] = 0
            i -= 1
          end
        end
        
        board
      end

      def check_value(board, row, col, number)
        check_row(board, row, number) &&
          check_col(board, col, number) &&
          check_block(board, row, col, number)
      end
    
end
