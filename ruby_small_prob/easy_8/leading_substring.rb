# My solution
# def leading_substrings(str)
#   arr = []
#   1.upto(str.size) do |count|
#     arr << str.slice(0, count)
#   end
#   arr
# end

# LS solution
def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |count|
    result << str[0..count]
  end
  result
end



p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']