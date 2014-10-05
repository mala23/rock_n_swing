require_relative '../app/models/player.rb'

describe Player do

	let(:player) { player = Player.new("Colin") }
	
	it "should have a name" do
		expect(player.name).to eq('Colin')
	end

	it "should be able to choose a gesture" do
		expect(player).to receive(:choose).with(:Rock)
		player.choose(:Rock)
	end

end