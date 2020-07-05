class Board
    attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N)}
    @size = n * n
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def []=(position, ele)
    @grid[position[0]][position[1]] = ele
  end

  def num_ships
    @grid.flatten.count(:S)
  end

  def attack(pos)
    if self[pos] == :S
        self[pos] = :H
        puts "you sunk my battleship"
        return true
    else
        self[pos] = :X
        return false
    end
  end

  def place_random_ships
    quart = @size / 4
    l = @grid.length
    while num_ships < quart
      @grid[rand(l)][rand(l)] = :S  
    end
  end

  def hidden_ships_grid
    hidden = @grid.map do |row|
      row.map do |cell|
        if cell == :S
          cell = :N
        else
          cell
        end
      end
    end
    hidden
  end

  def self.print_grid(grid)
    grid.each do |row|
      row.each_with_index do |cell, i|
        if i == row.length - 1
          print cell
        else
          print cell
          print " "
        end
      end
      puts
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end

end