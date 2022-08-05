# Question: - Given an array of numbers, create a method to double each value in the array passed
#       - mutate the caller

# Rules:
#     Explicit: 
#          - input is an array
#          - output is the mutated array with each value of the array doubled
# Algorithm:
# ==========
#          - create a variable 'doubled_array' to store the input array of integers
#          - loop through the array
#          - for each value iterated, double the value
#          - store the double value in 'doubled_array'
#          - end loop when the size of the 'doubled_array' equals the 'input_array'
#          - assign the input array to the doubled_array
#              

def double_numbers(numbers)
  
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] =n current_number * 2

    counter += 1
  end

  numbers 
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers