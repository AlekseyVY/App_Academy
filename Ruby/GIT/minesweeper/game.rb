#main game file


require_relative 'board.rb'

class Game
    def initialize(board_size, user_name)
        @user = User.new(user_name)
        @board = Board.new(board_size)
        @won = false
    end

    def play
        while !@won
            @board.print_grid
            input = @user.user_input
            action = @user.action
            action_performer(action, input)
        end
    end

    def win_loose
        @won = true
    end

    def action_performer(action, input)
        if action == 'flag'
            @board.flag(input)
        elsif action == 'open'
            if !@board.check_open(input)
                win_loose
            end
        elsif action == 'unflag'
            @board.unflag(input)
        end
    end
end


# g = Game.new(9, 'Aleksey')
# g.play