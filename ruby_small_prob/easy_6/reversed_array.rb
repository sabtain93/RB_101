
# my solution
def reverse_arr(list)
  list_copy = list.dup
  index = -1
  list_copy.each do |element|
    list[index] = element
    index -= 1
  end
  list
end

#LS solution

def reverse!(arr)
  left_index = 0
  right_index = -1

  while left_index < arr.length / 2
    arr[left_index], arr[right_side] = arr[right_index], arr[left_side]
    left_index += 1
    right_index -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse_arr(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id

# list = %w(a b e d c)
# p reverse_arr(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# p reverse_arr(list) == ["abc"] # true
# p list == ["abc"]


# list = []
# p reverse_arr(list) == [] # true
# p list == []