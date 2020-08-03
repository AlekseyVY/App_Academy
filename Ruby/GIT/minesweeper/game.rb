#main game file


require_relative 'board.rb'

class Game
    def initialize(board_size, user_name)
        @user = User.new(user_name)
        @board = Board.new(board_size)
    end

    def play
        @board.print_grid
        input = @user.user_input
    end
end



g = Game.new(9, 'Aleksey')
g.play