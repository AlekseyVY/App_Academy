# User class

class User
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def user_input
        print @name
        print '   Please enter coordinates for action: (separated by comma): '
        data = gets.chomp.split(',')
        data.map { |ele| ele.to_i }
    end

    def action
        print @name
        print '  Plese specify action you want to perform (open - o, flag - f, unflag - u): '
        data = gets.chomp
    end
end