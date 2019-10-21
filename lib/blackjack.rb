def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = deal_card
  y = deal_card
  sum = x + y
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(card_total)
  prompt_user
  x = get_user_input
  if x == 'h'
    card_total += deal_card
  elsif x == 's'
    card_total
  else
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  x = display_card_total
    if x > 21
      end_game
    else 
      hit?
    end
end
    
