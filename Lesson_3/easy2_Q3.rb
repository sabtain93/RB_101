ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

#ages.store("Marilyn", 22)
#ages.store("spot", 237)
ages.merge!(additional_ages)

p ages 
