```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

# Question: What will the return value be in this example? 

## Return value:
- [[2, 4], [6, 8]]

## Breakdown:

- `Array#map` is called on the multidimensional array `[[1, 2], [3, 4]]`.
- which iterates on each subarray beign assigned to the block local variable `arr`.
- The inner map method iterates on each element of the array contained by the `arr` varibale.
- Each element of the `arr` variable is assigned to the `num` local variable.
- The second map method block return value is the return value of the operation performed 
  which is `num * 2`.
- For the first iteration of the outer block the inner block returns value of `num, * 2` which
  is `2 and 4` will be analyzed by the inner map method and transformation is performed based
  on the return value and a new array is returned by the inner map method which is `[2, 4]`.
- For the second iteration of the outer block the inner block returns value of `num * 2` which
  is `6 * 8` which will be analuzed by the inner map method and transformation will be done
  based on the return value and a new array is returned by the inner map which will be `[6, 8]`
- The outer map method will analyze the return value of the block, which is the return value of
  the inner map method as it the last expression evaluated.
- So the outer map will perform trasnformation and retrurn a new array which is 
  `[[2, 4], [6, 8]]`.
