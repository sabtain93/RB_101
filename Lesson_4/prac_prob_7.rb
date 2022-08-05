# Create a hash that expresses the frequency with which each letter occurs in this string:
# example
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
p resultn



# arry = statement.chars.uniq!
# arry.delete(" ")
# p arry
# statement_arry = statement.split(" ")
# p statement_arry
# frequency_hash = {}

# counter1 = 0

# loop do
#   break if counter1 >= arry.size
#   current_char = arry[counter1]
#   counter2 = 0
#   frequency = 0
#   loop do
#     break if counter2 >= statement_arry.size
#     current_word = statement_arry[counter2]
#     if current_word.include?(current_char)
#       frequency += current_word.count current_char
#       frequency_hash[current_char] = frequency
#     end
#       counter2 += 1
#   end
#   counter1 += 1
# end  

# p frequency_hash
    



