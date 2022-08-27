=begin
Problem:
----------------------------------------------------------------
Print all odd numbers from 1 to 99,
inclusive, to the console, with each number on a separate line.
-----------------------------------------------------------------

P Understand the problem
----------------------------------------------
Explicit requirements:
-Input: range
-output: integers to string
- print odd number between 1 to 99 inclusive
- print each number on seprate line
----------------------------------------------

E Examples
------------------------------------------------
------------------------------------------------

D Data structures
-----------------------------------------
range as input
string ouput
-----------------------------------------

A Algorithm
-----------------------------------------
- given a range from 1 to 99
- iterate through the range
- print integer if it is odd
------------------------------------------

C code

=end


(1..99).each { |num| puts num if num.odd? }