# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create(name: "Homo faber", description: "hi isdhh jhlkf", isbn: 47338335, price: 500.00, published_date: DateTime.new(1997, 11, 4))
books.authors << Author.where(first_name: "Dr.", last_name: "mayur").first_or_create


books = Book.create(name: "Ruby on rails", description: "hi isdhh jhlkf", isbn: 87945612, price: 600.00, published_date: DateTime.new(1957, 12, 1))
books.authors << Author.where(first_name: "Peter", last_name: "Stayur").first_or_create
books.authors << Author.where(first_name: "Stephen", last_name: "king").first_or_create


books = Book.create(name: "the Stands", description: "hi isdhh jhlkf", isbn: 47265433, price: 580.00, published_date: DateTime.new(1968, 5, 7))
books.authors << Author.where(first_name: "David", last_name: "Heinhenson").first_or_create

