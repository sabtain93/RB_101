=begin
Problem:
---------------------------------------------------------------------
Write a program that will ask for user's name.
 The program will then greet the user.
 If the user writes "name!" then the computer yells back to the user.
---------------------------------------------------------------------

P Understanding the problem
--------------------------------------------------------------
Explicit requirements:
- Input:string
- Output:string

E Examples
---------------------------------------------------------------
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
---------------------------------------------------------------

D Data Structures
---------------------------------------------------------------
Strings
---------------------------------------------------------------

A Algorithm:
---------------------------------------------------------------
- get name from user
- if name has `!` at the end
  -print greeting and scream back 
-if not then
  -print greeting
---------------------------------------------------------------

C Code
=end

print "what is your name: "
name = gets.chomp

if name.chomp!('!')
  puts "HELLO #{name.upcase}, WHY ARE WE SCREAMING!"
else
  puts "Hello #{name}"
end