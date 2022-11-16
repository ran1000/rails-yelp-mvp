# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning DB of previous records"
# This is an active records method
Restaurant.delete_all

puts "Creating 5 Restaurants"

5.times do
  restaurant = Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  category: %w[chinese italian japanese french belgian][rand(0..4)]
  )
  puts "Created a restaurant with the following attributes"
  puts "Name: #{restaurant.name}"
  puts "Name: #{restaurant.address}"
  puts "Name: #{restaurant.phone_number}"
  puts "Name: #{restaurant.category}"
end

puts "5 new restaurants were added to the db"
