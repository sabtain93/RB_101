# My solution
# def penultimate(str)
#   arr = str.split(" ")
#   arr[(arr.size -2)]
# end

# LS solution
# def penultimate(words)
#   words_array = words.split
#   words_array[-2]
# end

# Further exploration
def penultimate(str)
  if str.split.size == 1
    return str
  elsif str.split.size <= 0
    return nil
  end
  str_arr = str.split
  str_arr[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'
p penultimate('')
p penultimate('last')