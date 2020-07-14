load 'human_player.rb'
load 'board.rb'
load 'computer_player.rb'

class Game

    def initialize(n, *marks)
        @player_array = []
        marks[0].each do |k, v|
            if v == true
                @player_array << ComputerPlayer.new(k)
            else
                @player_array << HumanPlayer.new(k)
            end
        end
        @current_board = Board.new(n)
        @current_player = @player_array[0]
    end

    def switch_turn
        @player_array.rotate!
        @current_player = @player_array[0]
    end

    def play
        while @current_board.empty_positions?
            p @current_board.print
            pos = @current_player.get_position(@current_board.legal_positions)
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