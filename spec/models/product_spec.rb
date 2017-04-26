require 'rails_helper'


describe Product do
	context 'when product has comments' do

		before do
			@product = Product.create!(name: "The Complete Arc", description: "This product combines all individual offerings into one complete package.", image_url: "https://www.numinix.com/images/complete-package.png", price: 19)
			@user = User.create!(email: "billwagner101@hotmail.com", password: "noah04")
			@product.comments.create!(rating: 1, user: @user, body: "Communcations features broken!")
			@product.comments.create!(rating: 3, user: @user, body: "Please improve bulletin boards.")
			@product.comments.create!(rating: 5, user: @user, body: "Top to bottom loved it all!")

		end
		it "returns the average of all comments" do
			expect(@product.average_rating). to eq 3
		end
		it "is not valid" do
			expect(Product.new(description: "Needs more cowbell")).not_to be_valid
		end


	end
end
