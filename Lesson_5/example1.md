```ruby
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
<!-- # 1
# 3
# => [[1, 2], [3, 4]]
 -->
```
# What's happening in this, seemingly simple, piece of code? Take it apart and try to describe every interaction with precision.

the `each` method is called on the nested array `[[1, 2], [3, 4]]`. Each array is passed into the block on each iteration and assigned to block's local variable `arr`. Within the block `Array#first` method is invoked on `arr`. The `Array#first` method returns the `0` index element of the current array, which in this case will be the integers `1` and `3` respectively. `puts` method is invoked and the return value of `arr.first` is passed to it as an argument. `puts` will output `1` and `3` to the console and returns `nil` which is the blocks return value, as this is the last statement evaluated by the the block. `each` method does not care for the blocks return value and returns the calling collection which in this case is `[[1, 2], [3, 4]]`.
