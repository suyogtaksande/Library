# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create(name: "Mark", email: "mark@example.com")
# puts "Created user #{user.name}"
# puts "-----"
# user2 = User.create(name: "Tom", email: "tom@example.com")
# puts "Created user2 #{user2.name}"
# puts "-----"
# library = Library.create(name: "Main Library")
# puts "Created library #{library.name}"
# puts "-----"

# book1 = library.books.create(title: "Book 1", available: false, user: user)
# puts "Created book #{book1.title}"
# puts "-----"
# book2 = library.books.create(title: "Book 2", available: true)
# puts "Created book #{book2.title}"
# puts "-----"
# book3 = library.books.create(title: "Book 3", available: true)
# puts "Created book #{book3.title}"
# puts "-----"

# user1 = User.create(name: 'John')
# puts "User Created #{user1}"
# user2 = User.create(name: 'Jane')
# puts "User Created #{user2}"


# library1 = Library.create(name: 'Library A')
# puts "Library Created #{library1}"
# library2 = Library.create(name: 'Library B')
# puts "Library Created #{library2}"

# library1.books.create!(title: 'Book 1', available: true)
# library1.books.create!(title: 'Book 2', available: false)
# library2.books.create!(title: 'Book 3', available: false)
# puts "Books Created!"


# puts "Seed data created successfully!"

# Create libraries
library1 = Library.create(name: 'Library A')
library2 = Library.create(name: 'Library B')

# Create users
user1 = User.create(name: 'Bruce Wayn')
user2 = User.create(name: 'Tony Stark')

# Create books in library 1
book1 = Book.create(title: 'Book 1', available: true, library: library1)
book2 = Book.create(title: 'Book 2', available: true, library: library1)
book3 = Book.create(title: 'Book 3', available: false, library: library1)

# Create books in library 2
book4 = Book.create(title: 'Book 4', available: true, library: library2)
book5 = Book.create(title: 'Book 5', available: false, library: library2)

# Create book checkouts
BookCheckout.create(user: user1, book: book3)
BookCheckout.create(user: user2, book: book5)

puts "Seed data created successfully!"