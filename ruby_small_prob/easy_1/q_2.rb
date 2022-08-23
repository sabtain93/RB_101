# Write a method that takes one integer argument, 
# which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

# explicit requirements:
# - input: integer (can be 0, positive or negative)
# - output: return boolean `true` if the integer absolute value 
#           is odd and `false if integer absolute value is even.
# The input is always a valid integer.
# cannot use the Integer#odd? and Integer#even methods


# examples
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Algorithm
# check if the Integer is positive or negative
# if the number is negative transform it into positive
# check if number is odd
# return boolean `true` if integer is odd
# return boolean `false` if integer is even
# return boolean `false` if integer value is 0

# def is_odd?(num)
#   return false if num == 0
#   if num < 0
#     num = num * (-1)
#   end
#   if num % 2 == 0
#     return false
#   else
#     return true
#   end
# end

def is_odd?(number)
  number % 2 == 1
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# the `%` modulo operator in Ruby always result in a non-negative
# number if the number on the right is a non negative number