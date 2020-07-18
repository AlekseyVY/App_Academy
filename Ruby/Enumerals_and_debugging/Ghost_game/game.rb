require_relative './player.rb'

class Game

    def initialize(*args)
        @fragment = ''
        @players = []
        args.each { |name| @players << Player.new(name)}
        @current_player = @players[0]
        @previous_player = nil
        read_file = File.open('dictionary.txt')
        @dictionary = Hash.new(0)
        read_file.readlines.map do |word, idx|
            @dictionary[word.chomp] += 1
        end
        read_file.close
    end

    def current_player
        @current_player
    end

    def previous_player
        @previous_player
    end

    def next_player!
        @previous_player = @current_player
        take_turn
        @current_player = @players[0]
    end

    def take_turn
        @players.rotate!
    end

    def valid_play?(string)
        alphabet = ("a".."z").to_a
        if alphabet.include?(string)
            return true
        else
            return false
        end
    end

    def play_round
        if @dictionary.include?(@fragment)
            p @previous_player + ' LOSE'
        end
        char = current_player.guess
        if valid_play?(char)
            @fragment += char
        else
            @current_player.alert_invalid_guess
        end
        next_player!
    end
end



f = Game.new('aleksey', 'Kirill')
f.play_round