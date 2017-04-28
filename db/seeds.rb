# Faker gem used to create seed data
# Seed Products
# Note: create! instead of create is being used because create!
# will throw an error whe you run seed in the console if an object
# fails validation (E.G. creating a user with the email of another user
# if you are enforcing unique emails)

10.times do
	Product.create(
		name: Faker::Commerce.product_name,
		description: 'This is a description for the product.',
		image_url: Faker::Avatar.image,
		colour: 'red',
		price: '10.99'
	)
end

# Seed Users and Orders
# Admin User: Set a password for this user in the rails console after reseeding
User.create!(email: 'admin@example.com', password: 'password', admin: true)

10.times do
	User.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.free_email(
			"#{Faker::Name.first_name}.random_last_name"
		)
	)
	# Create an order for the last user created
	Order.create!(
		product: Producsts.first,
		user: Users.last,
	)
end
