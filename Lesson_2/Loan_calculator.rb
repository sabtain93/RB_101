# RB-101 Loan calculator
# Three inputs 1) loan amount, 2) APR 3) loan duration 
# monthly interest rate to be calculated from APR
# loan duration to be calculated in months
# apply monthly payments formula
# m = p * (j / (1 - (1 + j)**(-n))) formula to find the monthly payments
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def integer?(num)
	num.to_i.to_s == num
end

def float?(num)
	num.to_f.to_s == num
end

def number?(num)
	integer?(num) || float?(num)
end

def prompt(input)
	puts "=> #{input}"
end

def interest_rate(apr)
	monthly_rate = (apr / 100) / 12
	monthly_rate
end

def loan_dur (years)
	months = years * 12
end

def formula(p, j, n)
	m = p * (j / (1 - (1 + j)**(-n)))
end

prompt('Welcome to loan calulator!')

prompt('Kindly enter the loan duration in years, (starting from 1)')

loan_duration = ''

loop do
	loan_duration = gets.chomp
	if number?(loan_duration) && loan_duration != '0'
		break
	else
		prompt('Invalid input make sure number greater than or equal to 1')
	end		
end
duration_in_months = loan_dur(loan_duration.to_f)

prompt('Kindly enter the APR (annual percentage rate): ')
annual_per_rate = ''

loop do
	annual_per_rate = gets.chomp
	if number?(annual_per_rate) && annual_per_rate != '0'
		break
	else
		prompt('Invalid input for APR')
	end		
end
monthly_rate = interest_rate(annual_per_rate.to_f)

prompt('Kindly enter the Loan amount: ')
loan_amt = ''

loop do
	loan_amt = gets.chomp
	if number?(loan_amt) && loan_amt != '0'
		break
	else
		prompt('Invalid input for loan amount')
	end		
end

monthly_payment = formula(loan_amt.to_i, monthly_rate, duration_in_months)

prompt("Your monthly payment is calculated to #{monthly_payment}")





