arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted_arr = arr.sort_by do |sub_arr|
  sub_arr.select do |items|
    items.odd?
  end
end
p sorted_arr