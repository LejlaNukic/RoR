class LineItemsController < ApplicationController

	def create
        @product=Product.find(params[:product])
        @color=Color.find(params[:color])
        @size=params[:size]
        @lineitem=LineItem.new
        @lineitem.product=@product
        @lineitem.color=@color
        @lineitem.size=@size
        @lineitem.cart=current_user.cart
        if @lineitem.save
            render json: @product
        else
            render json: "Greska!"
        end
    end

  def destroy
    @line_item=LineItem.find(params[:id])
    @line_item.destroy
    redirect_to carts_path  
end

end
