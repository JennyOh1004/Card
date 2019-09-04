class Card #giving us a location to start putting logic around this playing card
	attr_accessor :rank, :suit #attr_reader + attr_writer
	# attr_reader :rank, :suit #instead of separate method
	# attr_writer :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "#{self.rank} of #{self.suit}"
	end

	def self.random_card
		Card.new(rand(10), :spades)
	end

	# def rank
	# 	@rank #adding a regular method and just called a getter.
	# end

	# def suit
	# 	@suit
	# end

	# def rank=(rank)
	# 	@rank = rank
	# end

	# def suit=(suit)
	# 	@suit = suit
	# end

end

class Deck

	def initialize
		@cards = []
		@cards << Card.new(10, :spades)
		@cards << Card.new(9, :diamonds)
	end

	def shuffle
		@cards.shuffle!
	end

	def output
		@cards.each do |card|
			card.output_card
		end	
	end
end



deck = Deck.new
deck.shuffle
deck.output

# # card = Card.new(10, :spades)
# card = Card.random_card
# # card.rank = 9
# card.output_card
# puts card
# puts card.rank
# puts card.suit