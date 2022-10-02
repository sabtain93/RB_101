```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

# Question: What will the return value be in this example? 

`[[2, 4], [6, 8]]` is returned.

`map` is called on the multidimensional array. Each sub-array is passed into the block and is assigned to the block's local variable `arr`. Inside the block `map` method is invoked on `arr` which references array `[1, 2]`, `[3, 4]` respectively. On each iteration the elements of `arr` are passed to the block and assigned to the block's local variable `num`. Inside the block `num * 2` is evaluated and returns `2`, `4`, `6`and `8` respectively which is returned by the block as it is the last expression evaluated. `map` performs trasnformation based on the the block's return value and return new arrays `[2, 4]` and `[6, 8]` which will be the outer block's return value respectively. The outer `map` method evaluates the return value of the block and perform trasnformation based on it. The outer `map` method will return a new array `[[2, 4], [6, 8]]`.
