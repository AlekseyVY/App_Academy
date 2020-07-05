class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(array)
    array.all? do |char| 
        POSSIBLE_PEGS.include?(char.upcase) 
    end
  end

  attr_reader :pegs

  def initialize(array)
    if Code.valid_pegs?(array)
      @pegs = array.map { |ele| ele.upcase }
    else
      raise "Error"
    end
  end

  def self.random(length)
    r = ["r", "g", "b", 'y']
    random = []
    length.times do 
      random << r.sample
    end
    Code.new(random)
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end

  def [](index)
    @pegs[index]
  end

    def length
      @pegs.length
    end

    def num_exact_matches(code)
      count = 0
      code.pegs.each_with_index do |peg, i|
        if peg == @pegs[i]
          count += 1
        end
      end
        count
    end

    def num_near_matches(code)
      count = 0
      code.pegs.each_with_index do |peg, i|
        if @pegs.include?(peg) && @pegs[i] != peg
          count += 1
        end
      end
      count
    end

    def ==(code)
      @pegs == code.pegs
    end
end
