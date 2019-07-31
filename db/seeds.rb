# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Movie.destroy_all

100.times do
	allocine_rating = rand(0.0..5.0).round(1)
  movie = Movie.create!(name: Faker::Movie.quote, year: Faker::Number.within(range: 1900..2020), genre: ["action", "horreur", "comédie", "drame"].sample(1), synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 30), director: Faker::Book.author, allocine_rating: allocine_rating, my_rating: nil, already_seen: false)
end