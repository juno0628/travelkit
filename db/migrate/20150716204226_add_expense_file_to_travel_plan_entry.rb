class AddExpenseFileToTravelPlanEntry < ActiveRecord::Migration
  def self.up
    add_attachment :travel_plan_entries, :expense_file
  end
  def self.down
    remove_attachment :friends, :avatar
  end
end
