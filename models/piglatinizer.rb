class PigLatinizer

    def piglatinize(str)
        str.split(" ").map do |word|
            piglatinize_word(word).join(" ")
        end
    end

    def piglatinize_word(word)
        vowel = (/[aAeEiIoOuU]/).to_s

        if word.start_with?(vowel)
            word + "way"
        else
            vowel_num = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_num - 1)
            rest_word = word.slice(vowel_num..word.length)

            rest_word + consonants + "ay"
        end
    end

end