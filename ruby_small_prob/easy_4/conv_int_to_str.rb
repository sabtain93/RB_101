=begin
In the previous two exercises, you developed methods that convert simple numeric strings
 to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s,
 String(), Kernel#format, etc. Your method should do this the old-fashioned way and
 construct the string by analyzing and manipulating the number.

Examples:

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'



P - [Understand the] Problem
input: integer
output: string

rules:
convert positive integeror zero to string
cannot use the predefined methods


E - Examples / Test cases
integer_to_string(4321) == '4321'
4321 -> 4 -> '4', 3 -> '3', 2 -> '2', 1 -> '1'.
'4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

D - Data Structure
hash to store integer to string
array

A - Algorithm
- seperate the integer value into single numbers
- enter the numbers into a list
- iterate through the list and convert them to string
- join single numeric characters to make a string


C - Code



=end

DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7',
8 => '8', 9 => '9'}

def integer_to_string(int)
  arr_1 = int.digits.reverse

  str_arr = arr_1.map { |n| DIGITS[n] }
  str_arr.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'