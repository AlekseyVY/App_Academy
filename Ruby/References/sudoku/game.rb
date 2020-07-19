require_relative './board.rb'

class Game
    def initialize
        @board = Board.new('./puzzles/sudoku2.txt')
    end

    def run
        @board.render_grid
    end

    def solve
        board = @board.sudoku_grid
        empty_positions = @board.find_empty_positions(board)
        @board.solve_puzzle(board, empty_positions)
        @board.render_grid
      end
end


g = Game.new
g.run
puts
g.solve