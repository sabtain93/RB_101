=begin
Question:
Write another method that returns true if the string passed
as an argument is a palindrome, false otherwise.
This time, however, your method should be case-insensitive,
and it should ignore all non-alphanumeric characters.
If you wish, you may simplify things by calling the palindrome?
method you wrote in the previous exercise.

Problem:
Explicit:
Input: string
ouput: boolean
case-insensitive, ignore non-alphanumeric characters

Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

Data structures
input: string
output: boolean

Algorithm
- remove all non-alphanumeric characters from the input string
- check if the string is palindrome
-if palindrome
  - return true
- else
  - return false

=end

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  palindrome?(str.downcase.delete('^a-z0-9'))
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false