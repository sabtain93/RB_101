=begin
Write a method that takes a single String argument and returns a new string that contains the
original value of the argument with the first character of every word capitalized and all other letters
lowercase.

You may assume that words are any sequence of non-blank characters.

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

P - [Understand the] Problem
input: string
output: string (new string)

rules:
-a new string is to be returned
- but it should contain the original value of the argument with the first character of 
  every word capitalized
- A word is any sequence of non blank characters
- the string contains a "" it will remain the same.

E - Examples / Test cases



D - Data Structure
array (to store the string)

A - Algorithm
- break the input string into seprate words and store it in a list
- iterate through the list
- capitalize each word 
- join the words to make a string
- return the new string


C - Code

=end

def word_cap (str)
  str.split.map { |word| word.capitalize }.join(" ")
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'