class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, '_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    else
      return false
    end
  end

  def get_matching_indices(char)
    arr = []
    @secret_word.each_char.with_index do |ele, idx|
      if char == ele
        arr << idx
      end
    end
    arr
  end

  def fill_indices(char, arr)
    arr.each { |i| @guess_word[i] = char}
  end

  def try_guess(char)
    attempt = already_attempted?(char)
    idx = get_matching_indices(char)
    fill_indices(char, idx)
    if idx.length == 0
      @remaining_incorrect_guesses -= 1
    end
    if attempt == true
      puts 'that has already been attempted'
      return false
    end
    if attempt == false
      @attempted_chars << char
      return true
    end
  end

  def ask_user_for_guess
    puts 'Enter a char:'
    input = gets.chomp
    try = try_guess(input)
    try
  end

  def win?
    if @secret_word == @guess_word.join("")
      puts 'WIN'
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts 'LOSE'
      return true
    else
      return false
    end
  end

  def game_over?
    if win? || lose?
      puts @secret_word
      return true
    else
      return false
    end
  end
    
end
