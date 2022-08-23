# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s always starting with 1.
 # The length of the string should match the given integer.

# examples
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


# Explicit requirements
# - Input: is a positive integer
# - Output: is a string of 1s and 0s starting with 1
# and the length is equal to the integer passed in as the argument.


# Data Structure: string

# Algorithm:
# - create an empty string
# - run a loop
# - add 1 to the string
# - add 0 to string
# - end loop if size of string is equal to integer
# - return the string of 1s and 0s
# require 'pry'

# def stringy(num)
#   str_num = ''
#   one = 1.to_s
#   zero = 0.to_s
#   loop do
#     str_num << one
#     break if str_num.length >= num
#     str_num << zero
#     break if str_num.length >= num
#     # binding.pry
#   end
#   str_num
# end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'