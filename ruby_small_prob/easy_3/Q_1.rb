=begin
Question:
Write a program that solicits 6 numbers from the user,
then prints a message that describes whether or not the 6th number
appears amongst the first 5 numbers.

P Understanding the problem
-----------------------------------------------------------------
Explicit requirements:
- get six number inputs
- output a string that describes if the last input is amongst the
previous 5 inputs

Implicit requirements
Display the first five inputs in an array.
-----------------------------------------------------------------

E Examples:
------------------------------------------------------------------
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
--------------------------------------------------------------------

D Data structures
-------------------------------------------------------------------
Input: array for first five inputs
output: string
-------------------------------------------------------------------

A Algorithm
-------------------------------------------------------------------
- Get six numbers from user
- add the first 5 numbers in an array
- check the sixth number input is it in the array
- display the results
-------------------------------------------------------------------
=end



puts "==> Enter the 1st number:"
num_1 = gets.chomp
puts "==> Enter the 2nd number:"
num_2 = gets.chomp
puts "==> Enter the 3rd number:"
num_3 = gets.chomp
puts "==> Enter the 4th number:"
num_4 = gets.chomp
puts "==> Enter the 5th number:"
num_5 = gets.chomp
puts "==> Enter the last number:"
num = gets.chomp


arr = []
arr << num_1 << num_2 << num_3 << num_4 << num_5

if arr.include?(num)
  puts "The number #{num} appears in #{arr}"
else
  puts "The number #{num} does not appear in #{arr}"
end
