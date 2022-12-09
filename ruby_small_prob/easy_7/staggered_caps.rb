=begin
Problem:
Write a method that takes a String as an argument, and returns a new String that contains the
original value using a staggered capitalization scheme in which every other character is capitalized,
and the remaining characters are lowercase. Characters that are not letters should not be changed,
but count as characters when switching between upper and lowercase.

Examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

P - [Understand the] Problem
input:string
output:string

rules:
return a new string
should have the same value but using staggered capitalization
staggered capitalization(every other character is acapitalized, remaining characters are lowercase)
characters that are not 

E - Examples / Test cases

D - Data Structure
array
string

A - Algorithm
seprate the characters and store them in a list
iterate through the list
check the index
if odd
  check if it is alphabet
    capatilize it
if even
  check if it is alphabet
    lowercase it
combine the list of transformed characters
return the new string

C - Code
=end
# My Solution
# def staggered_case(str)
#   str_arr = str.chars
#   result = []
#   index = 0
#   loop do
#     if index.even?
#       result[index] = str_arr[index].upcase if str_arr[index] =~ /[A-Za-z]/
#       result[index] = str_arr[index] if str_arr[index] =~ /[^A-Za-z]/
#     elsif index.odd?
#       result[index] = str_arr[index].downcase if str_arr[index] =~ /[A-Za-z]/
#       result[index] = str_arr[index] if str_arr[index] =~ /[^A-Za-z]/
#     end
#     index += 1
#     break if index >= str_arr.size
#   end
#   result.join
# end

#LS solution

def staggered_case(str)
  result = ''
  need_upper = true

  str.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

#Further exploration

def staggered_case(str, need_upper)
  result = ''

  str.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
    result
end



p staggered_case('I Love Launch School!', false) #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 NuMbErS'