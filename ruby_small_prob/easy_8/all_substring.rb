
# My solution
# def substrings(str)
#   result = []
#   starting_idx = 0
#   limit = str.size
#   loop do
#     end_idx = 1
#     loop do
#       result << str[starting_idx, end_idx]
#       break if end_idx >= limit
#       end_idx += 1
#     end
#     break if starting_idx >= (str.size - 1)
#     starting_idx += 1
#     limit -= 1
#   end
#   result
# end

# LS solution
def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |count|
    result << str[0..count]
  end
  result
end

def substrings(str)
  result = []
  (0...str.size).each do |starting_idx|
    this_substring = str[starting_idx..-1]
    result.concat(leading_substrings(this_substring))
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]