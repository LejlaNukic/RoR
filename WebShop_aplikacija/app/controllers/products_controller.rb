class ProductsController < ApplicationController

	def index
		#@products=Product.paginate(:page => params[:page], :per_page => 6)
		filter={}
		filter[:brand]=params[:brand] if params[:brand].present?
		filter[:category]=params[:category] if params[:category].present?
		if params[:price].present?
	      range=params[:price].split('-').map{|d| Integer(d)}
	      filter[:price]=(range[0]..range[1])
	    end
	    product_variant_hash={}
	    product_variant_hash[:size]=params[:size] if params[:size].present?
	    filter[:product_variants]=product_variant_hash if !product_variant_hash.empty?
        
         if !product_variant_hash.empty?
         @productss=Product.joins(:product_variants).where(filter).uniq
         else
		 @productss=Product.where(filter)
		end

		 if @productss.empty?
         flash.now[:empty]="Nažalost, nema proizvoda koji odgovaraju Vašim zahtjevima."
		 end
		@products=@productss.paginate(:page => params[:page], :per_page => 6)
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
    	@list=Product.order("RANDOM()").limit(4)
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
    	params.require(:product).permit(:name,:description,:image_url,:price,:color_id,:brand_id,:category_id)
	end

end
