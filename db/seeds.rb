# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "SETTING UP DEFAULT USER LOGIN"
user = User.create! :name => "First User", :email => "user@example.com", :password => "openup", :password_confirmation => "openup"
puts 'New User Created ' << user.name
user2 = User.create! :name => "Second User", :email => "user2@example.com", :password => "please", :password_confirmation => "please"
puts 'New User Created ' << user2.name