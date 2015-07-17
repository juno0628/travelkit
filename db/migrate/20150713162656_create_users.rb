class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "user_name", null: false 
    	t.string "user_email", null: false
        t.string "password_digest" 
    	t.string "f_name" 
    	t.string "l_name"
    	t.string "user_profile_image", default: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTI6rjxsSvJ5_HeACCreH9oAkLEHumy6124cUM4bY8t4bYUzTACcjUwcrY"
    	t.timestamps
    end
  end
end
