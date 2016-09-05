class ProductVariantsController < ApplicationController

	def sizes
		condition={color: params[:color],product: params[:product]}
		sizes=ProductVariant.where(condition).pluck(:size)
		render json:sizes
	end
end

