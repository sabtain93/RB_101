VALID_CHOICE = ['r', 'p', 's', 'sp', 'l']

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  win_cond = { 's' => ['p', 'l'],
               'r' => ['l', 's'],
               'p' => ['r', 'sp'],
               'sp' => ['s', 'r'],
               'l' => ['p', 'sp'] }

  a = win_cond.fetch(first)
  a.include?(second)
end

def score_counter(str, arr)
  if str == 'You win!'
    arr[0] = arr[0] + 1
  elsif str == 'Computer Win!'
    arr[1] = arr[1] + 1
  end
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

score = [0, 0]

loop do
  prompt('Welcome to rock paper scissors game')
  available_choice = <<-MSG
    Choose from one of the following
    1) Rock (type 'r')
    2) Paper (type 'p')
    3) Scissor (type 's')
    4) Spock (type 'sp')
    5) Lizard (type 'l')
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

  score_counter(result, score)
  prompt("user score: #{score[0]}")
  prompt("computer score: #{score[1]}")

  if score[0] == 3
    prompt('user is the grand winner')
    break
  elsif score[1] == 3
    prompt('computer is the grand winner')
    break
  else
    next
  end
end
prompt('GOODBYE!')
