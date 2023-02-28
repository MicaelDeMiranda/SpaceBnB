# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Planet.destroy_all
User.destroy_all

user = User.create(email: "toto@toto.com", password: "mdpmdp")

planets = [
  { name: 'Arrakis', location: "500 années-lumière", price_per_night: 50, user: user },
  { name: 'Cérès', location: "413 millions km", capacity: "10", price_per_night: "300", user: user },
  { name: "Éris", location: "565 millions km", capacity: "500", price_per_night: "250", user: user },
  { name: "Hauméa", location: "5,2 milliards km", capacity: "230", price_per_night: "270", user: user },
  { name: "Jupiter", location: "778 millions km", capacity: "10000", price_per_night: "700", user: user },
  { name: "Krypton", location: "27 années-lumière", capacity: "1", price_per_night: "1000000", user: user },
  { name: "Lune", location: "150 millions km", capacity: "2", price_per_night: "1000000", user: user },
  { name: "Makémaké", location: "7,8 milliards km", capacity: "50", price_per_night: "500", user: user },
  { name: "Mars", location: "227 millions km", capacity: "50000", price_per_night: "1000", user: user },
  { name: "Mercure", location: "58 millions km", capacity: "56", price_per_night: "650", user: user},
  { name: "Neptune", location: "4,5 milliards km", capacity: "25", price_per_night: "75", user: user },
  { name: "Pandora", location: "4,4 années-lumière", capacity: "22530", price_per_night: "1000000", user: user },
  { name: "Pluton", location: "5,9 milliards km", capacity: "5", price_per_night: "15000", user: user },
  { name: "Saturne", location: "1,5 milliards km", capacity: "100000", price_per_night: "80000", user: user },
  { name: "Soleil", location: "0 km", capacity: "100", price_per_night: "60000", user: user },
  { name: "Tatooine", location: "108 années-lumière", capacity: "3000", price_per_night: "75000", user: user },
  { name: "Terre", location: "150 millions km", capacity: "100000", price_per_night: "10", user: user },
  { name: "Uranus", location: "2,8 millions km", capacity: "2000", price_per_night: "60000", user: user },
  { name: "Vénus", location: "108 milliards km", capacity: "6", price_per_night: "90000", user: user },
  { name: "Vulcain", location: "653 années-lumière", capacity: "7000", price_per_night: "150000", user: user }
]

planets.each do |data|
  planet = Planet.new(data)
  photo = File.open(Rails.root.to_s + '/app/assets/images/planets' + "/#{data[:name]}.jpg")
  planet.photo.attach(io: photo, filename: data[:name])
  planet.save!
  puts "Created #{planet.name}"
end

puts "Finished!"

# arrakis = { name: "Arrakis", location: "500 années-lumière", price_per_night: 50, user: user }
# ceres = { name: "Cérès", location: "413 millions km",  "Cérès.jpeg", capacity: "10", price_per_night: "300" }
# eris = { name: "Éris", location: "565 millions km", planet_photo: "Eris.jpeg", capacity: "500", price_per_night: "250" }
# haumea = { name: "Hauméa", location: "5,2 milliards km", planet_photo: "Hauméa.jpeg", capacity: "230", price_per_night: "270" }
# jupiter = { name: "Jupiter", location: "778 millions km", planet_photo: "Jupiter.jpeg", capacity: "10000", price_per_night: "700" }
# krypton = { name: "Krypton", location: "27 années-lumière", planet_photo: "Krypton.jpeg", capacity: "1", price_per_night: "1000000" }
# lune = { name: "Lune", location: "150 millions km", planet_photo: "Lune.jpeg", capacity: "2", price_per_night: "1000000" }
# makemake = { name: "Makémaké", location: "7,8 milliards km", planet_photo: "Makémaké.jpeg", capacity: "50", price_per_night: "500" }
# mars = { name: "Mars", location: "227 millions km", planet_photo: "Mars.jpeg", capacity: "50000", price_per_night: "1000" }
# mercure = { name: "Mercure", location: "58 millions km", planet_photo: "Mercure.png", capacity: "56", price_per_night: "650"}
# neptune = { name: "Neptune", location: "4,5 milliards km", planet_photo: "Neptune.jpeg", capacity: "25", price_per_night: "75" }
# pandora = { name: "Pandora", location: "4,4 années-lumière", planet_photo: "Pandora.jpeg", capacity: "22530", price_per_night: "1000000" }
# pluton = { name: "Pluton", location: "5,9 milliards km", planet_photo: "Pluton.jpeg", capacity: "5", price_per_night: "15000" }
# saturne = { name: "Saturne", location: "1,5 milliards km", planet_photo: "Saturne.jpeg", capacity: "100000", price_per_night: "80000" }
# soleil = { name: "Soleil", location: "0 km", planet_photo: "Soleil.jpeg", capacity: "100", price_per_night: "60000" }
# tatooine = { name: "Tatooine", location: "108 années-lumière", planet_photo: "Tatooine.webp", capacity: "3000", price_per_night: "75000" }
# terre = { name: "Terre", location: "150 millions km", planet_photo: "Terre.png", capacity: "100000", price_per_night: "10" }
# uranus = { name: "Uranus", location: "2,8 millions km", planet_photo: "Uranus.jpeg", capacity: "2000", price_per_night: "60000" }
# venus = { name: "Vénus", location: "108 milliards km", planet_photo: "Vénus.jpeg", capacity: "6", price_per_night: "90000" }
# vulcain = { name: "Vulcain", location: "653 années-lumière", planet_photo: "Vulcain.webp", capacity: "7000", price_per_night: "150000" }

# [arrakis, ceres, eris, haumea, jupiter, krypton, lune, makemake, mars, mercure, neptune, pandora, pluton, saturne, soleil, tatooine, terre, uranus, venus, vulcain].each do |attributes|
#   planet = Planet.create!(attributes)
#   puts "Created #{planet.name}"
# end
# puts "Finished!"
