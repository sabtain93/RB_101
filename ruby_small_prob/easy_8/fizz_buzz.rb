=begin
Problem:
Write a method that takes two arguments: the first is the starting number,
and the second is the ending number.

Print out all numbers from the starting number to the ending number, except if a number
is divisible by 3, print "Fizz", if a number is divisible by 5,
print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

=end
# My solution
# def fizzbuzz(starting, ending)
#   (starting..ending).each do |num|
#     if num % 3 == 0 && num % 5 == 0
#       print "FizzBuzz"
#     elsif num % 3 == 0
#       print "Fizz"
#     elsif num % 5 == 0
#       print "Buzz"
#     else
#       print num
#     end
#     print ", " if num != ending
#   end
# end

def fizzbuzz(first, last)
  result = []
  first.upto(last) do |num|
    result << fizzbuzz_value(num)
  end
  puts result.join(', ')
end

def fizzbuzz_value(num)
  case 
  when num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  when num % 3 == 0
    "Fizz"
  when num % 5 == 0
    "Buzz"
  else
    num
  end
end



fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz