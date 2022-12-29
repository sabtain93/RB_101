# My solution
# def uppercase?(str)
#   characters = []
#   str.chars.each do |char|
#     characters << char if char =~ /[a-z]/i
#   end
#   characters.all? { |char| char.upcase == char }
# end

# LS solution
def uppercase?(str)
  str == str.upcase
end



p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true