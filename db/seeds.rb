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
bristol = {name: "Le Bristol", address: "112 Rue du Faubourg Saint-Honoré, 75008 Paris", category: "french"}
opera_mandarin = {name: "Opera Mandarin", address: "23 Bd des Capucines, 75002 Paris", category: "chinese"}
il_cilento = {name: "Il Cilento", address: "34 Av. de Saint-Cloud, 78000 Versailles", category: "italian"}
maison_fuji = {name: "Maison Fuji", address: "79 Rue de la Paroisse, 78000 Versailles", category: "japanese"}
leon = {name: "Leon", address: "131 Bd Saint-Germain, 75006 Paris", category: "belgian"}

[bristol, opera_mandarin, il_cilento, maison_fuji, leon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
