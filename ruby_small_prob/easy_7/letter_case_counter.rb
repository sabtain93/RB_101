# def letter_case_count(str)
#   hsh = { lowercase: 0, uppercase: 0, neither: 0 }
#   str.each_char do |char|
#     if (char <=> char.upcase) == 1
#       hsh[:lowercase] += 1
#     elsif ((char <=> char.upcase) == 0) && (('A'..'Z').include?(char) || ('a'..'z').include?(char))
#       hsh[:uppercase] += 1
#     else
#       hsh[:neither] += 1
#     end
#   end
#   hsh
# end

#LS solution
# UPPER_CASE = ('A'..'Z').to_a
# LOWER_CASE = ('a'..'z').to_a

# def letter_case_count(str)
#   count = { lowercase: 0, uppercase: 0, neither: 0 }
#   str.each_char do |char|
#     if UPPER_CASE.include?(char)
#       count[:uppercase] += 1
#     elsif LOWER_CASE.include?(char)
#       count[:lowercase] += 1
#     else
#       count[:neither] += 1
#     end
#   end
#   count
# end

#LS solution 2

def letter_case_count(str)
  count = {}
  characters = str.chars
  count[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  count[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  count[:neither] = characters.count { |char| char =~ /[^A-Za-z]/}
  count
end



p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }