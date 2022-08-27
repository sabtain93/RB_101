# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# P understanding the problem

# Explicit requirements
# - Input: range (20..200)
# - Output: string (include Teddy's age)

# E Example
# example output: Teddy is 69 years old!

# D data structure
# input data structure is a range of integers.
# output data structure is a string.

# A Algorithm
# - get a random number between 20 and 200
# - set the random number to a variable
# - print the random number in a string

# C code
def get_age
  rand(20..200)
end


age = get_age

puts "Enter name or enter 'no' if you want to use defalut"
input = gets.chomp
if input == 'no'
  name = 'Teddy'
else
  name = input
end


puts "#{name} is #{age} years old"