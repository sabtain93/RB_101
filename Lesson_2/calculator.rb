# basic calculator program
# asks user for two numbers
# asks for the type of operation to perform : add, subtract, multiply, divide
# display results

Kernel.puts("welcome to the calculator")

Kernel.puts("Enter the first number: ")
number1 = Kernel.gets().chomp()

Kernel.puts("Enter the second number: ")
number2 = Kernel.gets().chomp()

Kernel.puts("Select the operation to be performed: 1) Add, 2) Subtract 3) Multiply, 4) Divide")
number3 = Kernel.gets().chomp()

if number3 == '1'
	answer = number1.to_i() + number2.to_i()
elsif number3 == '2'
	answer = number1.to_i() - number2.to_i()
elsif number3 == '3'
	answer = number1.to_i() * number2.to_i()
else
	answer = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is : #{answer}")

 