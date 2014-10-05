require_relative '../app/models/game.rb'

describe Game do

	let(:game) { Game.new }

	it "should have an AI with a randomly chosen gesture" do
		game.choose_ai_gesture
		expect(game.ai_gesture).to be_a String
	end

	it "should accept a players gesture" do
		game.accept_player_gesture("Rock")
		expect(game.player_gesture).to eq("Rock")
	end

	it "should accept an ai's gesture" do
		game.accept_ai_gesture("Scissors")
		expect(game.ai_gesture).to eq("Scissors")
	end

	it "should receive two gestures and determine a winner" do
		expect(game.determine_winner("Rock", "Scissors")).to be_a String
	end

	it "should return tie when ai chooses Rock and player chooses Rock" do
		expect(game.determine_winner("Rock", "Rock")).to eq "draw"
	end

	it "should return loose when ai chooses Rock and player chooses Scissors" do
		expect(game.determine_winner("Scissors", "Rock")).to eq "loose"
	end
	
end