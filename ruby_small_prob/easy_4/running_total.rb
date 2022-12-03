=begin
Problem:

Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
and each element has the running total from the original Array.

A running total is the sum of all values in a list up to and including the current element.
Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7),
while the running total at index 3 is 47 (14 + 11 + 7 + 15).

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

P - [Understand the] Problem
input: array of integers
output: array of integer(running total)

Rules:
- return an array with same number of elements
- each element of the returned array has the running total from the original array.
- empty array is retuned when empty array is passed
- if a signle elemenet array is passed the same array is returned.


E - Examples / Test cases
running_total([2, 5, 13]) == [2, 7, 20]
[2, 5, 13]-> 0 -> 2, 1-> (2+5), 2->(2+5+13) -> 20-> [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []



D - Data Structure
array


A - Algorithm
- iterate over the array passed
- create a new array
  - where each element is the running total if the original array
- return the new array

C - Code




=end

def running_total(arr)
  sum = 0
  arr.map do |n|
     sum += n
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
