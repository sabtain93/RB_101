=begin
Question:
Write a method that returns true if its integer argument is
palindromic, false otherwise. A palindromic number reads
the same forwards and backwards.

Problem:
Explicit requirements:
input: Integers
output: true if the integer is a plaindrome, fasle if not

Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

Data-structure:
input: Integer
output: true, false

=end

def palindrome?(str)
  str == str.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true