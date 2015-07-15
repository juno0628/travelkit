class Category < ActiveRecord::Base
	has_many :subcategory
end
