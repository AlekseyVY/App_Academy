class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end

    def num_attempts
        @num_attempts
    end

    def game_over?
        @game_over
    end

    def check_num(num)
        @num_attempts += 1
        if @secret_num == num
            puts "you win"
            @game_over = true
        elsif num < @secret_num 
            puts "too small"
        else
            puts "too big"
        end
    end

    def ask_user
        puts 'enter a number'
        num = gets.chomp
        check_num(num.to_i)
    end
end
