# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# descending is from lowest to highest

# input is array of string
# output is array of strings


# Examples
# ['10', '11', '9', '7', '8'] --> ['11', '10', '9', '8', '7']

# Algo
# convert string to integers
# sort in descending order
# convert back to string

# code

# def descend_sort(arr)
#   arr.map! do |str|
#     str.to_i
#   end
#   sort_arr = arr.sort do |a, b|
#     b <=> a
#   end
#   sort_arr.map! do |num|
#     num.to_s
#   end
#   sort_arr
# end


# str_arr = ['10', '11', '9', '7', '8']

# p descend_sort(str_arr) == ['11', '10', '9', '8', '7']

p ['10', '11', '9', '7', '8'].sort do |a, b|
  b.to_i <=> b.to_i
end