def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end
=begin
the purpose of 'number % divisor == 0' is a conditional check for remainder of the divisor
divided by the number, as the remainder '0' will ensure that is the divisor is a factor of the 
number
Allows us to determine the result is an integer number (no remiander)
=end

=begin
line 8 contains the actual return value. If we do not add the explicit return the method
will return the last line of the method which is nil. As the while loop rerturn nil because there
is no break condtion which provides a return value to the while loop
=end