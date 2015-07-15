# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# emptying table 

User.destroy_all
Travel_plan_entry.destroy_all
Travel_plan.destroy_all
Category.destroy_all

# user table seed data

user1 = User.create({user_name: "junho", user_email: "junho@gmail.com", f_name: "Junho", l_name: "Rhee", user_profile_image: "http://i.ytimg.com/vi/qIjXYiyx6SY/maxresdefault.jpg", password: "password", password_confirmation: "password"})

user2 = User.create({user_name: "guest", user_email: "guest@example.com", f_name: "guest", l_name: "guest", user_profile_image: "http://i.ytimg.com/vi/qIjXYiyx6SY/maxresdefault.jpg", password: "password", password_confirmation: "password"})

# category table data 

category1 = Category.create({category_name: "transportation"})

category2 = Category.create({category_name: "lodging"})

category3 = Category.create({category_name: "food"})

category4 = Category.create({category_name: "attraction fee"})


# travel_plan table data

plan1 = Travel_plan.create({international?: false, destination_city: "Las Vegas", destination_country: "United States", departure_city: "New York", departure_country: "United States", user_id: user1.id, start_date: 11/20/2015, end_date: 11/26/2015})

plan2 = Travel_plan.create({international?: true, destination_city: "Seoul", destination_country: "South Korea", departure_city: "Newark", departure_country: "United States", user_id: user1.id, start_date: 2/1/2016, end_date: 3/1/2016})





