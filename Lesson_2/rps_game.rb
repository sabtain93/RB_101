VALID_CHOICE = ['rock', 'paper', 'scissor']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'scissor' && second == 'paper') ||
    (first == 'rock' && second == 'scissor') ||
    (first == 'paper' && second == 'rock')
end

def display_result(player, computer)
  if win?(player, computer)
    'You win!'
  elsif win?(computer, player)
    'Computer Win!'
  else
    'Its a draw'
  end
end

loop do
  prompt('Welcome to rock paper scissors game')
  available_choice = <<-MSG
    Choose from one of the following
    1) Rock
    2) Paper
    3) Scissor
  MSG

  prompt(available_choice)
  user_choice = ''
  loop do
    user_choice = gets.chomp
    if VALID_CHOICE.include?(user_choice)
      break
    else
      prompt('Make a valid choice')
    end
  end
  sleep(2)
  computer_choice = VALID_CHOICE.sample
  prompt("Your Choice: #{user_choice}, Computer_choice: #{computer_choice}")
  result = display_result(user_choice, computer_choice)
  prompt(result)
  prompt("Would you like to play again: press 'y' for yes or 'n' to exit")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt('GOODBYE!')
