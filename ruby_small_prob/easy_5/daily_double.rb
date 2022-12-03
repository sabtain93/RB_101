=begin
Problem:
Write a method that takes a string argument and returns a new string that contains the value of the
original string with all consecutive duplicate characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.

Example:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

P - [Understand the] Problem
input: string
output: modified string

rules:
return a string that contains the original string with all the consecutive duplicates ommitted
cannot use the string squeeze method
empty string is returned is empty string is passed
if no consecutive duplicate then return the same string.

E - Examples / Test cases
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''


D - Data Structure
array


A - Algorithm
store the string characters is a list
iterate through the list 
copy the single character from the list
return the string with the consecutive duplicate characters ommitted


C - Code


=end

# My Solution
# def crunch(str)
#   str_arr = []
#   str.each_char { |char| str_arr << char if str_arr.last != char }
#   str_arr.join
# end

# LS solution
def crunch(str)
  result_str = ''
  index = 0
  while index <= str.length - 1 
    result_str << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  result_str
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''