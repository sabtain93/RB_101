# "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# 8-4-4-4-12
def hex_4
  str= ''
  4.times do
    char = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'].sample
    str << char
  end
  str
end

def hex_12
  str =''
  12.times do
    char = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'].sample
    str << char
  end
  str
end

def hex_8
  str = ''
  8.times do
    char = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'].sample
    str << char
  end
  str
end


def uuid
  str1= hex_8
  str2 = hex_4
  str3 = hex_4
  str4 = hex_4
  str5 = hex_12

  str1 + "-" + str2 + "-" + str3 + "-" + str4 + "-" + str5
end



p uuid