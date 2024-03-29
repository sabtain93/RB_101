=begin
Problem:

As seen in the previous exercise, the time of day can be represented as the number of
minutes before or after midnight. If the number of minutes is positive, the time is after
midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of
minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.
Disregard Daylight Savings and Standard Time and other irregularities.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

P - [Understand the] Problem
input: string(time 24 hr format)
output: Integer(minutes)

E - Examples / Test cases



D - Data Structure
array of strings
integer


A - Algorithm
after_midnight:
- analyze the numeric value of the string
- add the minutes to the (hours*minutes)

before_midnight:
- analyze the numeric value of the string
- minus the hours from 23 and minus the minutes from 60
-add the hours * 60 to minutes



C - Code

=end
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 23
# MINUTES_PER_DAY = 1440

# def after_midnight(time_str)
#   time_arr = time_str.split(':').map {|str| str.to_i}
#   #return 0 if time_arr[0] == 24
#   ((time_arr[0] * MINUTES_PER_HOUR) + time_arr[1]) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   time_arr = time_str.split(':').map {|str| str.to_i}
#   return 0 if time_arr[0] == 24 || time_arr[0] == 0
#   minutes = ((HOURS_PER_DAY - time_arr[0]) * MINUTES_PER_HOUR) + (MINUTES_PER_HOUR - time_arr[1])
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0


HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p after_midnight('13:00')
p before_midnight('13:00')