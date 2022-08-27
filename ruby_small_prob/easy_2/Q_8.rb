=begin
Problem:
--------------------------------------------------------------------------
Write a program that asks the user to enter an integer greater than 0,
then asks if the user wants to determine the sum or product of all numbers
between 1 and the entered integer.
--------------------------------------------------------------------------

P Understand the problem
-------------------------------------------------------------------------
Explicit requirements:
-Input: integer greater than 0
-Input: string
-output: string
-calulate sum or product between the input integer and 1
-------------------------------------------------------------------------

E Example
-------------------------------------------------------------------------
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
-------------------------------------------------------------------------

A Algorithm
-------------------------------------------------------------------------
- get integer from user greater than 1
- get input from user if they want product or sum
- if user select sum, calculate sum between 1 and input integer
- if user selsct product calculate the product between 1 and input integer
-------------------------------------------------------------------------

=end

puts "Enter integer greater than 0:"
number = gets.chomp.to_i

puts "Enter `s` to find sum or `p` to find product:"
operation = gets.chomp

if operation == 's'
  sum = (1..number).reduce(:+)
  # (1..number).inject { |sum, n| sum + n}
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = (1..number).reduce(1, :*)
  # (1..number).inject(1) { |product, n| product * n }
  puts "The product of the integers between 1 and #{number} is #{product}."
end

