=begin
Create a simple tip calculator. 
The program should prompt for a bill amount and a tip rate.
The program must compute the tip and then display
both the tip and the total amount of the bill.

P Understand the problem

Explicit requirements:
- input:1. integer (bill amount)
        2. integer (tip percentage)
- Output:1. float (tip)
         2. float (total bill = bill + tip)

Implicit requirement:
- inputs are integers
- outputs are floats

E Examples:
-----------------------------------
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
------------------------------------

D Data Structures

inputs will be integers
outputs wil be floats

A Alogrithm:
- get bill amount from user
- get tip percentage from user
- calculate the tip
- calculate the total bill
- print the tip and the total bill amount

Implementation:
- calculating tip
- tip_amt = (bill_amt) * (tip_per / 100)

=end

def calculate_tip(bill_amt, tip_per)
  tip_amt = (bill_amt * (tip_per / 100)).round(1)
  tip_amt
end

def total_bill(bill_amt, tip)
    total = (bill_amt + tip).round(1)
    total
end



puts "Enter the bill amount: "
bill_amt = gets.chomp.to_f

puts "Enter the tip percentage"
tip_per = gets.chomp.to_f

tip = calculate_tip(bill_amt, tip_per)
total = total_bill(bill_amt, tip)

puts "The tip is #{tip}"
puts ""
puts "The total is #{total}"