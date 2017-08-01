FactoryGirl.define do
	sequence(:id) { |n| "#{n}"}

	factory :product do
		id
		name "Black Mask"
		description "Wear Me"
		price 10
		colour "Black"
		image_url "any image"
	end
end