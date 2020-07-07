# Extend the string class by defining a String#map! method that accepts a block. 
# The method should modify the existing string by replacing every character with the 
# result of calling the block, passing in the original character and it's index. 
# Do not use the built-in Array#map or Array#map! in your solution.




class String



    def map!(&prc)
        self.each_char.with_index do |ch, i|
            self[i] = prc.call(ch, i)
        end
    end
end









# # Examples
 word_1 = "Lovelace"
 word_1.map! do |ch| 
     if ch == 'e'
         '3'
     elsif ch == 'a'
         '4'
    else
        ch
  end
end
p word_1        # => "Lov3l4c3"

 word_2 = "Dijkstra"
 word_2.map! do |ch, i|
     if i.even?
         ch.upcase
     else
         ch.downcase
     end
 end
 p word_2        # => "DiJkStRa"