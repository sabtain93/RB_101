=begin

Problem:
--------------------------------------------------------
Build a program that displays when the user will retire 
and how many years she has to work till retirement.
--------------------------------------------------------

P Understanding the problem
-----------------------------------------
Explicit requirements:
- output: string which will include the 
            - the retirement year
            - the years the user will work
Implicit requirements
- Input: 1.Integer for current age
         2.Integer for age of retirement
- Output: string for the current year
-----------------------------------------

E Examples:
-----------------------------------------
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
-----------------------------------------

D Data structures
-------------------
- output as string
- input integers
-------------------

A Algorithm
----------------------------------------------------------------
- get the user current age
- get the age at which the they want to retire
- calculate the current year
- calculate the year they will retire in
- calculate the years they have to work till they retire
- print the current year, the year of reetirement and the number
of years they have to work till the year of retirement.
------------------------------------------------------------------

I Implementation
------------------------------------------------------------------------
- to calculate the current year Time calss methods will be used
- calculate the difference of the user age and the age they want to
retire in.
-add the difference to the current year to find the year they will retire
in.
---------------------------------------------------------------------------

C code

=end

print "Enter your current age: "

current_age = gets.chomp.to_i

print "Enter the age you want to retire in: "

retirement_age = gets.chomp.to_i

current_year = Time.now.year

work_years = retirement_age - current_age

retirement_year = work_years + current_year


puts "It is #{current_year}. You will retire in #{retirement_year}"
puts "You have only #{work_years} years of work to go!"
