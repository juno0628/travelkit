class TravelPlanEntry < ActiveRecord::Base
	belongs_to :travel_plan
	has_one :subcategory
end


