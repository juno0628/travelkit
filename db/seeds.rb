# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# emptying table 

User.destroy_all
TravelPlan.destroy_all
TravelPlanEntry.destroy_all
Category.destroy_all
Subcategory.destroy_all

# user table seed data

user1 = User.create({user_name: "junho", user_email: "junho@gmail.com", f_name: "Junho", l_name: "Rhee", user_profile_image: "http://i.ytimg.com/vi/qIjXYiyx6SY/maxresdefault.jpg", password: "password", password_confirmation: "password"})

user2 = User.create({user_name: "guest", user_email: "guest@example.com", f_name: "guest", l_name: "guest", user_profile_image: "http://i.ytimg.com/vi/qIjXYiyx6SY/maxresdefault.jpg", password: "password", password_confirmation: "password"})

user3 = User.create({user_name: "guest1", user_email: "guest1@example.com", f_name: "guest1", l_name: "guest", user_profile_image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTI6rjxsSvJ5_HeACCreH9oAkLEHumy6124cUM4bY8t4bYUzTACcjUwcrY", password: "guest1", password_confirmation: "guest1"})


# category table data 

category1 = Category.create({category_name: "transportation"})

category2 = Category.create({category_name: "lodging"})

category3 = Category.create({category_name: "food"})

category4 = Category.create({category_name: "attraction"})


# subcategory table data

sub1 = ["flight", "cruise", "car rental", "bus", "train"]


sub1.each do |sub| 
	Subcategory.create({
	category_id: category1.id, subcategory_name: sub 
	})
end

sub2 = ["hotel", "inn", "residence", "airbnb", "condo", "lodge"]

sub2.each do |sub| 
	Subcategory.create({
	category_id: category2.id, subcategory_name: sub
	})
end

sub3 = ["breakfast", "brunch", "lunch", "dinner", "drink", "snackfood"]

sub3.each do |sub|
	Subcategory.create({
	category_id: category3.id, subcategory_name: sub
	})
end

sub4 = ["museum", "amusement park", "zoo", "observation deck"]
sub4.each do |sub|
	Subcategory.create({
	category_id: category4.id, subcategory_name: sub
	})
end


# travel_plan table data
plan1 = TravelPlan.create({is_international: false, destination_city: "Las Vegas", destination_country: "United States", departure_city: "New York", departure_country: "United States", user_id: user1.id, start_date: DateTime.new(2015,11,20), end_date: DateTime.new(2015,11,26)})

plan2 = TravelPlan.create({is_international: true, destination_city: "Seoul", destination_country: "South Korea", departure_city: "Newark", departure_country: "United States", user_id: user1.id, start_date: DateTime.new(2016,2,1), end_date: DateTime.new(2015,3,1)})





