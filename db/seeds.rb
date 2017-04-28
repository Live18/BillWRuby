# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Seed User
User.create!(email: 'admin@example.com')
# Seed Products
# Note: :name => is the same as name:
Product.create!(name: 'Product 1', description: 'This is a description for product 1.')

# Do This 10 times!
10.times do
	# Faker data will go here
end