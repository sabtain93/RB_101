# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with words that contain five or more characters 
# reversed. Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.


# explicit requirements:
# - Input: string
# - output: return the string with words reversed with length >= 5

# Algorithm
# convert the input string into array
# loop through the array of words
# check for the words which have length >= 5 and reverse them
# convert the array with modified elements back to string
# return the string

# examples:
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS


# def reverse_words(str)
#   arr = str.split
#   arr.each_with_index do |word, idx|
#     if word.length >= 5
#       arr[idx] = word.reverse
#     end
#   end
#   arr.join(' ')
# end

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
