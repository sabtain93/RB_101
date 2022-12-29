# my solution
# def sequence(num)
#   result = []
#   (1..num).each { |number| result << number }
#   result
# end

# LS solution
# def sequence(num)
#   (1..num).to_a
# end

# Furthure exploration
def sequence(num)
  num > 0 ? (1..num).to_a : (num..-1).to_a
end

p sequence(-5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]