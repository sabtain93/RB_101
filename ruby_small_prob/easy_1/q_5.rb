# Write a method that takes one argument, a string, and returns
# a new string with the words in reverse order.


# explicit requirements
# - Input: A string
# - output: A new string which has the passed in string in reverse order
# - an empty str passed in will return empty str `''` even if there
# are spaces `'               '` this will also return `''`.

# Algorithm
# - convert the string passed in, into an array of words
# - store the elements of the array of words starting from the last element
# - return the array converted to string

# Example:
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# def reverse_sentence(str)
#   arr_of_words = str.split
#   return '' if arr_of_words.empty?
#   reverse_arr = []
#   counter = arr_of_words.size - 1
#   loop do 
#     break if counter < 0
#     reverse_arr << arr_of_words[counter]
#     counter -= 1
#   end
#   reverse_arr.join(' ')
# end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''