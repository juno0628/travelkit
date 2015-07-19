class TravelPlanEntry < ActiveRecord::Base
	belongs_to :travel_plan
	has_one :subcategory
	has_one :category

	 has_attached_file :expense_file, styles: {
    medium: '300x300>',
    thumb: '100x100>'  
  }, :default_url => ""
	# Validate the attached image is image/jpg, image/png, etc
  	validates_attachment_content_type :expense_file, :content_type => /\Aimage\/.*\z/
end


