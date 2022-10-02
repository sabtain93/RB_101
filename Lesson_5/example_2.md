```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]
```
`map` is called on the nested array `[[1, 2], [3, 4]]`. Each array is passed into the block and is assigned to the block's local variable `arr`. within the block `Array#first` method is called on `arr`. The `Array#first` method returns the `0` index element of the current array which in our case will be the integers `1` and `3` respectively. Then `puts` is invoked and the return value of `arr.first` is passed in as an argument to it. `puts` will output `1` and `3` and returns `nil`, which is the blocks return value, as it is the last statement evaluated inside the block. `map` evaluated the blocks return value and performs transformation based on it, in our case `map` will return a new array with `nil` as its elements `[nil, nil]`.
