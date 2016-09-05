class Color < ActiveRecord::Base
	has_many :line_items
	has_many :products, through: :product_variants
	has_many :product_variants
end

