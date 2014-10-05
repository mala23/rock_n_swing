require_relative '../app/models/ai.rb'

describe AI do

	let(:ai) { AI.new("Paper") }

	it "should have chosen a random gesture on initialization" do
		expect(ai.gesture).to eq("Paper")
	end

end