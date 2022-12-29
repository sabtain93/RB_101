
def is_double?(num)
  num_str = num.to_s
  lhs = num_str[0..(num_str.size/2)-1]
  rhs = num_str[num_str.size/2..-1]
  if lhs == rhs
    true
  else
    false
  end
end


def twice(num)
  if num.to_s.size.even?
    if is_double?(num)
      num
    else
      num * 2
    end
  else
    num * 2
  end
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10