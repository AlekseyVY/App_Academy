require_relative './board.rb'
require_relative './human_player.rb'

class Game
    def initialize(name_of_a_Player)
        @board = Board.new(2)
        @previous_pos = nil
        @player = HumanPlayer.new(name_of_a_Player)
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
            @board.reveal(@previous_pos)
            current_pos = @player.input
            @board.reveal(current_pos)
            sleep(1)
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



g = Game.new('Aleksey')
g.run

