=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers 
are 1 by definition, and each subsequent number is the sum of the two previous numbers.
This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid
 rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
 especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number
 of digits specified as an argument. (The first Fibonacci number has index 1.)
You may assume that the argument is always greater than or equal to 2.

Examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

P - [Understand the] Problem
input: integer(number of digits)
output: integer(index)

rules:
-in a fibonacci series first 2 number are 1 and each subsequent number is the sum of the two previous numbers
-the first fibonnaci number has the index 1
- the number passed will be always equal or greater than 2
E - Examples / Test cases



D - Data Structure
array
integer

A - Algorithm
- create the intial series for the fibonnaci series
- iterate through the list by adding values as per the series rule
- analyze the number of digits of the current value calulated.
- check if the length is equal to the number passed.

C - Code


=end

#My solution
# def find_fibonacci_index_by_length(length)
#   fibbo_arr = [1, 1]
#   loop do
#     value = fibbo_arr[-1] + fibbo_arr[-2]
#     fibbo_arr << value
#     return (fibbo_arr.index(value) + 1) if value.to_s.length == length
#   end
# end


#LS 
def find_fibonacci_index_by_length(length)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1

    fibonacci = first + second
    break if fibonacci.to_s.size >= length
    first = second
    second = fibonacci
  end
  index
end


p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847