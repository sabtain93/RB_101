=begin
Problem:

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
 and then computes the sum of those multiples. For instance, if the supplied number is 20,
 the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples:

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

PEDAC

P - [Understand the] Problem
Input: Integer
output: Integer

Rules:
-find the multiples of 3 or 5 that lie between 1 and the integer passed.
-return the sum of the multiples
-the number passed is an integer and greater than 1
-the common multiplies will only be considered once.



E - Examples / Test cases

multisum(3) == 3
3 => 3
multisum(5) == 8
2, 3, 4, 5 -> 3, 5 -> 3 + 5 = 8
3 + 5 => 8
multisum(10) == 33
3 + 5 + 6 + 9 + 10 => 33
1,2,3,4,5,6,7,8,9,10 -> 3,5,6,9,10 -> 

multisum(1000) == 234168


D - Data Structure
input: Integer
output: integer
-array to store the multiples

A - Algorithm
- create an empty array
- iterate from 1 to given number (n)
-   check if the current number is a multiple of 3, if yes then store it in an array
-   if no then check if it is a multiple of 5, if yes then store it in an array
- compute the sum of all the numbers in the array and return the sum.

- Generate a list of integers from 1 to n
  - use range (1..n)
- Select the integers which are multiples of 3 or 5
  - iterate through (1..n) select for which n % 3 or n % 5 == 0
- find the sum
  - sum


C - Code






=end

def multisum(num)
  (1..num).select{|n| (n % 3 == 0) || (n % 5 == 0)}.sum
end

# def multisum(num)
#   multiples = []

#   (1..num).each do |number|

#     if number % 3 == 0
#        multiples << number
#     elsif number % 5 == 0
#       multiples << number
#     end
#   end
  
#   multiples.sum
# end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168