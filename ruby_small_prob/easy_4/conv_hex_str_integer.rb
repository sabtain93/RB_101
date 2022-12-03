HEX = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
   '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
   'F' => 15, 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
   'f' => 15}

HEXMULTIPLIER = 16

def array_num(arr)
  sum = 0
  arr_len = arr.length

  arr.each do |num|
    arr_len -= 1
    sum += (HEXMULTIPLIER ** arr_len) * num
  end
  sum
end

def hexadecimal_to_integer(str)

  int_arr = str.chars.map { |char| HEX[char] }
  
  array_num(int_arr)

end

p hexadecimal_to_integer('4D9f') #== 19871