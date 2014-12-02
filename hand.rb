# Class hand - value of hand, add to hand


class Hand
	attr_accessor :cards_held
	def initialize
		@hand_value = 0
		@cards_held = []
	end

	def card_total
		sum = 0

		@cards_held.each do |card|
			if card.value.class == Fixnum
				sum += card.value
			
			elsif card.value == 'K'
				sum += 10
			elsif card.value == 'Q'
				sum += 10
			elsif card.value == 'J'
				sum += 10
			end
			# binding.pry
		end

		@cards_held.each do |card|
			if card.value == 'A'
				if sum > 10
					sum += 1
				else
					sum += 11
				end
			end
		
		end

	sum
	end
# def deal_hand
# 	@hand << deal(@hand)
# end

end
