require_relative "code"

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code)
        puts @secret_code.num_exact_matches(code)
        puts @secret_code.num_near_matches(code)
    end

    def ask_user_for_guess
        puts 'Enter a code'
        inp = gets.chomp
        cod = Code.from_string(inp)
        print_matches(cod)
        if @secret_code.num_exact_matches(cod) == @secret_code.length
            return true
        else
            return false
        end
    end
end
