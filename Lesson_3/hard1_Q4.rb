def dot_separated_ip_address?(input_string)
  if input_string.size == 4
    dot_separated_words = input_string.split(".")
    4.times do
      word = dot_separated_words.pop
      if is_an_ip_number?(word)
        next
      else
        return false
        break  
      end
    end
    return true
  else
    return false      
end