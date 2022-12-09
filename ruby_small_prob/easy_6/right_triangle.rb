

def triangle(num)
  i = 0
  loop do
    i += 1
    puts " " * (num - i) + "*" * (i)
    break if num == i
  end
end






triangle(5)

#     *
#    **
#   ***
#  ****
# *****


triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********