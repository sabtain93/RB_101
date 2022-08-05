words = "the flintstones rock"


# words_array = words.split(" ")
# p words_array

# words_array.map!{|word| word.capitalize!}

# words = words_array.join(' ')
# p words
p words.split.map {|word| word.capitalize }.join(' ')