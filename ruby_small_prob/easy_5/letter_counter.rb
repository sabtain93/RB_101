=begin
Problem:

Write a method that takes a string with one or more space separated words and returns a hash
that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


P - [Understand the] Problem
input: string
output: hash

rules:
- return a hash that shows the number of words of different sizes.
- a word is a string of characters that does not inculde a sapce.

E - Examples / Test cases
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


D - Data Structure
hash
array to store the words of the string

A - Algorithm
- store the words in the string in a list
- find the length of each word
- assign the sizes to the frequency of that size.


C - Code



=end

# def word_sizes(str)
#   count_hsh = {}
#   size_arr = []
#   str.split.each { |word| size_arr << word.length }
#   sort_arr = size_arr.sort
#   uniq_arr = size_arr.uniq
#   uniq_arr.each { |num| count_hsh[num] = sort_arr.count(num)}
#   count_hsh
# end

def word_sizes(str)
  count_hsh = Hash.new(0)
  str.split.each do |word|
    count_hsh[word.size] = count_hsh[word.size] + 1
  end
  count_hsh

end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}