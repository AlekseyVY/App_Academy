require_relative './board.rb'
require_relative './human_player.rb'
require_relative './ai_player.rb'

class Game
    def initialize(name_of_a_Player='ai')
        @board = Board.new(6)
        @previous_pos = nil
        if name_of_a_Player == 'ai'
            @player = AIPlayer.new(6)
        else
            @player = HumanPlayer.new(name_of_a_Player)
        end
    end

    def valid_input(inp)
        if inp[0] < @board.board_size && inp[1] < @board.board_size
            return inp
        else
            @player.input
        end
    end

    def run 
        won = false
        while !won
            system("clear")
            @board.render
            @previous_pos = @player.input
            @player.value_of_input(@board.grid)
            @board.reveal(@previous_pos)
            current_pos = @player.input
            @board.reveal(current_pos)
            #sleep(1)
            p @board.equal(@previous_pos, current_pos)
            won = @board.won?
            if won 
                print @player.name
                print " "
                print "CONGRATS YOU WON IN EPIC BATTLE"
                puts
            end
        end
        @board.render
    end
end



g = Game.new
g.run

