=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers.
 In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
The String may have a leading + or - sign; if the first character is a +, your method should return 
a positive number; if it is a -, your method should return a negative number. If no sign is given,
 you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby,
 such as String#to_i, Integer(), etc. You may, however,
 use the string_to_integer method from the previous lesson.

Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

P - [Understand the] Problem
input: string
output: signed integer

E - Examples / Test cases



D - Data Structure
string and integer
hash to make a string to integer database.


A - Algorithm
- check if the string starts whith character '+'
- if it is '+'
  - remove the first character from string
  - use the string_to_integer method
- if it is '-'
  - remove the first character
  -use the string_to_integer method
  -use minus multiplication to get a negative number
- if it is positive
  - use the string_to_integer method

C - Code



=end



DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
   '6' => 6, '7' => 7, '8' => 8, '9' => 9}

MULTIPLIER = 10

def array_num(arr)
  sum = 0
  arr_len = arr.length

  arr.each do |num|
    arr_len -= 1
    sum += (MULTIPLIER ** arr_len) * num
  end
  sum
end

def string_to_integer(str)

  int_arr = str.chars.map { |char| DIGITS[char] }
  
  array_num(int_arr)

end

def string_to_signed_integer(str)
  if str[0] == '+'
    string_to_integer(str[1..-1])
  elsif str[0] == '-'
    -string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('4321') == 4321