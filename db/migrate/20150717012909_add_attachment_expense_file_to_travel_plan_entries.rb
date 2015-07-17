class AddAttachmentExpenseFileToTravelPlanEntries < ActiveRecord::Migration
  def self.up
    change_table :travel_plan_entries do |t|
      t.attachment :expense_file
    end
  end

  def self.down
    remove_attachment :travel_plan_entries, :expense_file
  end
end
