# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'cleaning database...'
Restaurant.destroy_all
Specialty.destroy_all
SpecialtyRestaurant.destroy_all

categories = ["Accompagnement", "Burger", "Curry", "Dessert", "Fruits de mer", "Friture", "Insectes", "Nouilles", "Oeuf", "Pain", "Pâtes", "Poisson", "Ragoût", "Ravioli", "Riz", "Sandwich", "Snack", "Soupe", "Street food", "Viande", "Volaille"]
timetoeats = ["Petit-déjeuner", "Déjeuner/ Dîner", "Goûter", "Boire"]

ramen = Specialty.create!(name: 'Ramen', description: 'Nouilles sautées', country: 'Japon', category_list: "Nouilles", timetoeat_list: "Déjeuner/ Dîner" )
takoyaki = Specialty.create!(name: 'Takoyaki', description: 'Boulettes de pâtes', country: 'Japon', city: 'Osaka', category_list: "Fruits de mer", timetoeat_list: "Déjeuner/ Dîner")
kobe = Specialty.create!(name: 'Boeuf de Kobe', description: 'Viande de boeuf', country: 'Japon', region: 'Kobe', category_list: "Viande", timetoeat_list: "Goûter")

restaurant1 = Restaurant.create!(name: Faker::Restaurant.name, address: "167 rue paradis, 13006 Marseille", phone_number: Faker::PhoneNumber.phone_number, recommendation: 4, opening_time: '12h00 à 14h00')
restaurant2 = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, recommendation: 4, opening_time: '20h00 à 22h00')
restaurant3 = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, recommendation: 4, opening_time: '12h00 à 23h00')

puts '...finished'
