# basic calculator program
# asks user for two numbers
# asks for the type of operation to perform : add, subtract, multiply, divide
# display results
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(input)
  puts "=> #{input}"
end

def float?(num)
  num.to_f.to_s == num
 end 

def integer?(num) # validation of the number input by user
  num.to_i.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
 end
  
def valid_operation(op) # validation of the operator chosen by user
  %w(1 2 3 4).include?(op)
end

def op_sel(op) # to define the opeartion
  answer = case op
           when '1'
            'Addition'
           when '2'
            'subtraction'
           when '3'
            'Multiplication'
           when '4'
            'Division'
          end
  answer      
end

prompt(MESSAGES['welcome'])
user = ''

loop do # to check if user entered name or not
  user = gets.chomp
  if user.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end
prompt("#{user}, welcome to the calculator")

loop do # main loop of the calculator
  number1 = ''

  loop do # loop to validate first number
    prompt(MESSAGES['1_st'])
    number1 = Kernel.gets().chomp()
    if number?(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end
  number2 = ''
  loop do # loop to validate second number
    prompt(MESSAGES['2_nd'])
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
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
      prompt(MESSAGES['valid_oper'])
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

  prompt(MESSAGES['repeat'])
  reply = gets.chomp
  break unless reply.downcase.start_with?('y')
end
prompt(MESSAGES['goodbye'])
