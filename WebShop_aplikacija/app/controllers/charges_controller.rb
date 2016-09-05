class ChargesController < ApplicationController
	skip_before_action :verify_authenticity_token
  def new
  end

  def create
  	@amount=0
  	current_user.cart.products.each do |p|
  		@amount=@amount+p.price
  	end
    @amount=@amount*100+3000
  #	charge = Stripe::Charge.create(
   # :amount      => @amount,
    #:description => 'Rails Stripe customer',
    #:source  => params[:stripeToken],
    #:currency    => 'usd'
    #)
  	 current_user.cart.line_items.clear
     redirect_to carts_path

  	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
  end
end
