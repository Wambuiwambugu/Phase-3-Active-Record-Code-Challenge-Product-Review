# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
require 'faker'
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
review1 = Review.create(star_rating: 2,comment: "not very argonomically designed",product_id: product5.id,user_id: user3.id)
review1 = Review.create(star_rating: 3,comment: "nothing to write home about",product_id: product5.id,user_id: user1.id)
review1 = Review.create(star_rating: 1,comment: "does not erase!",product_id: product3.id,user_id: user1.id)
review1 = Review.create(star_rating: 5,comment: "This is the whitest board i have ever seen !",product_id: product2.id,user_id: user2.id)
review1 = Review.create(star_rating: 4,comment: "it does what its supposed to do",product_id: product4.id,user_id: user1.id)
review1 = Review.create(star_rating: 4,comment: "should have more colors",product_id: product3.id,user_id: user2.id)
review1 = Review.create(star_rating: 4,comment: "gooad board",product_id: product2.id,user_id: user3.id)
review1 = Review.create(star_rating: 5,comment: "very durable. i couldnt ask for better",product_id: product1.id,user_id: user3.id)


puts "Seeding done!"