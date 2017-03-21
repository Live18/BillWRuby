class Product < ApplicationRecord
	has_many :orders
end

def self.search(search_term)
	if Rails.env.development?
		Product.where("name LIKE ?", "%#{search_term}%")
	else Rails.env.production?
		Product.where("name ilike ?", "%#{search_term}%")
	end

end

