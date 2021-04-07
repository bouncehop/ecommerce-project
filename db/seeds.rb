# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Book.delete_all
Category.delete_all

10.times do
  category = Category.create(name: Faker::Book.unique.genre)

  10.times do
    book = category.books.create(
      title: Faker::Book.unique.title,
      author: Faker::Book.author,
      description: Faker::Lorem.paragraph,
      year: Faker::Number.between(from: 1940, to: 2021),
      price: Faker::Number.between(from: 500, to: 1000)
    )
  end
end


puts "Created #{Category.count} categories"
puts "Created #{Book.count} books"