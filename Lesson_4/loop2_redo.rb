# count = 1

# loop do
#   puts "#{count}, is an odd number." if count.odd?
#   puts "#{count}, is an even number." if count.even?
#   count += 1
#   break if count > 5
# end

# loop do
#   number = rand(100)
#   puts number
#   break if (0...10).include?(number)
# end

# process_the_loop = [true, false].sample

# if process_the_loop 
#   loop do
#     puts 'the loop was processed'
#     break
#   end
# else
#   puts 'the loop was not processed'
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's Correct!"
#     break
#   else
#     puts "wrong answer, try again"  
#   end
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers


# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   p names.shift
#   break if names.empty?
# end

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

number_a = 0
number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next unless number_a == 5 || number_b == 5
# end

# Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings < 4
  greeting
  number_of_greetings += 1
end

