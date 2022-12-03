=begin
Using the multiply method from the "Multiplying Two Numbers" 
problem, write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).

Problem:
Explicit requirements:
- use the `multiply` method
- define method with one parameter
- compute the sqaure of the input

Examples:
square(5) == 25
square(-8) == 64

Data structures
- integers

Algorithm
- define a `square` method with one parameter
- pass in an argument to square method
- the square method invokes the multiply method
- return the multiplication

=end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64