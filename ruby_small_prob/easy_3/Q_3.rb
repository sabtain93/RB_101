=begin
Question:

Write a program that will ask a user for an input of a word
or multiple words and give back the number of characters.
Spaces should not be counted as a character.

Problem:
Explicit requirements:
- get input from user (word or words)
- output the number of characters
- spaces are not to be counted

Implicit requirements
- hypnes and quote marks to be counted

Example:
Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".


Data structures
- input is string
- array to store string
- output string

Algorithm
- get input word or words from user
- breakdown the words into characters
- count the number of characters
- display the characters counted 
=end

print " Please write word or multiple words: "
str = gets.chomp

arr = []
str.chars {|c| arr << c if c != " " }

char_count = arr.count

puts "There are #{char_count} characters in \"#{str}\""