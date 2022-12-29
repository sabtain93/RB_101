=begin
Problem:
Write a method that takes a number as an argument. If the argument is a positive number,return
the negative of that number. If the number is 0 or negative, return the original number.

=end

# My solution
# def negative(num)
#   if num <= 0
#     num
#   else
#     num * (-1)
#   end
# end

# LS solution
# def negative(num)
#   num > 0 ? -num : num
# end

# LS solution 2
def negative(num)
  -num.abs
end



p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby