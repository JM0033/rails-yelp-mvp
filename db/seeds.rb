# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


puts "Cleaning restaurant database..."
Restaurant.destroy_all

puts 'Creating 10 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    address: Faker::Address,
    phone_number: Faker::PhoneNumber
  )
  restaurant.save!
end

puts "Cleaning review database..."
Review.destroy_all

# puts 'Creating 10 fake reviews...'
# 10.times do
#   review = Review.new(
#     rating:    Faker::Number.within(range: 0..5),
#     content: Faker::Restaurant.review
#   )
#   review.save!
# end


puts 'Finished!'
