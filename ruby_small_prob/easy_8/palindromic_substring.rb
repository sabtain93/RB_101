=begin
Problem:
Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does
backwards. The return value should be arranged in the same sequence as the substrings appear
in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention
to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition,
assume that single characters are not palindromes.

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

P - [Understand the] Problem
input : string
output: array (palindromic substrings)

rules:
- find the palindromic substrings
- single character is not a plaindrome
- palindromes are case sensitive
- should consider all characters ('Abc-bA' is not a palindrome)
- duplicate palindromes are to be included
- a substring is conatins atleast two characters

E - Examples / Test cases

D - Data Structure
array
string
A - Algorithm
- use the all_substring method to find substring
- iterate through the list of substring and check if they are palindromes
- put the palindromes in a seprate list and return this list

C - Code
=end

def leading_substrings(str)
  result = []
  1.upto(str.size - 1) do |count|
    result << str[0..count]
  end
  result
end

def substrings(str)
  result = []
  (0...(str.size - 1)).each do |starting_idx|
    this_substring = str[starting_idx..-1]
    result.concat(leading_substrings(this_substring))
  end
  result
end

def palindromes(str)
  result = []
  substrings(str).each do |word|
    result << word if word.reverse == word
  end
  result
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']