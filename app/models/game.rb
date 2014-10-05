class Game

	attr_accessor :defeat, :gestures

	def defeat
		@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
	end

	def gestures
		@gestures = @defeat.keys
	end

end