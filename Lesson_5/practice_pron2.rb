# Question: How would you order this array of hashes based on the 
# year of publication of each book, from the earliest to the latest?



books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

new_arr = books.map do |hash|
  hash.to_a
end
sorted_arr = new_arr.sort_by do |arr|
  arr.last
end
sorted_books = sorted_arr.map do |arr|
  arr.to_h
end
p sorted_books

# sorted_books = books.sort_by do |books|
#   books[:published]
# end

# p sorted_books


