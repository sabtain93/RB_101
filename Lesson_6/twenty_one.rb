require 'pry'

SUITS = ['H', 'D', 'C', 'S']
VALUES = ['2','3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def play_again?
  puts "Do want to play again: (Y/n)"
  answer = gets.chomp
  answer.downcase.start_with?("y")
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select {|value| value == 'A' }.count.times do   
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_results(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def diplay_results(dealer_cards, player_cards)
  detect_results(dealer_cards, player_cards)

  case detect_results
  when :player_busted
    puts " You busted! dealer wins!"
  when :dealer_busted
    puts "Dealer busted! You win"
  when :player
    puts "You win!"
  when :dealer
    puts "Dealer wins!"
  end
end

player_cards = []
dealer_cards = []
cards = []

loop do 
  cards = initialize_deck

  2.times do
    player_cards << cards.pop
    dealer_cards << cards.pop
  end

  puts "Player cards are #{player_cards[0]}, #{player_cards[1]} total value is #{total(player_cards)}"
  puts "Dealer cards are #{dealer_cards[0]}, ?"
  loop do
    answer = ''
    loop do
      puts "Players turn: Do you want to (h)it or (s)tay"
      answer = gets.chomp
      break if ['h', 's'].include?(answer)
      puts "Kindly enter 'h', or 's'"
    end

    if answer == 'h'
      player_cards << cards.pop
      puts "Your cards are #{player_cards}, your total is #{total(player_cards)}"
    end

    break if answer == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_results(dealer_cards, player_cards)
    play_agin? ? next : break
  else
    puts "You stayed at #{total(player_cards)}"
  end

  #dealer turn
  loop do
    break if total(dealer_cards) >= 17

    puts "dealer hits!"
    dealer_cards << cards.pop
    puts "Dealer cards are now #{dealer_cards}"
  end

  if busted?(dealer_cards)
    display_results(dealer_cards, player_cards)
    play_again? ? next : break
  else
    puts "dealer stays at #{total(dealer_cards)}"
  end

  puts "=========================================================="
  puts "Dealer has #{dealer_cards}, total: #{total(dealer_cards)}"
  puts "Player has #{player_cards}, total: #{total(player_cards)}"
  puts "=========================================================="

  display_results(dealer_cards, player_cards)
  break unless play_again?
end