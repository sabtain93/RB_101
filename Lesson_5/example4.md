```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```
# Question take this code apart, just like before What will be output and what will be the value of my_arr?

## output: 
- 18
- 7
- 12

## Value of `my_arr`:
- [[18, 7], [3, 12]]

- `my_arr` is assigned to the the return value of the `Array#each` method called upon a 
  multidimensional array `[[18, 7], [3, 12]]`.
- Each subarray is assigned to the block local variable `arr`.
- `Array#each` is called upon the `arr` local variable.
- each element of the subarray is assigned to the second each block local variable `num`.
- `if` statement is evaluated in the second each block, which is appended by a condition which
  will be true if the integer contained by `num` is greater than `5`.
- The condition will return true for `18, 7, and 12` for which the `puts num` will be evaluated
- `puts` output will be the string represenation of the integers `18, 7, and 12`.
- the second `each` block return value will be nil for each num if condution is true as the
  return value of `if` is the last line evaluated which in this case is `puts`.
- For the `num` value when `3` return nil as well as when if condition is not met it returns
  `nil`.
- As each method does not analyzes the block return value
- The second `each` returns the array it was called by `[18, 7]` and `[3, 12]` respectively.
- The outer each block return value is the inner each return value.
- The outer each return value is the caller array which is `[[18, 7], [3, 12]]`.
- Which will be the value assigned to `my_arr`.