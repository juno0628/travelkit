class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
    	t.references "category"
    	t.string "subcategory_name"
    end
  end
end
