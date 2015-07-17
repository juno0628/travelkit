class TravelPlanEntry < ActiveRecord::Base
	belongs_to :travel_plan
	has_one :subcategory

	 has_attached_file :expense_file, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '500x500>'
  }
	# Validate the attached image is image/jpg, image/png, etc
  	validates_attachment_content_type :expense_file, :content_type => /\Aimage\/.*\Z/
end


