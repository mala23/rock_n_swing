class Player

	def initialize(name)
		@name = name
		@player_gesture = nil
	end

	attr_reader :name
	attr_writer :gestures

	def player_gesture(gesture = ["rock", "paper", "scissors"])
		@gesture = gesture
	end

end