def repeater(str)
  result = ""
  str.each_char do |char|
    result << char * 2
  end
  result
end



p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''