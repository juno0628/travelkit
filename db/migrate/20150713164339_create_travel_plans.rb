class CreateTravelPlans < ActiveRecord::Migration
  def change
    create_table :travel_plans do |t|
    	t.boolean "is_international", default: false
        t.string "destination_city"
        t.string "destination_country"
        t.string "departure_city"
        t.string "departure_country"
    	t.references "user" 
    	t.datetime "start_date"
    	t.datetime "end_date"
    	t.timestamps
    end
  end
end
