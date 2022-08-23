# Write a method that takes two arguments, a string and 
#a positive integer,and prints the string as many 
# times as the integer indicates.



# explicit requirements
# Two inputs: a string and a positive integer
# Output: print the input string depending on the integer number
# the string and integer will passed as an argument to method
# define a method which is defined with two parameters

# example
# repeat('Hello', 3) 
# output of the above call  # Hello
                            # Hello
                            # Hello

# Algorithim
# - define a method which takes two parameters
# - create a loop which iterates as many time 
# as the integer passed in as argument
# - inside the loop print the value of the string passed in
# the method as an argument.

def repeat(str, num)
  num.times do
    puts str
  end
end

repeat('Hello', 3)
