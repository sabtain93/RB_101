require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 7], [7, 8, 9],
                 [1, 4, 7], [2, 5, 8], [3, 6, 9],
                 [1, 5, 9], [3, 5, 7]]
INTIAL_MARKER = ' '
USER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "#{msg}"
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
  brd.keys.select { |num| brd[num] == INTIAL_MARKER }
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INTIAL_MARKER }
  new_board
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "kindly choose a square(#{empty_spaces(brd).join(', ')})"
    square = gets.chomp.to_i
    break if empty_spaces(brd).include?(square)
    prompt "Enter a valid choice"
  end
  brd[square] = USER_MARKER
end

def computer_places_piece!(brd)
  square = empty_spaces(brd).sample
  brd[square] = COMPUTER_MARKER
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

loop do
  board = intialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "Its a tie!"
  end
  prompt "Do you want to play gain? (Y/N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

system 'clear'
puts ""
prompt "Thank You for playing tic tack toe!"
puts ""
