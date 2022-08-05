# What is the return value of the select method below? Why?

# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# Answer:
# we know that a select method takes a block, and iterates through each value of the caller
# In the code above the caller is an array object.
# Select uses the return value of the block to make a selection
# Just as a normal method, the return value of the block is the last line executed.
# From this we get the return value of the block, that is the string object 'hi'.
# As select method analyzes the 'turthiness' of the block return value and as everything except
# 'nil' and 'false' is turthy.
# Select method creates a collection and store the value of the passed argument in it 
# if the return value is tuthy.
# In the above question for every iteration the return value is 'truthy', so a collection with the
# each value of the passed parameter is stored in the collection
# the return value is [1, 2, 3]

# How does count treat the block's return value? How can we find out?

# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# count analyzes the truthyness of the return value.
# count method only counts the elements if the block's return value evaluates to be true.
# We can study the Ruby doc for Array#count, where we find the behaviour of the count method 
# when invoked with a block on a collection, which in this case is an array. 

# What is the return value of reject in the following code? Why?

# [1, 2, 3].reject do |num|
#   puts num
# end

# the return value of reject in the above code is an array object with all the element of the 
# original array 
# to answer why we can refer to the Array#reject Ruby Doc.
# the reject method when invoked with a block, it calls the block with successive elements
# and returns an array of those elements for which the return value of the block is 'nil or 'false'
# in the above code the block return value is nil as the last line of the method is 'puts num' 
# and puts has a return value of 'nil'

# What is the return value of each_with_object in the following code? Why?

# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end

# the return value is a hash {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# the each_with_object iterates the block with the arbitary object given, 
# returns the intially givn object

# What does shift do in the following code? How can we find out?

# hash = { a: 'ant', b: 'bear' }
# hash.shift

# shift removes the first element of the hash. 
# it mutates the hash left with only one key value pair
# it returns the key value pair stored in a two item array
# or hash default value if hash is empty
# we can find what the shift does in Hash#shift documentation

# What is the return value of the following statement? Why?

# ['ant', 'bear', 'caterpillar'].pop.size

# return value is 11
# beacuse the pop method destructively removes the last element of the
# array it called upon.
# and return the last element it removed
# In this case the last element is a string, which has been returned
# The pop method is chained to the size method, which return the size of the string
# so as the size of string which was the return by pop is 11, that is the return value
# of the above code

# What is the block's return value in the following code? How is it determined? 
# Also, what is the return value of any? 
# in this code and what does it output?

# [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end

# the blocks return value is a boolean, as the last line 'num.odd?' return a boolean value
# for each element of the array as it is iterated
# it can be determined by referring the Integer#odd? doc
# Return value of any? is the boolean value 'true' as the method return true if for any element
# the block returns any value other than false or nil
# the output of the code is 
# 1
# as the in the first iteration the block return true so put num get executed only once.

# How does take work? Is it destructive? How can we find out?

# arr = [1, 2, 3, 4, 5]
# arr.take(2)

# it returns the first n elements of the array 
# storing them in an array
# no it is not destructive
# we can find this in the examples given in the Array#take Doc

# What is the return value of map in the following code? Why?

# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

# the return value of map is an array [nil, 'bear']
# because the map method return an array of the return value of the block 
# for the first iteration the return value of the block is nil as the if condition is evaluated
# to be false.
# for the second iteration the if condition is true so the if block is executed
# which has the return value equal to the element passed to the map method block
# so the final return value is an array of size == 2 
# with first value equal to nil and the second is the last element which was passed in the iteration


# What is the return value of the following code? Why?
# 
# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end

# [1, nil, nil]

# as the map method always returns an array object
# based on the return value of the block
# for the forst iteration the if condition is not met so the else block is executed 
# so the block return 'num' which is 1 for the first iteration
# for second and third iteration the if condition is met and so the if block is executed
# if block has puts num which return nil
# so the last two iterations the return value is nil
 







