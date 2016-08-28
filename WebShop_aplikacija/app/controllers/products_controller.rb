class ProductsController < ApplicationController

	def index
		@products=Product.paginate(:page => params[:page], :per_page => 6)
		
	end
   
	def create
		@product=Product.new(product_params)
		if @product.save
			redirect_to products_path
		else
			redirect_to new_product_path
		end
	end

    def new
    	@product=Product.new
    end

    def edit
    	@product=Product.find(params[:id])
	end

    def show
    	@product=Product.find(params[:id])
	end

	def update
	end
#destroy ce se mijenjati zbog veza u bazi
	def destroy
		@product=Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

private

    def product_params
    	params.require(:product).permit(:name,:description,:image_url,:price)
	end

end
