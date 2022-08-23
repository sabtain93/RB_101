a = %w(a b c d e)
#puts a.fetch(7) # index error
puts a.fetch(7, 'beats me') # outputs `beats me`
puts a.fetch(7) { |index| index**2 } # outputs `49`