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

output will be `18`, `7`, `12`.
value of `my_arr` is the the return value of `each` method invoked on the multisimensional array `[[18, 7], [3, 12]]`, as `each` does not care for the blocks return value and returns the calling collection so the array `[[18, 7], [3, 12]]` will be returned by it. So `my_arr` will be initalized to the multidimensional array `[[18, 7], [3, 12]]`.

`each` is invoked on the mutidimesional array and each sub array is passed into the block and is assigned to the block's local variable `arr`.


