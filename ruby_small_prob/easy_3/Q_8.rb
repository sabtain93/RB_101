=begin

Question:
Write a method that returns true if the string passed 
as an argument is a palindrome, false otherwise.
A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.

Problem:
Input: string
output: true if string is a palindrome, false if string is not
case matters as does punctuations and spaces

Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

Data structures:
input: strings
output: booleans
=end

def palindrome?(str)
  str == str.reverse
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true