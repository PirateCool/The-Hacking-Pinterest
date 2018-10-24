# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


50.times do |user|
	user = User.create(name: Faker::Name.name)
end

100.times do |pin|
	pin = Pin.create(url: Faker::Internet.url, user_id: rand(1..50))
end

300.times do |comment|
	comment = Comment.create(content: Faker::Lorem.sentence(3, false, 4), user_id: rand(1..50), pin_id: rand(1..100))
end

