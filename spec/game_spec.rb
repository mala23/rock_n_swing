require_relative '../app/models/game.rb'

describe Game do

	let(:game) { Game.new }

	it "should have a list of all winning combinations" do
		expect(game.gestures).to include rock,paper,scissors
	end
	
end