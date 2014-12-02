# Alex Graff and Patrick Kennedy
# Blackjack - forgetting the hookers and casino
# 12/2/14

require_relative 'card.rb' 
require_relative 'deck.rb' 
require_relative 'hand.rb'

require 'pry'

game_deck = Deck.new
game_deck.fill_deck
game_deck.shuffle_cards

player_hand = Hand.new
dealer_hand = Hand.new

player_hand.cards_held << game_deck.deal_card
player_hand.cards_held << game_deck.deal_card

dealer_hand.cards_held << game_deck.deal_card
dealer_hand.cards_held << game_deck.deal_card


# while (player_hand.card_total <= 21)
	player_hand.cards_held.each do |card|
		puts "Player was Dealt: #{card.value}#{card.suit}"
	end 
	puts "Players Score: #{player_hand.card_total}"
	puts "Hit or stand (H/S): "
	input = gets.chomp
	while (input.downcase != 'h' && input.downcase != 's')
		puts "Please enter H or S"
		input = gets.chomp
	end 
	
	while (input.downcase == 'h')
		# binding.pry
		player_hand.cards_held << game_deck.deal_card
		puts "Player was Dealt: #{player_hand.cards_held[-1].value}#{player_hand.cards_held[-1].suit}"
		puts "Players Score: #{player_hand.card_total}"
			if player_hand.card_total > 21
			break
		end
		puts "Hit or stand (H/S): "
		input = gets.chomp
		while (input.downcase != 'h' && input.downcase != 's')
			puts "Please enter H or S"
			input = gets.chomp
		end
	end
	if player_hand.card_total <= 21
		dealer_hand.cards_held.each do |card|
			puts "Dealer was Dealt: #{card.value}#{card.suit}"
		end 
		if dealer_hand.card_total > 16
			puts "Dealer Stands"
		end 
		while (dealer_hand.card_total < 17)
			dealer_hand.cards_held << game_deck.deal_card
			puts "Dealer was Dealt: #{dealer_hand.cards_held[-1].value}#{dealer_hand.cards_held[-1].suit}"
			if dealer_hand.card_total > 21
				puts 'Player wins, Dealer busts'
			end
			puts "Dealer's Score: #{dealer_hand.card_total}"
		end 
		if player_hand.card_total > dealer_hand.card_total
			puts 'Player wins! You can pay your mortgage!'
		else
			puts 'Player loses! SHUT UP AND TAKE MY MONEY!'
		end
	else
		puts 'Player loses! SHUT UP AND TAKE MY MONEY!'
	end  
