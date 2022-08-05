# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []



# input: String
# output: array (contain string objects which are palindrome)
# rules: 
#       
#       Explicit requirements:
#               - return only the substrings which are palindromes 
#               - palindrome words are case sensitive('aba' is palindrome, 'abA' is not)
#       
#       Implicit requirements
#               - if no palindrome word is detected return an empty array
#               - if an empty string is passed return an empty array.
#
# Algorithm: 
# 
# substrings method
# =================
# - initialize a 'result' array to an empty array
# - initialize starting_idx var to the value '0' for the starting index of the substring
# - start a loop that iterates over 'starting_idx' from '0' to length of string minus 2
#   - initialize variable 'num_chars' (value = 2) for the length of the substring
#   - start an inner loop that iterates over 'num_chars' from '2' to 'string.length - statrting_idx'
#     - extract the subtring of length 'num_chars' from 'string' starting at 'starting_idx'
#     - append the extracted substring to the 'result' array
#     - increment the 'num_chars' variable by '1'
#   - end the inner loop
#   - increment the 'starting_idx' variable by '1'
# - end the outer loop
# - return the result array
# 
# 
#  is_palindrom? method
#  ====================
#  - inside the is_palindrome? method check the value of the 'string' with its reverse value
#  - using the String#reverse method
#
# palindrome_substrings method
# ===========================
# - initialize a 'result' array to an empty array     
#  - create a sub_string array that contains all of the 
#    substrings conatined by the input string that are 
#    atleast 2 chars long.
#  - loop through the words in the substring array.
#  - if the word is a plaindrome append it to result array
#  - return the result array







def is_palindrome?(str)
  str == str.reverse
 end   

def substrings(string)
  result = []
  starting_idx = 0

  while starting_idx <= string.length - 2
    num_chars = 2
    while num_chars <= string.length - starting_idx
      result << string[starting_idx, num_chars]
      num_chars += 1
    end
    starting_idx += 1
  end
  result
end

def palindrome_substrings(str)
  result = []
  sub_strings = substrings(str)
  sub_strings.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end


# p palindrome_substrings("supercalifragilisticexpialidocious")
# p palindrome_substrings("abcddcbA")
# p palindrome_substrings("palindrome")
p palindrome_substrings("")

