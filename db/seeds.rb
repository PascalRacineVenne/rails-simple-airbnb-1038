# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleaning DB"
Flat.destroy_all

puts "Creating Flats"

5.times do
  
  flat = Flat.create!(
    name: Faker::TvShows::AquaTeenHungerForce.character,
    address: Faker::Address.full_address,
    description: Faker::TvShows::AquaTeenHungerForce.quote,
    price_per_night: rand(75..150),
    number_of_guests: rand(2..6)
  )

  puts "#{flat.name} was created at id: #{flat.id}"
end

puts "============"
puts "finished"