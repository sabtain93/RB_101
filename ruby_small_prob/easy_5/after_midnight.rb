=begin
The time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour 
format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

P - [Understand the] Problem
input: signed integer
output: string('hh:mm')

rules:
- the integer passed represents minutes before or after midngiht
- if the integer is negative the time is before midnight(23:60 - time)
- if the integer is positive the time is after midnight(00:00 + time)
- 1440 minutes is one day

E - Examples / Test cases



D - Data Structure
string
integer



A - Algorithm
check if the time is between 0 and 1440
- find the hrs and mins and add the hrs to 00 and mins to 00
check if the time is between -1440 and 0
- find the hrs and the mins and minus the hrs from 23 and mins from 60
check if the  time is greater than and equal to 1440
- find the days and the mins by / by 1440
- find the hrs and mins and add the hrs to 00 and mins to 00
check if the time is less than and equal to -1440
- make the time positive
- find the days and the mins by / 1440
- use the mins to find hrs and mins by /60
- find the hrs and the mins and minus the hrs from 23 and mins from 60


C - Code



=end
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440
# HOURS_PER_DAY = 23

# def time_of_day(mins)
#   if mins >= 0 && mins <= 1439
#     hr, min = mins.divmod(60)
#     format('%02d:%02d', hr, min)
#   elsif mins > -1440 && mins < 0
#     mins = -1 * mins
#     hr, min = mins.divmod(60)
#     hr = HOURS_PER_DAY - hr
#     min = MINUTES_PER_HOUR - min
#     format('%02d:%02d', hr, min)
#   elsif mins >= 1440
#     min = mins % MINUTES_PER_DAY
#     hr, min = min.divmod(60)
#     format('%02d:%02d', hr, min)
#   elsif mins <= -1440
#     mins = -1 * mins
#     min = mins % MINUTES_PER_DAY
#     hr, min = min.divmod(60)
#     hr = HOURS_PER_DAY - hr
#     min = MINUTES_PER_HOUR - min
#     format('%02d:%02d', hr, min)
#   end
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end
  p minutes
  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

#p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
#p time_of_day(35) == "00:35"
p time_of_day(1437) #== "00:03"
#p time_of_day(3000) == "02:00"
#p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"