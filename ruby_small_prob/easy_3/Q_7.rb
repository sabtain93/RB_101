=begin
Question:
Write a method that returns an Array that contains
every other element of an Array that is passed in as an argument.
The values in the returned list should be those values that are
in the 1st, 3rd, 5th, and so on elements of the argument Array.

Problem:

Expilicit requirements:
- Input is one array
- output is a subset of input array

Implicit requirements:
- return the same array if array has ine element
- return the same array if array is empty

Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

Algorithm:
- check if array is empty
  - return empty array
- iterate over the array
- select the elemnets with even index
- return the selected elements array

=end

def oddities(arr)
  return arr if arr.empty?
  odd_arr = []
  arr.each_with_index do |element, idx|
    odd_arr << element if idx.even?
  end
  odd_arr
end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
p oddities([]) == []