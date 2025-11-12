require "faker"
puts "Deleting data..."
restaurants = Restaurant.all
restaurants.destroy_all
categories = ["chinese", "italian", "japanese", "french", "belgian"]
puts "Starting seeds"
5.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.city
  restaurant.category = categories.sample
  restaurant.phone_number = Faker::PhoneNumber.phone_number
  restaurant.save
end

puts "done"
