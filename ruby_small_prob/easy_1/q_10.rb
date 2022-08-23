# Write a method that takes two arguments,
 # a positive integer and a boolean, and calculates 
 # the bonus for a given salary. If the boolean is true, 
 # the bonus should be half of the salary.
 # If the boolean is false, the bonus should be 0.

# implicit requirements:
# - Input: integer and a boolean
# - Output: Integer
# - if boolean value passed in is `false` return `0`
# - if boolean is true return half of the integer passed


def calculate_bonus(salary, bonus_applicable)
  if bonus_applicable == false
    return 0
  else
    return salary / 2
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000