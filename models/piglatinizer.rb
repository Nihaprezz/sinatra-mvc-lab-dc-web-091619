class PigLatinizer


    def piglatinize(string)
    # will take care of parsing the string into words and then putting the piglatinized words back together
    split_string = string.split(" ")
    reversed = ""
    
    if split_string.length > 1
        reversed = split_string.map do |string|
            piglatinize_word(string)
        end

        reversed.join(" ") 

    else 
       reversed = piglatinize_word(string)
    end 
           
    end
    
    
    def piglatinize_word(word)
    # piglatinize_word will take care of piglatinizing individual words
    first_letter = word[0].downcase
    
        if first_letter == "a" || first_letter == "e" || first_letter ==  "i" || first_letter ==  "o" || first_letter == "u"
          "#{word}way"
        else
        #constants
        # atironflay oolschay
        split_word = word.split(/([aeiou].*)/)
         "#{split_word[1]}#{split_word[0]}ay"
        end
    
    end


end
