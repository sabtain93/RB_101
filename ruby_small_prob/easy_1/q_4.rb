# Write a method that counts the number of occurrences
# of each element in a given array.

# Explicit requirements
# Input: array of words
# Output: print number of occurence of 
# each string in the array along with the string.
# words are case sensitive

#example
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles) 

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# algorithm
# create a new array to store the strings occurence only once
# count the occurence comparing the new array and the array passed in
# as the argument
# print the string value with its occurence.

def count_occurrences(arr)
  new_arr = arr.uniq
  counter = 0
  hsh = {}
  new_arr.each do |word|
    hsh[word] = arr.count(word)
  end
  hsh.each { |k, v| puts "#{k} => #{v}" }
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles) 