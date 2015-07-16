class TravelPlan < ActiveRecord::Base
	belongs_to :user
	has_many :travel_plan_entry
	has_many :category
end