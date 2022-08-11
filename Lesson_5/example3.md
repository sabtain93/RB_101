```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```
# question: Map out a detailed breakdown for the above example using the same approach as the previous two examples. What do you think will be returned and what will be the side-effects?

- `Array#map` method is called on a multidimensional array.
- Each sub array is assigned to the local variable of the block `arr`
- The `Array#first` method is called on the `arr` variable which returns the `0` index
  element of the subarray respectively.
- The `puts` method is called on the return value of `arr.first` . which is `1` and `3`
  respectively.
- The puts method outputs the string representation of the integers returned by `arr.first`
  and returns `nil`
- In the last line `Array#first` method is called on `arr` which returns the 0 index element
  of the subarray which are `1` and `3` respectively.
- Sine the `arr.first` is the last line evaluated in the block so the `1` and `3` are the 
  return value of the block.
- As `Array#map` method analyzes the return value of the block and performs transformation 
  based on the return value of the block.
- So the return value of map is a new array `# => [1,3]`.