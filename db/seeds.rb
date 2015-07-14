# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create({user_name: "junho", user_email: "junho@gmail.com", f_name: "Junho", l_name: "Rhee", user_profile_image: "http://i.ytimg.com/vi/qIjXYiyx6SY/maxresdefault.jpg", password: "password", password_confirmation: "password"})

user2 = User.create({user_name: "guest", user_email: "guest@example.com", f_name: "guest", l_name: "guest", user_profile_image: "http://i.ytimg.com/vi/qIjXYiyx6SY/maxresdefault.jpg", password: "password", password_confirmation: "password"})
