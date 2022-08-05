flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
index_no = 0
flintstones.each_with_index do |value, idx|
  if value[0, 2] == 'Be' # the slice method is used to check the starting letters 
    index_no = idx
  end 
end 
p index_no