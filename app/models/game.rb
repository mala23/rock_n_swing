class Game

	attr_accessor :player_gesture, :ai_gesture
	attr_reader :win

	def initialize
		player = nil
		@player_gesture = nil
		@ai_gesture = nil
	end

	def accept_player_gesture(gesture)
		@player_gesture = gesture
	end

	def accept_ai_gesture(gesture)
		@ai_gesture = gesture
	end

	def win
		@win = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
	end

	def choose_ai_gesture
		@ai_gesture =  ["rock", "paper", "scissors"].sample
	end

	def determine_winner(player_gesture, ai_gesture)
		if player_gesture.downcase == ai_gesture.downcase
			"draw"
		elsif win[player_gesture.downcase] == ai_gesture.downcase
			"win"
		else
			"loose"
		end
	end

end