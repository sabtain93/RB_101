=begin
Write a program that prompts the user for two positive integers,
and then prints the results of the following operations on those
two numbers: addition, subtraction, product, quotient, remainder,
and power. Do not worry about validating the input

P Understand the problem:

Explicit requirements:
Input: Integers
Output: strings
Perform addition, subtraction, product, quotient, remainder,
and power.

E Examples:

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

A Algorithm
- get two integers input from user
- apply the operations 
  -add
  -subtract
  -rduct
  -qoutient
  -remainder
  -power
- output the results of the above.

=end

puts "Enter the first Integer:"
num_1 = gets.chomp.to_i

puts "Enter the second Integer:"
num_2 = gets.chomp.to_i

add = num_1 + num_2

subtract = num_1 - num_2

product = num_1 * num_2

qoutient = num_1 / num_2

remainder = num_1 % num_2

power = num_1 ** num_2

puts "#{num_1} + #{num_2} is #{add}"

puts "#{num_1} - #{num_2} is #{subtract}"

puts "#{num_1} / #{num_2} is #{qoutient}"

puts "#{num_1} % #{num_2} is #{remainder}"

puts "#{num_1} ** #{num_2} is #{power}"
