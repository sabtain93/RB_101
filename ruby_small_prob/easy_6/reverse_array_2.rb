#my soltion
# def reverse(arr)
#   result = []
#   arr_idx = -1
#   return result if arr.empty?
#   loop do 
#     result << arr[arr_idx]
#     arr_idx -= 1
#     break if result.length == arr.length
#   end
#   result
# end

# def reverse(arr)
#   result_arr = []
#   arr.reverse_each { |element| result_arr << element}
#   result_arr
# end

# def reverse(arr)
#   arr.each_with_object([]) do |element, result|
#     result.prepend(element)
#   end
# end

def reverse(arr)
  arr.inject([]) { |arr, ele| arr.prepend(ele)}
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true