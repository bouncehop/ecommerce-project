# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Page.delete_all
Book.delete_all
Category.delete_all

scrape = Scraper.new
genres = scrape.genre_list
genres.each do |g|
  category = Category.create(name: g)

  10.times do
    category.books.create(
      title: Faker::Book.unique.title,
      author: Faker::Book.author,
      description: Faker::Lorem.paragraph,
      year: Faker::Number.between(from: 1940, to: 2021),
      price: Faker::Number.between(from: 500, to: 1000)
    )
  end
end

Page.create(title: "About Us", content: "stuff here", permalink: "about_us")

Page.create(title: "Contact Us", content: "contact here", permalink: "contact_us")


puts "Created #{Category.count} categories"
puts "Created #{Book.count} books"
puts "Created #{Page.count} pages"
