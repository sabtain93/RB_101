# question:  select the key-value pairs where the value is 'Fruit'.

# Rules:
# implicit:
#        - input is a hash, which is pre defined
#        - output is a hash based on criteria 
#          that value is  'fruit'
#        - create a method for the selction

# Algorithm:
# ==========
# - create a local variable array 'all_keys'
# - store the keys of the hash in 'all_keys'
# - create an empty hash 'selected_value'
# - create a 'counter variable' equal to 0
# - iterate over the 'all_keys'
# - compare each value 
# - if the value is equal to 'Fruit'
# - append the selected_value hash
# - end loop when all the valuesd are checked
# - return the selected_value hash


def select_fruit(input_hash)

  all_keys = input_hash.keys
  selected_values = {}
  counter = 0

  loop do
    break if counter > input_hash.size

    if input_hash[all_keys[counter]] == 'Fruit'
      selected_values[all_keys[counter]] = 'Fruit'
    end

    counter += 1  

  end

  selected_values
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}