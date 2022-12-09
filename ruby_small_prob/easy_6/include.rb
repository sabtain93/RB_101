
#MY solution
# def include?(arr, num)
#   arr.any? { |elem| elem == num }
# end

#LS solution
# def include?(arr, value)
#   !!arr.find_index(value)
# end

#LS solution 2

def include?(arr, value)
  arr.each {|num| return true if num == value}
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false