=begin
Write a method that determines the mean (average) of the three scores passed to it
,and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'

Tested values are all between 0 and 100.
There is no need to check for negative values or values greater than 100.
=end

def find_avg(arr)
  arr.reduce(:+) / arr.size
end


def get_grade(num_1, num_2, num_3)
  grade_arr = [num_1, num_2, num_3]

  avg = find_avg(grade_arr)
  p avg

  case 
  when avg >= 90 && avg <= 100
    "A"
  when avg >= 80 && avg < 90
    "B"
  when avg >= 70 && avg < 80
    "C"
  when avg >= 60 && avg < 70
    "D"
  when avg >= 80 && avg < 90 
    "F"
  end
end


# LS solution
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end


p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"