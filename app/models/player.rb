class Player

	def initialize(name)
		@name = name
	end

	attr_reader :name
	attr_writer :gestures

	def choose(gesture)
		@gesture = gesture
	end

end