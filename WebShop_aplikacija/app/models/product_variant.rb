class ProductVariant < ActiveRecord::Base
	belongs_to :color
	belongs_to :product
end
