# a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  current_hash = munsters[key]
  if (0..17).include?(value.first[1])
    current_hash["age_group"] = "kid"
  elsif (18..64).include?(value.first[1])
    current_hash["age_group"] = "adult"
  else
    current_hash["age_group"] = "senior"
  end
end      
p munsters