=begin
Problem:
Write a method that takes a string as an argument and returns a new string in which every uppercase
letter is replaced by its lowercase version, and every lowercase letter by its uppercase version.
All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Examples:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

P - [Understand the] Problem
input: string
output: string

rules:
-it returns a new string where every uppercase letter is replaced by its lowercase version and vice versa
-all other characters should remain the same.
-cannot use the string swapcase method

E - Examples / Test cases



D - Data Structure
array
string

A - Algorithm
-break the string into seperate charactres store them in a list
-iterate over the list 
- if the characters is an uppercase alphabet
  convert it into a lowercase alphabet
- if it is a lowercase alphabet\
  convert it into uppercase
- if it is not an aplhabet (uppercase or lowercase)
  levae it unchanged
- convert the list into string 
-return the transformed string

C - Code
=end
# My Solution
# UPPER_CASE = ('A'..'Z')
# LOWER_CASE = ('a'..'z')

# def swapcase(str)
#   str.chars.map do |char|
#     if UPPER_CASE.include?(char)
#       char.downcase
#     elsif LOWER_CASE.include?(char)
#       char.upcase
#     else
#       char
#     end
#   end.join
# end

#LS Solution

def swapcase(str)
  characters = str.chars.map do |char|
    if char =~ /[A-Z]/
      char.downcase
    elsif char =~ /[a-z]/
      char.upcase
    else
      char
    end
  end
    characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'