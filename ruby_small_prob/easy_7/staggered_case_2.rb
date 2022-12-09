
# My solution
# def staggered_case(str)
#   result = ''
#   need_upper = true
#   str.chars.each do |char|
#     if char =~ /[^A-Za-z]/
#       result += char
#       next
#     elsif need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# LS solution

def staggered_case(str)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if char =~ /[a-z]/i # the falg 'i' is used to ignore the letter case of the alphabets
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'