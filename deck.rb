# Deck class  -  52 cards - array, cards remaining, fill a deck, shuffle, deal a hand, hit
# add as necessary

# require_relative('card.rb')

class Deck

	attr_accessor :deck
	def initialize
		@deck = []
	end

	def fill_deck
		x = 1
		while x < 11
			@deck << Card.new( x, '♥')
			@deck << Card.new( x, '♣')
			@deck << Card.new( x, '♠')
			@deck << Card.new( x, '♦')
			x += 1
			
		end
		
		face_cards = ['K', 'Q', 'J', 'A']
		# binding.pry
		face_cards.each do |card|
			@deck << Card.new( card, '♥')
			@deck << Card.new( card, '♣')
			@deck << Card.new( card, '♠')
			@deck << Card.new( card, '♦')
		end
		@deck
	end

	def shuffle_cards
		
		@deck.shuffle!

	end

	def deal_card
		
		@deck.pop
		
	end


end
