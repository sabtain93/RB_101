flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
counter = 0
flintstones_hash = flintstones.each_with_object({}) do |value, hash|
  hash[value] = counter
  counter += 1
end
p flintstones_hash

# solution 2
flintstones_hash_2 = {}
flintstones.each_with_index do |value, index|
  flintstones_hash_2[value] = index
end
p flintstones_hash_2  
