=begin
Problem:
Write a method that takes an Array of numbers and then returns the sum of the sums of each
leading subsequence for that Array.
You may assume that the Array always contains at least one number.

Example:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

P - [Understand the] Problem
input = array (of integers)
output = integer (sum of each leading subsequence)

rules:
return the sum of the sums of each leading subsequence for the input array
the input array contains atleast one number

E - Examples / Test cases

D - Data Structure
array
integer

A - Algorithm
- iterate through the list
- item by item add the next integer into the sum of the previous

C - Code
=end
# require 'pry'
# My solution
# def sum_of_sums(arr)
#   count = 1
#   sum = 0
#   loop do
#     sum += arr.slice(0, count).reduce(:+)
#     # binding.pry
#     break if count == arr.size
#     count += 1
#   end
#   sum
# end

# LS solution 1
# def sum_of_sums(arr)
#   sum = 0
#   accumulator = 0
#   arr.each do |num|
#     accumulator += num
#     sum += accumulator
#   end
#   sum
# end

# LS solution 2
def sum_of_sums(arr)
  sum = 0
  1.upto(arr.size) do |count|
    sum += arr.slice(0, count).reduce(:+)
  end
  sum
end



p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35