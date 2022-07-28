puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"

# both of the above are correct 
# if string method or string interpolation is not used
# the error of no implicit conversion of string into integer
# as integers cannot be concatenated into strings
