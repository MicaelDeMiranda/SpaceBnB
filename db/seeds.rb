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

user_booker = User.create(email: "booker@spacebnb.com", password: "mdpmdp", first_name: 'Yoda', last_name: 'Booker')
user_booker.photo.attach(io: File.open(Rails.root.to_s + '/app/assets/images/users/yoda.jpg'), filename: "yoda", content_type: "image/jpg")
user_booker.save!

user_owner1 = User.create(email: "owner@spacebnb.com", password: "mdpmdp", first_name: 'Obi Wan', last_name: 'Owner')
user_owner1.photo.attach(io: File.open(Rails.root.to_s + '/app/assets/images/users/obi-wan-kenobi.jpg'), filename: "Obi-wan-kenobi", content_type: "image/jpg")
user_owner1.save!

user_owner2 = User.create(email: "ophelie@spacebnb.com", password: "mdpmdp", first_name: 'Ophélie', last_name: 'Owner')
user_owner2.photo.attach(io: File.open(Rails.root.to_s + '/app/assets/images/users/OphelieWinter.jpg'), filename: "OphelieWinter", content_type: "image/jpg")
user_owner2.save!

planets = [
  { name: 'Arrakis', location: "500 années-lumière", capacity: "5000", price_per_night: 50, user: user_owner1, description: 'Passionné de ralllyes dans le desert et de courses de vers géants ? Arrakis saura combler l’aventurier qui sommeille en vous' },
  { name: 'Cérès', location: "413 millions km", capacity: "10", price_per_night: "300", user: user_owner1, description: 'Revenez rajeuni et détendu de votre sejour sur Ceres, planète réputée pour ses spa alimentés par des geysers et offrant une atmosphère composée de vapeur d’eau et chargée en mineraux hydratés'  },
  { name: "Éris", location: "565 millions km", capacity: "500", price_per_night: "250", user: user_owner1, description:'Planète naine plutoïde, découvrez les mangnifiques paysages d’Eris avec son noyau rocheux; la planète ideale pour les randonneurs les plus expérimentés niveau 5 et niveau 6 Trek' },
  { name: "Hauméa", location: "5,2 milliards km", capacity: "230", price_per_night: "270", user: user_owner1, description:'Incontournable des planètes naines, Haumea vous surpendra par sa forme oblongue et ses 2 satellites visibles à l’oeil nu.
    Loin de la pollution de Paris, vous retrouverez une capacité pulmonaire d’un footballeur grâce à sa croute d’azote, de méthane et de monoxyde de carbone gelée' },
  { name: "Jupiter", location: "778 millions km", capacity: "10 000", price_per_night: "700", user: user_owner1, description:'Chasseurs de tempêtes et intrépides, Jupiter est faite pour vous. Au gré des cyclones, vous pourrez vous envoyez en l’air à la facon des Jupiteriens' },
  { name: "Krypton", location: "27 années-lumière", capacity: "1", price_per_night: "1000000", user: user_owner1, description:'Pour un tête à tête avec Superman, unique habitant de la planète et vivre comme un kryptonien le temps d’un séjour' },
  { name: "Lune", location: "150 millions km", capacity: "2", price_per_night: "1 000 000", user: user_owner2, description:'Pour une lune de miel des plus romantiques au bord d’un cratère, marcher dans les pas de Neil Armstrong ou faire un selfie devant le drapeau américain, les activités sur la Lune ne manquent pas d’intérêt.
    Venez dormir au clair de la lune, montrer votre lune aux terriens ou vivre la pleine lune en live' },
  { name: "Makémaké", location: "7,8 milliards km", capacity: "50", price_per_night: "500", user: user_owner2, description:"Makémaké akha MK2 est la planète idéale pour les sports d'hiver en famille.A seulement à 8 mlilliards de km, vivez un séjour enneigé aux multiples activités" },
  { name: "Mars", location: "227 millions km", capacity: "50 000", price_per_night: "1000", user: user_owner2, description:'Objectif Mars, devenez un martien pour quelques jours et explorer la planète rouge aux multples facettes ' },
  { name: "Mercure", location: "58 millions km", capacity: "56", price_per_night: "650", user: user_owner2, description:'La planète métallique la plus proche du soleil vous attirera pour ses plaines, ses volcans où vous pourrez également observer les bombardements des planètes alentours par des pluies de météorites quotidiennes' },
  { name: "Neptune", location: "4,5 milliards km", capacity: "25", price_per_night: "75", user: user_owner2, description: "Bienvenue sur Neptune où l’hydrogène et l’hélium coule à flot ce qui en fait la planete la plus fun.La planète de tefeurs pour vos soirées et sans embêter les voisins" },
  { name: "Pandora", location: "4,4 années-lumière", capacity: "22 530", price_per_night: "1 000 000", user: user_owner2, description:"Venez vivre aux rythmes des autochtones Na'vi ou vous recueiller auprès de Aywa, embarquez pour Pandora pour un séjour empreint de spiritualité et de sagesse au sein d’une biodiversité unique au monde" },
  { name: "Pluton", location: "5,9 milliards km", capacity: "5", price_per_night: "15 000", user: user_owner2, description:'Planète majeure ou planète naine, venez vérifier par vous même et découvrir les caractéristiques étranges de cette terre faite de roche et de glace' },
  { name: "Saturne", location: "1,5 milliards km", capacity: "100 000", price_per_night: "80 000", user: user_owner2, description:'Saturne est une planète géante aux mysterieux anneaux. A la recherche de sensations fortes venez vous balancer à ses anneaux, les pieds suspendus dans le vide intersideral. Vue époustouflante assurée' },
  { name: "Soleil", location: "0 km", capacity: "100", price_per_night: "60 000", user: user_owner2, description:'Marre de la grisaille de la Terre, le Soleil vous séduira par son climat favorable toute l’année et ses tempétatures douces.
    Pour un bronzage intense sans coup de soleil, venez sejourner sur une terre chaleureuse, lumineuse et accueillante' },
  { name: "Tatooine", location: "108 années-lumière", capacity: "3000", price_per_night: "75 000", user: user_owner2, description:'Avec son Comic Con annuel, festival incontournable du système solaire, Tatooine est la planète idéale pour vivre pleinement le congrès tout en decouvrant sa faune très diversifiée et ses dunes à perte de vue' },
  { name: "Terre", location: "150 millions km", capacity: "100 000", price_per_night: "10", user: user_owner2, description:"Première planète habitée du sytème solaire  , la planète bleue reste l'incontournable à visiter pour ses vestiges les plus réputés et populaires de notre galaxie" },
  { name: "Uranus", location: "2,8 millions km", capacity: "2000", price_per_night: "60 000", user: user_owner2, description:'La géante des glaces séduira tous les fans de grimpette experts ou non. Décrouvrez des paysages à couper le souffle de par sa concentration atmosphérique en amoniac, en poussière et en méthane' },
  { name: "Vénus", location: "108 milliards km", capacity: "6", price_per_night: "90 000", user: user_owner2, description:'Pas comme les rois mages en Galilié, venez vivre sur Uranus l’étoile du berger.
    Cette planète au doux nom de la déesse de l’amour et aux nombreuses activités pour les amoureux offrira à votre couple un séjour inoubliable' },
  { name: "Vulcain", location: "653 années-lumière", capacity: "7000", price_per_night: "150 000", user: user_owner2, description:'Destination prisée des étudiants pour les échanges Erasmus, sur Vulcain vous vivrez en immersion totale auprès des vulcains et apprendrez le klingo, deuxième langue parlée de la planète' }
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
