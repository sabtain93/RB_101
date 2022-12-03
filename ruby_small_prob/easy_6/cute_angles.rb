=begin
Porblem:
Write a method that takes a floating point number that represents an angle 
between 0 and 360 degrees and returns a String that represents that angle in degrees,
minutes and seconds. You should use a degree symbol (°) to represent degrees,
a single quote (') to represent minutes, and a double quote (") to represent seconds.
A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"
You should use two digit numbers with leading zeros
 when formatting the minutes and seconds, e.g., 321°03'07".

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

P - [Understand the] Problem
input: float(an angle in degrees between 0 - 360)
output: string (represents angles in degrees, minutes, and seconds)

rules:
change the float input into degrees, minutes and seconds
use degree symbol (°) for degrees
use a single quote (') to represent minutes
use double quote (")
use 2 digit formatting for minutes and seconds

E - Examples / Test cases



D - Data Structure
integer
float
string to output

A - Algorithm
- calculate the degrees from the float input
- calulate the minutes and the seconds 
- format the degrees, minutes and seconds in a string
-return the string

C - Code

=end
# DEGREE = "\xC2\xB0" #degree symbol

# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTES = 60

# def dms(deg_float)
#   deg = deg_float.to_i
#   minutes_seconds = (deg_float - deg).round(2)
#   minutes = (minutes_seconds * MINUTES_PER_DEGREE).to_i
#   seconds = (((minutes_seconds * MINUTES_PER_DEGREE) - minutes) * SECONDS_PER_MINUTES).round(1).to_i
#   puts "%(#{deg}#{DEGREE}" + minutes.to_s.rjust(2, '0') + "'" + seconds.to_s.rjust(2, '0') + "\")" 
# end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE)
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

