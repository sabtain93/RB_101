# basic calculator program
# asks user for two numbers
# asks for the type of operation to perform : add, subtract, multiply, divide
# display results
def prompt(input)
	puts "=> #{input}"
end

def valid_number(num) # validation of the number input by user
	num.to_i != 0
end

def valid_operation(op) #validation of the operator chosen by user
	%w(1 2 3 4).include?(op)
end

def op_sel(op) # to define the opeartion
	case op
		when '1'
			'Addition'
		when '2'
			'subtraction'
		when '3'
			'Multiplication'
		when '4'
			'Division'
	end					
end	

prompt('welcome to the calculator, please enter your name')
user = ''

loop do # to check if user entered name or not
	user = gets.chomp
	if user.empty?()
		prompt('enter your name')
	else
		break
	end		
end	
prompt("#{user}, welcome to the calculator")

loop do # main loop of the calculator
	
	number1 = ''

	loop do # loop to validate first number
		prompt('Enter the first number: ')
		number1 = Kernel.gets().chomp()
		if valid_number(number1)
			break
		else
			prompt('Enter a valid number')
		end	
	end
	number2 = ''
	loop do # loop to validate second number
		prompt('Enter the second number: ')
		number2 = Kernel.gets().chomp()

		if valid_number(number2)
			break
		else
			prompt('Enter a valid number')	
		end	
	end
	prompt_operator = <<-MSG
		Select the operation to be performed
			1) Add
			2) Subtract
			3) Multiply
			4) Divide
	MSG
			
	prompt(prompt_operator)
	operator = ''
	
	loop do # to validate the operator
		operator = Kernel.gets().chomp()
		if valid_operation(operator)
			break
		else
			prompt('Enter a valid operation')
		end		
	end	
	prompt("Doing #{op_sel(operator)} of #{number1} & #{number2}")

	case operator
		when '1'
			answer = number1.to_i() + number2.to_i()
		when '2'
			answer = number1.to_i() - number2.to_i()
		when '3'
			answer = number1.to_i() * number2.to_i()
		when '4'				 
			answer = number1.to_f() / number2.to_f()
	end		
	prompt("The result is : #{answer}")
	
	prompt("Would yoy like to perform another operation? (Y/N): ")
	reply = gets.chomp

	break unless reply.downcase.start_with?('y')

end

prompt('Thank you for using the calculator')




