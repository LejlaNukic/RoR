class CartsController < ApplicationController

	 def index
     @price=0;
     @cart=current_user.cart
     end

    def next

      @name=session[:info]["name"] if session[:info].present?
      @surname=session[:info]["surname"] if session[:info].present?
      @address=session[:info]["address"] if session[:info].present?
      @city=session[:info]["city"] if session[:info].present?
      @country=session[:info]["country"] if session[:info].present?
      session[:info]=nil
      @cart=current_user.cart
      @price=0
      @cart.line_items.each do |li|
      @price=@price+li.product.price
      end
    end


    def pay
	    error=[]
	    error<<"Niste unijeli ime" if !params[:info][:name].present?
	    error<<"Niste unijeli prezime" if !params[:info][:surname].present?
	    error<<"Niste unijeli adresu" if !params[:info][:address].present?
	    error<<"Niste unijeli grad" if !params[:info][:city].present?
	    error<<"Niste unijeli drzavu" if !params[:info][:country].present?
	    if !error.empty?
	      session[:info]=params[:info]
	      flash[:error]=error
	      redirect_to carts_next_path
	    else
	      @name=params[:info][:name]
	      @surname=params[:info][:surname]
	      @address=params[:info][:address]
	      @city=params[:info][:city]
	      @country=params[:info][:country]

	      
	      @cart=current_user.cart
	      @price=0
	      @cart.line_items.each do |li|
	      @price=@price+li.product.price
	      end
	end
    
end
end

