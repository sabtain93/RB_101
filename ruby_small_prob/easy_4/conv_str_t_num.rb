
=begin

Problem:

The String#to_i method converts a string of numeric characters (including an optional plus or minus 
sign) to an Integer.

String#to_i and the Integer constructor (Integer()) behave similarly.

In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string
to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned
way and calculate the result by analyzing the characters in the string.

Example:
string_to_integer('4321') == 4321
string_to_integer('570') == 570


P - [Understand the] Problem
Input: string of digits
Output: integer

Rules:
- convert a string of numeric characters to an integer
- cannot use the standard conversion methods
- do no consider the leading '-' or '+' and invalid characters.



E - Examples / Test cases
string_to_integer('4321') == 4321
'4321' -> 4321

string_to_integer('570') == 570


D - Data Structure
hash where keys are integers from 1 to 9 and values are numeric characters from '0' to '9'
array to store the numeric values

A - Algorithm
- create a hash
- analyze each cahracter of the string by comparing with values of the hash
- store the numeric value in an array
- convert the string to integer
- return the integer


C - Code

string_to_integer


=end

def array_num(arr)
  sum = 0
  multiplier = 10
  arr_len = arr.length

  arr.each do |num|
    arr_len -= 1
    sum += (multiplier ** arr_len) * num
  end
  sum
end

def string_to_integer(str)

  str_hsh = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
   6 => '6', 7 => '7', 8 => '8', 9 => '9'}

  char_arr = str.split('')
  num_arr = []

  char_arr.each do |char|
    str_hsh.each { |k, v| num_arr << k if (char <=> v) == 0 }
  end

  array_num(num_arr)
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('000') == 000
p string_to_integer('10006667777888777') == 10006667777888777