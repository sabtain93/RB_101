
```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

`select` method is invoked on the array of hashes. Each hash is passed to the block and is assigned to the block's local varibale `hash`. Inside the block `Hash#all?` is invoked on `hash` which references to hashes `{ a: 'ant', b: 'elephant' }` and `{ c: 'cat' }` respectively. `all?` method returns `true` if for all the elements of the calling object the block returns a truthy value and if even for one element the block returns a falsy value then `all?` will return `false`. Inside the block the respective hash key string representaion refrenced by `key` is evaluated for equality with the `0` index character of the string referenced by `value`. For the `hash` value `{ a: 'ant', b: 'elephant' }` the `all?` returns `false` and `true` for the `hash` value `{ c: 'cat' }` and will be the outer block's return value as it is the last statement evaluated. `select` method evaluates the truthiness of the blocks return value and perform selection based on it. `select` will return a new array with the selected elements which will be `[{ c: 'cat' }]`.