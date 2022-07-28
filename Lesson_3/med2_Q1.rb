a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id


# question what is the output

=begin
a and b var refer to two different object which has the same value.
The object id's of a and b are different because they refer to different object.
As c is intialized to the object refrenced by variable a
=end