# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



sprinkles = IceCreamShop.create!(name: "Sprinkles", open_24_hrs: true, num_employees: 6)
nugs = IceCreamShop.create!(name: "Nugs", open_24_hrs: false, num_employees: 3)

vanilla = sprinkles.flavors.create!(flavor_name: "vanilla", vegan: true, grams_sugar: 50)
snozzberry = sprinkles.flavors.create!(flavor_name: "snozzberry", vegan: false, grams_sugar: 69)
pbs = sprinkles.flavors.create!(flavor_name: "Pizza Bagel Swirl", vegan: false, grams_sugar: 420)
skittlez = sprinkles.flavors.create!(flavor_name: "skittlez", vegan: false, grams_sugar: 100)

snozzberry = nugs.flavors.create!(flavor_name: "snozzberry", vegan: false, grams_sugar: 69)
choco_chonk = nugs.flavors.create!(flavor_name: "choco-chonk", vegan: false, grams_sugar: 81 )
