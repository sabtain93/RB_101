=begin
Build a program that asks a user for the length and width of a room 
in meters and then displays the area of the room in both square meters 
and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

P Understanding the problem

Explicit requirements:

- Input: 1. Integer (length in meters)
         2. integer (width in meters)
- output: 1. float (Area units sq meters)
          2. float (Area in units sq feet)
- 1 sq meter is equal to 10.7639 sq ft
- inputs will be valid

D Data structure

inputs will use integers data type
outputs will use integer data type

E Example:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

A Algorithm:
- get length in meters
- get width in meters
- find the area in sq meters and convert it to a float data type
- find the area in sq ft
- display the area in sq meters and sq ft

=end

puts "Enter the length of the room in meters"
room_length = gets.chomp.to_i
puts "Enter the width of the room in meters"
room_width = gets.chomp.to_i

area_sq_meter = (room_length * room_width).to_f
area_sq_ft = area_sq_meter * 10.7639

puts "The area of the room is #{area_sq_meter} sq meters (#{area_sq_ft} sq feet)"
