ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

minimum_age = ages["Herman"]
ages.each do |_, value|
  if value <= minimum_age
    minimum_age = value
  end
end
p minimum_age

# Alternate solution

p ages.values.min
