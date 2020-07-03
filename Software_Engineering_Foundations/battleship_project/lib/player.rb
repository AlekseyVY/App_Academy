class Player
    def get_move
        print 'enter a position with coordinates separated with a space like `4 7`'
        input = gets.chomp.split(" ")
        input.map { |num| num.to_i}
    end
end
