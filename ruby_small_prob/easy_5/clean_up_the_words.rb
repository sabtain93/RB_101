=begin
Problem:

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic
characters, write a method that returns that string with all of the non-alphabetic characters
replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have
one space in the result (the result should never have consecutive spaces)

Examples:
cleanup("---what's my +*& line?") == ' what s my line '


P - [Understand the] Problem
input: string
output: string

rules:
-string passed is lowercased
-replace the non-alphabetic characters with spaces
- if one or more non alphabectic characters occur in a row rplace them with one space
- the returned string should not have consecutive spaces

E - Examples / Test cases
cleanup("---what's my +*& line?") == ' what s my line '
"---what's" + "my" + "+*&" + "line?" -> "what" + " " + s" + "my" + "line" + " "


D - Data Structure
array


A - Algorithm
-break the string and store each character in a list
- iterate over the list and replace each no-alphabectic character with a space
- replcae consecutive spaces with a single space.

C - Code

=end

# def cleanup(str)
#   str_arr = str.chars.map do |char|
#     if ('a'..'z').include?(char)
#       char
#     else
#       " "
#     end
#   end
#   str_arr.join.squeeze(" ")
# end
def cleanup(str)
  str.gsub(/[^a-z]/, " ").squeeze(" ")
end

p cleanup("---what's my +*& line?")