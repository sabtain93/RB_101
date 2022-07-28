advice = "Few things in life are as important as house training your pet dinosaur."

#arr = advice.split

#arr[6] = 'urgent'

#advice = arr.join(' ')

advice.gsub!('important', 'urgent')

puts advice


