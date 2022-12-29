
def buy_fruit(fruit_list)
  fruit_list.map do |fruit, qty|
    arr = []
    qty.times do
      arr << fruit
    end
    arr.join(' ')
  end
end

# LS solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]