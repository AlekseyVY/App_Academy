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
        s_1
    end
end



w = WordChainer.new("dict.txt")
p w.adjacent_words('cats')