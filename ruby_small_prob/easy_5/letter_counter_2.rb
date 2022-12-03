=begin
Problem:
Modify the word_sizes method from the previous exercise to 
exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

P - [Understand the] Problem
input: string
output: hash

rules:
count the characters in a word in the string passed
return a hash
a word does not contain a space
do not count the non-alphabetic characters ("it's" is 3, not 4)

E - Examples / Test cases

D - Data Structure
array (to store the words)
hash (returned with count of sizes)


A - Algorithm
- store each word of the string in a list
- iterate over the list and calculate the size of each word elimnating the non alphabetic character
- store the the sizes according to their frequency in the string.
  - initialize a hash to default value 0
  - string#count ("A-Za-z")


C - Code

=end

# def word_sizes(str)
#   count_hsh = Hash.new(0)
#   str.split.each do |word|
#       count_hsh[(word.count "A-Za-z")] += 1
#   end
#   count_hsh
# end

def word_sizes(str)
  count_hsh = Hash.new(0)
  str.split.each do |word|
    clean_word = word.delete '^A-Za-z'
    count_hsh[clean_word.size] += 1
  end
  count_hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}