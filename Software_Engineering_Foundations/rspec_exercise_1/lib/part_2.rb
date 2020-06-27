def hipsterfy(word)
    vowels = "aeoui"
    tmp = -1
    t = 0
    while t < word.length
        if vowels.include?(word[tmp])
            word[tmp] = ""
            return word
        end
        tmp -= 1
        t += 1
    end
    word
end

def vowel_counts(string)
    vowels = "aeoui"
    hash = Hash.new(0)
    string.downcase.each_char do |char|
        if vowels.include?(char)
            hash[char] += 1
        end
    end
    hash
end

def caesar_cipher(msg, num)
    new_msg = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    msg.each_char.with_index do |char, idx|
        if alphabet.include?(char)
            new_msg += alphabet[(alphabet.index(char) + num) % 26]
        else
            new_msg += char
        end
    end
    new_msg
end
