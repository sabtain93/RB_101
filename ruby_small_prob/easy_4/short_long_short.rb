
=begin
Problem:

Write a method that takes two strings as arguments, determines the longest of the two strings,
 and then returns the result of concatenating the shorter string, the longer string,
 and the shorter string once again. You may assume that the strings are of different lengths.

Examples:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

P - [Understand the] Problem
Input: two strings
Output: string

rules:
- determine the longest of the two strings passed
- create a new string which is result of concatenation of the shorter string,
  longer string and shorter string again.
- return the concatenated string.
- assume that the string are not of similar lengths.

E - Examples / Test cases
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"



D - Data Structure
string


A - Algorithm
- catgeroize the string depending on their lengths
- concatenate the shorter string with longer string and then the shorter again
- return the concatenanted string


C - Code





=end

def short_long_short(str_1, str_2)
  if str_1.length < str_2.length
     str_1 + str_2 + str_1
  else
    str_2 + str_1 + str_2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"