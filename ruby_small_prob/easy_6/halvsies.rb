=begin
Problem:
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
that contain the first half and second half of the original Array, respectively. If the original array 
contains an odd number of elements, the middle element should be placed in the first half Array.

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

P - [Understand the] Problem
input: array
output: two arrays (nestede in one)

rules:
- return two arrays where the first contains the first half and the second contains the second half
- if the array passed has an odd number then the middle number will be contained by the first half
- if a single element array is passed then the returned nested array will be [[element], []]
- if an empty array is passed then two empty sub arrays will be passed

E - Examples / Test cases

D - Data Structure
array

A - Algorithm
-create two sub arrays
-find the size of the arrays passed
- check if the length is odd or even
- append the first sub array with elements
- append the second sub array with the remainig elements


C - Code

=end
# My solution
def halvsies(arr)
  subarr_1 = []
  subarr_2 = []
  result_arr = [subarr_1, subarr_2]
  arr_size = arr.size
  if arr_size == 1
    subarr_1 << arr[0]
    result_arr
  elsif arr_size == 0
    result_arr
  elsif arr.size % 2 == 0
    idx = arr.size - (arr.size / 2)
    (0..(idx-1)).each { |num| subarr_1 << arr[num]}
    (idx..(arr_size-1)).each { |num| subarr_2 << arr[num]}
    result_arr
  else
    q, r = arr_size.divmod(2)
    num_1 = arr_size - q
    (0..(num_1-1)).each {|num| subarr_1 << arr[num]}
    (num_1..(arr_size-1)).each {|num| subarr_2 << arr[num]}
    result_arr
  end
end

#LS solution
def halvsies(arr)
  middle = (arr.size / 2.0).ceil
  first_half = arr.slice(0, middle)
  second_half = arr.slice(middle, arr.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]