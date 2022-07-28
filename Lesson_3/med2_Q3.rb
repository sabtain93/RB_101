def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#Question: what is the output 

=begin
whenever a method is called in Ruby, the argument is passed 'by value', but the value passed is
referring to the object passed. 
The method intializes local variables which and the refrences passed are assigned to the
method's local variables.
The String#+= operation is reassigment, which creates a new string object
now the mutated string point to 'a_string_param'.
But in the case of the array the Array#<< operation mutates the value and still referrinfg to 
the same object array.
In result, the original array is mutated but the string object remains unchanged    
=end
