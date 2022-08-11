# question: How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

sorted_arr = arr.sort do |num_str1, num_str2|
  num_str2.to_i <=> num_str1.to_i
end
p sorted_arr