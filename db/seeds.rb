# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning ingredient seeds"
Ingredient.destroy_all()

puts "Creating 5 ingredient seeds"
Ingredient.create!(name: "lemon", image:"lemon.jpg")
Ingredient.create!(name: "ice", image:"ice.jpg")
Ingredient.create!(name: "mint leaves", image:"mint.jpg")
Ingredient.create!(name: "Orange juice", image:"orange.jpg")
Ingredient.create!(name: "ricard", image:"ricard.jpg")

puts "Finished"
