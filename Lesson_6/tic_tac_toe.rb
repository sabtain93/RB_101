require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 7], [7, 8, 9],
                 [1, 4, 7], [2, 5, 8], [3, 6, 9],
                 [1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
USER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "#{msg}"
end

def joinor(arr, delimiter = ', ', word = 'or')
  arr1 = arr.dup
  str1 = ''
  # arr1.insert(-2, end_delimitier)
  if arr1.size == 1
    return arr1.join
  elsif arr1.size == 2
    arr1.insert(-2, word)
    return arr1.join(' ')
  else
    arr1.insert(-2, word)
    arr2 = arr1.slice!(arr1.size - 2, 2)
    arr1.each { |num| str1 << num.to_s + delimiter }

    str2 = arr2.join(' ')
    return str1 + str2
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  prompt "You are #{USER_MARKER} & Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def empty_spaces(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "kindly choose a square(#{joinor(empty_spaces(brd), '; ')})"
    square = gets.chomp.to_i
    break if empty_spaces(brd).include?(square)
    prompt "Enter a valid choice"
  end
  brd[square] = USER_MARKER
end


def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end

  # WINNING_LINES.each do |line|
  #   if brd.values_at(*line).count(USER_MARKER) == 2
  #     line.each do|num| 
  #       if brd[num] == INTIAL_MARKER
  #         return num
  #       end
  #     end
  #   end
  # end
  # nil
end


def computer_places_piece!(brd)
  square = nil
  #offense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  #defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, USER_MARKER)
      break if square
    end
  end

  if !square
    square = 5 if brd[5] = INITIAL_MARKER
  end

  if !square
    square = empty_spaces(brd).sample
  end

  brd[square] = COMPUTER_MARKER

  # if find_threat_square(brd)
  #   brd[find_threat_square(brd)] = COMPUTER_MARKER
  # else
  #   square = empty_spaces(brd).sample
  #   brd[square] = COMPUTER_MARKER
  # end
end

def board_full?(brd)
  empty_spaces(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(USER_MARKER) == 3
      return 'You'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def print_winner(user_score, computer_score)
  if computer_score == 5
    prompt "Computer is the grand winner"
  else
    prompt "You are the grand winner"
  end
end

computer_score = 0
user_score = 0
first_move = ''
loop do
  break if user_score == 5 || computer_score == 5
  board = intialize_board
    loop do
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  display_board(board)

  if detect_winner(board) == 'You'
    prompt "#{detect_winner(board)} won!"
    user_score += 1
    sleep(2)
  elsif detect_winner(board) == 'Computer'
    prompt "#{detect_winner(board)} won!"
    computer_score += 1
    sleep(2)
  else
    prompt "Its a tie!"
    sleep(2)
  end
  # prompt "Do you want to play gain? (Y/N)"
  # answer = gets.chomp
  # break unless answer.downcase.start_with?('y')
end

print_winner(user_score, computer_score)