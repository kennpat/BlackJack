# Card class - value & suit 

class Card
	
	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	attr_reader :suit
	attr_reader :value

end
