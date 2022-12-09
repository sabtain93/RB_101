
# My solution
# def show_multiplicative_average(arr)
#   multiplication = arr.reduce(:*)
#   divisor = arr.size
#   mutiplicative_avg = (multiplication / divisor.to_f).round(3)
# end

# LS solution
def show_multiplicative_average(arr)
  product = 1.to_f
  arr.each { |num| product *= num }
  avg = product / arr.size
  "The result is #{format('%.3f', avg)}"
end





p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667