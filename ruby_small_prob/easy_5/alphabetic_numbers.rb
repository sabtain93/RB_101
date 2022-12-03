=begin
Problem
Write a method that takes an Array of Integers between 0 and 19,
and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
 fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:
alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

P - [Understand the] Problem
input: array of number (0-19)
output: array of numbers

rules:
return an array of integers passed sorted based on the English words for each element

E - Examples / Test cases

D - Data Structure
hash
array


A - Algorithm
- set a directory for numbers and their english words
-sort the numbers according to the english words
- return the sorted numbers


C - Code
=end

#My solution
WORD_ARR = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen',
 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def alphabetic_number_sort(arr)
  word_hsh = {}
  result_arr = []
  WORD_ARR.each_with_index do |word, idx|
    word_hsh[word] = arr[idx]
  end
  word_hsh.sort_by { |k, v| k}.each {|sub_arr| result_arr << sub_arr.last }
  result_arr
end

#LS solution
NUMBER_ARR = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
 fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |num| NUMBER_ARR[num]}
end

#Further exploration
def alphabetic_number_sort(arr)
  arr.sort { |num_1, num_2| NUMBER_ARR[num_1] <=> NUMBER_ARR[num_2]}
end


p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]