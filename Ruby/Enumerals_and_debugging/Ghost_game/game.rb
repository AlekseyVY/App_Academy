require_relative './player.rb'

class Game

    def initialize(*args)
        @fragment = ''
        @players = []
        args.each { |name| @players << Player.new(name)}
        @track = Hash.new
        @players.each { |player| @track[player] = 0 }
        @current_player = @players[0]
        @previous_player = nil
        read_file = File.open('dictionary.txt')
        @dictionary = Hash.new(0)
        read_file.readlines.map do |word, idx|
            @dictionary[word.chomp] += 1
        end
        read_file.close
        @word_dict = {}
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
        if @fragment == '' && alphabet.include?(string)
            @fragment = string
            @word_dict = @dictionary.select { |word, v| word[0] == string} 
            return true
        else @word_dict.include?(string)
            @fragment += string
            @word_dict = @word_dict.select { |word| word.include?(@fragment)}
        end
    end

    def play_round
        looses
        p current_player.name
        char = current_player.guess
        if !valid_play?(char)
            @current_player.alert_invalid_guess
        end
        next_player!
    end

    def looses 
        if @word_dict.has_key?(@fragment)
            p 'LOSE'
            @track[@current_player] += 1
            @fragment = ''
            @word_dict = {}
        end
        if record(@current_player)
            p @current_player.name
            p "GHOST"
            tmp = @players.index(@current_player)
            @players.slice!(tmp)
            return true
        end
    end

    def record(player)
        times = @track[player] 
        if times == 5
            return true
        else 
            return false
        end
    end

    def run
        while @players.length != 1
            play_round
        end
    end
end



f = Game.new('aleksey', 'Kirill', 'Andrey')
f.run