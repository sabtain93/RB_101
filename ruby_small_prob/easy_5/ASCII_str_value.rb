=begin
P - [Understand the] Problem
input: string
output: intger(ASCII string value)

E - Examples / Test cases
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0


D - Data Structure
array
integer


A - Algorithm
- seprate the string into single characters and put it in an array
- iterate through the array
  - find the ASCII value of the current character
  - add the ASCII values.


C - Code


=end

def ascii_value(str)
  return 0 if str.empty?
  str.chars.map {|char| char.ord}.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
