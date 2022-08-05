# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |value, idx|
# 	if value.size >= 3
# 		flintstones[idx] = value[0, 3]
# 	end
# end
# p flintstones
# alternate solution
# 
flintstones.map!{|value| value[0, 3]}
p flintstones