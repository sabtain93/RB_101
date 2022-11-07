```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```
# question: Map out a detailed breakdown for the above example using the same approach as the previous two examples. What do you think will be returned and what will be the side-effects?

`map` method is invoked on the nested array `[[1, 2], [3, 4]]`. Each nested array is passed into the block and is assigned to the block's local variable `arr`. inside the block on `line 3` `puts` method is invoked and the return value of `arr.first` is passed to it as an argument. `Array#first` method returns the `0` index element the current array which in this case will be the integer `1` and `3` respectively. Then `puts` outputs the string representation of the integer and returns `nil`. On `line 4` again `Array#first` method is called on `arr` which will return integers `1` and `3` respectively and this will also be the blocks return value as it's the last statement evaluated inside the block.  `map` returns a new array containing the objects returned by the block on each iteration and so in this case the map returns a new array `[1,3]`.

