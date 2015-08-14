require 'travel_plan'

RSpec.describe TravelPlan do
	describe '#add' do
		it 'total is added by one' do
			expect(TravelPlan.new.add(1,2)).to eq(3)
		end
	end
end

