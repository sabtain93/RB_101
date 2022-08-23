 #Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

# explicit requierments
# input: positive integer
# output: array of digits


# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true


# def digit_list(num)
#   str = num.to_s
#   arr = []
#   counter = 0
#   loop do
#     break if counter == str.size
#     arr << str[counter].to_i
#     counter += 1
#   end
#   arr
# end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true