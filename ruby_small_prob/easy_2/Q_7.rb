=begin
Problem:
----------------------------------------------------------------
Print all even numbers from 1 to 99,
inclusive, to the console, with each number on a separate line.
-----------------------------------------------------------------

P Understand the problem
----------------------------------------------
Explicit requirements:
-Input: Integer
-output: integers to string
- print odd number between 1 to 99 inclusive
- print each number on seprate line
----------------------------------------------

E Examples
------------------------------------------------
------------------------------------------------

D Data structures
-----------------------------------------
Integer as input
string ouput
-----------------------------------------

A Algorithm
-----------------------------------------
- given a starting integer and end integer
- print integer value if it is even
------------------------------------------

C code

=end

1.upto(99) { |num| puts num if num.even? }