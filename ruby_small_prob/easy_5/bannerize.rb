=begin
Problem:
Write a method that will take a short line of text, and print it within a box.

Examples:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

algo:
define the string for the box
extended the box with respect to the length of the str passed
return the box

=end
# MY solution

# STR_1 = "+"
# STR_2 = "-"
# STR_3 = "|"

# def print_in_box(str)
#   puts STR_1 + STR_2.rjust(str.length + 2, STR_2) + STR_1
#   puts STR_3 + " ".rjust(str.length + 2, " ") + STR_3
#   puts "#{STR_3} #{str} #{STR_3}"
#   puts STR_3 + " ".rjust(str.length + 2, " ") + STR_3
#   puts STR_1 + STR_2.rjust(str.length + 2, STR_2) + STR_1
# end

# LS solution
# def print_in_box(str)
#   horizontal_rule = "+#{'-'  * (str.length + 2)}+"
#   empty_line = "|#{" " * (str.length + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{str} |"
#   puts empty_line
#   puts horizontal_rule
# end


# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world") 