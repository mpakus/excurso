# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

srand()

# cleanup cities and create random cities
City.destroy_all
cities = []
50.times.each do
  cities << City.create(name: Faker::Address.city)
end

# cleanup categories and create random categories
Category.destroy_all
categories = []
15.times.each do
  categories << Category.create(name: Faker::Commerce.department(1))
end

# tours
Tour.destroy_all
500.times.each do
  tour_categories = []
  Random.rand(1...5).times { tour_categories << categories.sample }
  Tour.create(
      name:        "Tour to #{Faker::Address.city}, #{Faker::Address.country}",
      description: [0, 1].sample == 1 ? Faker::Lorem.sentence(15, true, 15) : nil,
      city:        cities.sample,
      categories:  tour_categories
  )
end