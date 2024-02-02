# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
shak_fuyu = {name: "Shak Fuyu", address: "Soho, London, UK", category: "japanese"}
padella = {name: "Padella", address: "Borough Market, London, UK", category: "italian"}
matalan = {name: "Matalan", address: "Dongximen, Beijing, China", category: "chinese"}
le_scargot = {name: "Le Scargot", address: "French Street, Paris, France", category: "french"}
poirot = {name: "Poirot", address: "Chinatown, London, UK", category: "belgian"}

[shak_fuyu, padella, matalan, le_scargot, poirot].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
