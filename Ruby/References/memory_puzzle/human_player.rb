class HumanPlayer
    attr_reader :name

    def initialize(name)
        @name = name
    end
    
    def input
        print 'Enter coordinates: '
        inp_first = gets.chomp.split(" ")
        inp_first.map! do |ele| 
            ele.to_i
        end
    end
end