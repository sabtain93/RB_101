=begin
Given a string of words separated by spaces, write a method that takes this string of words
and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter,
 and that the string will always contain at least one word.
  You may also assume that each string contains nothing but words and spaces.

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

P - [Understand the] Problem
input: string
output: transformed string

rules:
- string is passed
- swap the first and the last letter of every word in the string
- every word in the string contains one letter
- the words are seprated by spaces
- the string contains only words and spaces.


E - Examples / Test cases



D - Data Structure
array to store words from the string


A - Algorithm
- store the words in a list
- iterate through the list
- swap the first letter with the last letter for each word
- return the transformed string


C - Code




=end

def swap(str)
  str_arr = str.split.map do |word|
    first = word[0]
    last = word[-1]
    word[0] = last
    word[-1] = first
    word
  end
  str_arr.join(' ')
end

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'