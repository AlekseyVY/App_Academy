 require 'set'
 
class WordChainer
    attr_reader :dictionary

    def initialize(dictionary_file_name)
        file = File.open(dictionary_file_name)
        @dictionary = file.readlines.map(&:chomp)
        file.close
    end

    def adjacent_words(word)
        s_1 = Set.new()
        @dictionary.map do |ele|
            if word.length == ele.length
                s_1.add(ele)
            end
        end
        s_1.each_with_index do |ele, idx|
            
        end
    end
end



w = WordChainer.new("dict.txt")
p w.adjacent_words('cats')


# find every adjacent word of given length. with only one word at given index can be unequal.
