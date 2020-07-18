class Player
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def guess
        p "Enter Character: "
        char = gets.chomp
    end
    
    def alert_invalid_guess
        p 'You entered wrong char!'
    end
end