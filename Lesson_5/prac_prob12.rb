# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash 
# where the key is the first item in each sub array and the value is the second item.



arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

new_hash = arr.each_with_object({}) do |array, hash|
  counter = 0
  hash[array[counter]] = array[counter + 1]
end

p new_hash

