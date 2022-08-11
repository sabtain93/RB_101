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

- In the above code an `Array#each` method is called on an `Array` object which is a multidimensional array `[[1, 2], [3, 4]]` 
- In each iteration each sub array is assigned to the `arr` variable.
- The `Array#first` method is called on `arr` variable which returns the 0 index element
- of the array so the return value is `1` and `3` respectively.
- `puts`  outputs the string representation of the integers
- `puts` returns `nil`, since this is the last evaluated statement within the block
- so the return value of the block is nil.
- As `Array#each` does not analyze the return value of the block and return the caller Array object which is `[[1, 2], [3, 4]]`.