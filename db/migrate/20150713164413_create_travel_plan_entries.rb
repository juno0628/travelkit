class CreateTravelPlanEntries < ActiveRecord::Migration
  def change
    create_table :travel_plan_entries do |t|
    	t.references "travel_plan"
    	t.references "category"
        t.string "notes"
        t.string "expense_file"
    	t.integer "estimated_amount", default: 0
        t.boolean "expensed?", default: false
    	t.integer "actual_expense", default: 0
    	t.timestamps
    end
  end
end
