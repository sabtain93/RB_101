
=begin

Write a method that takes a year as input and returns the century.
The return value should be a string that begins with the century number, and ends with st, nd, rd,
or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'


P - [Understand the] Problem
input: Integer
output: string

rules:
- return the century corresponding the year passed in
- return value is string with the appropriate suffix (eg. st, nd, rd, th)

E - Examples / Test cases



D - Data Structure
string


A - Algorithm
- compute the century from the intger value
  - check if the year value divided by 100 has a remainder
  - if yes
    -divide the year by 100 add 1 to the answer -> century
  - if no
    -divide the year by 100 -> century
- convert the integer to string
- add the appropriate suffix
  -if last two characters are 11, 12, 13
    - append 'th'
  - if last char is 1 -> append st
  - if last char is 2 -> append nd
  - if last char is 3 -> append rd
  - other than that -> append th


C - Code



=end

def century(year)
  if year % 100 == 0
    century_val = year / 100
  else
    century_val = (year / 100) + 1
  end
  century_str = century_val.to_s

  if (century_str[-2, 2] == '11') || (century_str[-2, 2] == '12') || (century_str[-2, 2] == '13')
    century_str << 'th'
  elsif century_str[-1] == '1'
    century_str << 'st'
  elsif century_str[-1] == '2'
    century_str << 'nd'
  elsif century_str[-1] == '3'
    century_str << 'rd'
  else
    century_str << 'th'
  end

  century_str
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'