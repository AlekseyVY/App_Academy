load 'human_player.rb'
load 'board.rb'

class Game

    def initialize(player_1_mark, player_2_mark)
        @player_1 = HumanPlayer.new(player_1_mark)
        @player_2 = HumanPlayer.new(player_2_mark)
        @current_board = Board.new
        @current_player = @player_1
    end

    def switch_turn
        if @current_player == @player_1
            @current_player = @player_2
        else
            @current_player = @player_1
        end
    end

    def play
        while @current_board.empty_positions?
            p @current_board.print
            pos = @current_player.get_position
            @current_board.place_mark(pos, @current_player.mark)
            if @current_board.win?(@current_player.mark)
                print 'VICTORY of '
                print @current_player.mark
                return true
            end
            switch_turn
        end
    end

end