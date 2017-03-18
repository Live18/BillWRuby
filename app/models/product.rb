class Product < ApplicationRecord
	has_many :orders
end

def self.search(search_term)
	Product.where("name ILIKE ?", "%#{search_term}%")
end

