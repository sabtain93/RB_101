=begin
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

=end

DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7',
8 => '8', 9 => '9'}

def integer_to_string(int)
  arr_1 = int.digits.reverse

  str_arr = arr_1.map { |n| DIGITS[n] }
  str_arr.join
end

def signed_integer_to_string(int)
  case 
  when int < 0 then '-' + integer_to_string((-1 * int))
  when int > 0 then '+' + integer_to_string(int)
  else               integer_to_string(int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'