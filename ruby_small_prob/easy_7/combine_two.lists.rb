=begin

Problem:
Write a method that combines two Arrays passed in as arguments, and returns a new Array that
contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of
elements.

Examples:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

P - [Understand the] Problem
input: two array (same size)
output: array(combined input arrays)

rules:
-return a new array which contain all the elements from both the arrays
with elements taken in alteration
-assume that both array passed are of the same size
-both arrays input are non empty

E - Examples / Test cases

D - Data Structure
array

A - Algorithm
create a new array
append the element from the first array then from the second array.
repeat the above the step till length of the new array is equal to the combined length of the input arrays

C - Code

=end

#My solution
# def interleave(arr_1, arr_2)
#   combine_arr =[]
#   combine_length = arr_1.size * 2 # assuming both sizes are the same
#   idx = 0
#   until combine_arr.size == combine_length
#     combine_arr << arr_1[idx]
#     combine_arr << arr_2[idx]
#     idx += 1
#   end
#   combine_arr
# end

def interleave(arr1, arr2)
  # result = []
  # arr1.each_with_index do |elem, idx|
  #   result << elem << arr2[idx]
  # end
  # result
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']