# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Planets.destroy_all

puts "Creating Planets..."
arrakis = { name: "Arrakis", address: "500 années-lumière", planet_photo: "Arrakis.webp" }
ceres = { name: "Cérès", location: "413 millions km", planet_photo: "Cérès.jpeg" }
eris = { name: "Éris", location: "565 millions km", planet_photo: "Eris.jpeg" }
haumea = { name: "Hauméa", location: "5,2 milliards km", planet_photo: "Hauméa.jpeg" }
jupiter = { name: "Jupiter", location: "778 millions km", planet_photo: "Jupiter.jpeg" }
krypton = { name: "Krypton", location: "27 années-lumière", planet_photo: "Krypton.jpeg" }
lune = { name: "Lune", location: "150 millions km", planet_photo: "Lune.jpeg" }
makemake = { name: "Makémaké", location: "7,8 milliards km", planet_photo: "Makémaké.jpeg" }
mars = { name: "Mars", location: "227 millions km", planet_photo: "Mars.jpeg" }
mercure = { name: "Mercure", location: "58 millions km", planet_photo: "Mercure.png"}
neptune = { name: "Neptune", location: "4,5 milliards km", planet_photo: "Neptune.jpeg" }
pandora = { name: "Pandora", location: "4,4 années-lumière", planet_photo: "Pandora.jpeg" }
pluton = { name: "Pluton", location: "5,9 milliards km", planet_photo: "Pluton.jpeg" }
saturne = { name: "Saturne", location: "1,5 milliards km", planet_photo: "Saturne.jpeg" }
soleil = { name: "Soleil", location: "0 km", planet_photo: "Soleil.jpeg" }
tatooine = { name: "Tatooine", location: "108 années-lumière", planet_photo: "Tatooine.webp" }
terre = { name: "Terre", location: "150 millions km", planet_photo: "Terre.png" }
uranus = { name: "Uranus", location: "2,8 millions km", planet_photo: "Uranus.jpeg" }
venus = { name: "Vénus", location: "108 milliards km", planet_photo: "Vénus.jpeg" }
vulcain = { name: "Vulcain", location: "653 années-lumière", planet_photo: "Vulcain.webp" }

[arrakis, ceres, eris, haumea, jupiter, krypton, lune, makemake, mars, mercure, neptune, pandora, pluton, saturne, soleil, tatooine, terre, uranus, venus, vulcain].each do |attributes|
  planet = Planet.create!(attributes)
  puts "Created #{planet.name}"
end
puts "Finished!"
