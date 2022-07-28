a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# question: what is the output?
=begin
a, b and c all refer to the same object as integer object is immutable.
This means that in ruby each integer is a single immutable object.
Whenever an operation is performed on an object a new integer object is returned.
=end
