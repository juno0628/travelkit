class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer "user_name"
    	t.string "user_email"
    	t.string "f_name"
    	t.string "l_name"
    	t.string "user_profile_image"
    	t.timestamps
    end
  end
end
