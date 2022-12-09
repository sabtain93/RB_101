# My solution
# def multiply_list(arr1, arr2)
#   index = 0
#   result = []
#   loop do
#     result << (arr1[index] * arr2[index])
#     index += 1
#     break if result.size == arr1.size
#   end
#   result
# end

# LS Solution
# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index do |val, idx|
#     result << val * arr2[idx]
#   end
#   result
# end

# Further Exploration
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

